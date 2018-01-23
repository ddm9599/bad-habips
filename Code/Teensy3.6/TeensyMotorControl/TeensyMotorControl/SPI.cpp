// 
// 
// 

#include "SPI.h"
byte SPI0RxData, SPI0CompleteFlag = 0; //This is all used for SPI0
const int EnableSPI = 0x40000000, IMU_ST_Result = 0x68; //This is the bit that enables the SPI module.  This will enable/disable the run state of the SPI module (SPIx_SR)
const byte IMU_ST_Address = 0xF; //The IMU has a built in register that can be used for ST.  This is the address for it.
int IMU_ST_Data;


void Init_SPI() {//Initiliaze SPI interface
	Init_DAQCS_SPI(); //Set up SPI to act as slave with main MSP430
	Init_IMU_SPI(); //Set up SPI to act as master with IMU
	IMUSelfTest(); //Run SelfTest
}

void Init_DAQCS_SPI() { //Set up SPI to act as slave with main MSP430
	pinMode(31, INPUT);
	PORTB_PCR10 |= 0x200; //Set up Pin 31 as chip select
	pinMode(32, INPUT);
	PORTB_PCR11 |= 0x200; //Set up Pin 32 as CLK
	pinMode(0, OUTPUT);
	PORTB_PCR16 |= 0x200; //Set up Pin 0 as MISO
	pinMode(1, INPUT);
	PORTB_PCR17 |= 0x200; //Set up Pin 1 as MOSI
	SIM_SCGC6 |= 0x2000; //Enable clock to SPI 1
	SPI1_MCR = 0x000; // Disable the Module
	SPI1_CTAR0_SLAVE = 0x3E000000; // Frame size of 8 (writes a 7 to the register), Inactive state of SCK is high, 
								  // Data is changed on leading edge of SCK and captured on trailing edge
	SPI1_SR = 0xDA0A0000; // Clears all the FIFOs and flags
	SPI1_MCR = 0xC00; // Sets up SPI1 as a slave device.  Clears the buffer
	Serial.println("DAQCS SPI Bus Successfully Initialized");
}

void Init_IMU_SPI() { //Set up SPI to act as master with IMU

	//We are using a GPIO as the chip select for the one IMU.  It manually needs to be toggled in order to do the 
	//transaction.  In order to keep the SPI unit happy the CS5 will be set as an output, and it will be set anytime
	//transaction needs to be done.  So CS5 will be set to keep the SPI module happy, but the actual chip select
	//will manually be toggled.


	//Set up all pins
	pinMode(29, OUTPUT); //CS_M on IMU set up as output
	digitalWrite(29, HIGH); //We don't use this so we set this as a high
	pinMode(27, OUTPUT); //CS_M on IMU set up as output
	digitalWrite(27, HIGH); //We don't use this so we set this as a high
	pinMode(11, OUTPUT);
	PORTC_PCR6 &= ~0x700; //Clear Mux bits
	PORTC_PCR6 |= 0x200; //MOSI
	pinMode(12, INPUT);
	PORTC_PCR7 &= ~0x700; //Clear Mux bits
	PORTC_PCR7 |= 0x200; //MISO
	pinMode(9, OUTPUT); //IMU0 CS
	digitalWrite(9, HIGH); // Initialize it as off.
	pinMode(14, OUTPUT);
	PORTD_PCR1 &= ~0x700; //Clear Mux bits
	PORTD_PCR1 |= 0x200; //SCK
	pinMode(26, OUTPUT);
	PORTA_PCR14 &= ~0x700; //Clear Mux bits
	PORTA_PCR14 |= 0x200; //IMU1 CS0

	SIM_SCGC6 |= 0x1000; //Enable the clock
	SPI0_MCR = 0x000; // Disable the Module
	SPI0_SR = 0x00; //Clear the status register
	SPI0_CTAR1 = 0x7F170112;  //Set up Clock dividers, Set frame size as 16 bits, LSB First
	SPI0_RSER |= 0x80000000; //Enables interrupts on completion of transmission
	NVIC_ISER0 |= 0x4000000; //Enables SPI0 Interrupt
	SPI0_SR = 0xDA0A0000; //Clear all flags in the SR
	SPI0_MCR = 0x803F0C00; //Set up SPI0 in Master Mode, Non Continuous Clock
	IMU_ST_Data = IMURead(IMU_ST_Address, 1, 1);

}

void IMUSelfTest() {

	IMU_ST_Data = IMURead(IMU_ST_Address, 1, 0); //Test IMU0

		if (IMU_ST_Data == IMU_ST_Result) {
			Serial.println("IMU 0 Selftest Passed");
		}
		else {
			Serial.println("IMU 0 Selftest Failed");
		}

	IMU_ST_Data = IMURead(IMU_ST_Address, 1, 1); //Test IMU1

	if (IMU_ST_Data == IMU_ST_Result) {
		Serial.println("IMU 1 Selftest Passed");
	}
	else {
		Serial.println("IMU 1 Selftest Failed");
	}
}

int IMURead(byte TxAddress, byte SingleReg, byte IMUNumber) {
	//Some of the data requires data from two registers while some data needs only one register.  The SingleReg input is a binary value saying if a second read is 
	//neccessary.  A 1 in this value means only one read is neccessary.
	byte TxData; //This might need to leave the function and become overarching
	int SPI0Data = 0; //Initialize to 0
	for (byte counter = 1; counter < 3; counter++) { //Need to do two words to read from the IMU.  See IMU Data sheet for detail
		TxData = (TxAddress & 0xF0) >> 4 | (TxAddress & 0x0F) << 4; //This reverses the order of the address
		TxData = (TxData & 0xCC) >> 2 | (TxData & 0x33) << 2; //This reverses the order of the address
		TxData = (TxData & 0xAA) >> 1 | (TxData & 0x55) << 1; //This reverses the order of the address
		TxData = TxData | 0x01; //Set LSB to 1 to signify read

		if (IMUNumber == 0) { //IMU 0
			digitalWrite(9, LOW); // Pull the CS Line.
			SPI0_PUSHR = 0x10000000 | TxData; //CTAR1 is used.
		}
		else { //IMU 1
			SPI0_PUSHR = 0x10010000 | TxData; //CTAR1 is used.  Bit 16 for CS0
		}
		
		TxAddress++;

		while (SPI0CompleteFlag == 0) {
			delay(0);  //Wait until Transaction is complete
		}

		SPI0CompleteFlag = 0; //Clear the flag
		digitalWrite(9, HIGH); // Let go of CS Line.

		if (SingleReg == 1) {
			counter = 3; //exit the loop
			SPI0Data = SPI0RxData;		
		}
		else {
			//Needs to be set up in order to get 2 word data
			SPI0Data = SPI0RxData;
		}
	}//End for loop

	return SPI0Data;
}

void spi0_isr() {
	int TempData;
	SPI0_SR |= 0x80000000; //Clears bit to indicate interrupt
	SPI0CompleteFlag = 1; //Set the interrupt flag
	TempData = SPI0_POPR; //Pop the data from the FIFO
	TempData = ((TempData & 0x00FF) << 8) | ((TempData & 0xFF00) >> 8); //This is a byte swap
	SPI0RxData = TempData; //We only want the least significant byte
	SPI0RxData = (SPI0RxData & 0xF0) >> 4 | (SPI0RxData & 0x0F) << 4; //This reverses the order of the data
	SPI0RxData = (SPI0RxData & 0xCC) >> 2 | (SPI0RxData & 0x33) << 2; //This reverses the order of the data
	SPI0RxData = (SPI0RxData & 0xAA) >> 1 | (SPI0RxData & 0x55) << 1; //This reverses the order of the data
}