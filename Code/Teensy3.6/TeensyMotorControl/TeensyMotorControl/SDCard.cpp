// 
// 
// 

#include "SDCard.h"
#include <SD.h>
#include "Clocks.h"
#include <string>

const int chipSelect = BUILTIN_SDCARD;
File SDFile;
int SDCardPresent; //Is the SD Card Present?
const char* SDFileName = "HAPIB.csv";
bool MotorOn = 0;

void SDCard_Setup() { //Initiliaze SD Card
	if (!SD.begin(chipSelect)) { //Check if SD Card Is present
		Serial.println("SD Card failed, or Not Present"); //It is not
		SDCardPresent = 0; //SD Card Failed
	}
	else {
		//Set up New File
		if (SD.exists(SDFileName)) {
			//DEBUG MAKE SURE TO REMOVE FOR FINAL VERSION
			SD.remove(SDFileName); //This deletes what is currently on the card
			//DEBUG MAKE SURE TO REMOVE FOR FINAL VERSION
		}
		NewSDFile();
	}
}

void SDCard_Write(int SDCardData, byte Timestamp) {
	SDFile = SD.open(SDFileName, FILE_WRITE); //Open the file to write
	if (Timestamp == 1) {
		GetClock(); //Get Current RTC
		SDFile.print(RTCCurrentData[2]); //Hours
		SDFile.print(':');
		SDFile.print(RTCCurrentData[1]); //Minutes
		SDFile.print(":");
		SDFile.print(RTCCurrentData[0]); //Seconds
		SDFile.print(",");
	}
	SDFile.print(SDCardData); //Record the data
	SDFile.print(","); //Add a comma
	SDFile.close(); //Close SD File
}

void SDCard_NewLine() { //Add a new line to the SD Card
	SDFile = SD.open(SDFileName, FILE_WRITE); //Open the file to write
	SDFile.println();
	SDFile.close(); //Close SD File
}

void SDCard_SensorFailure(byte ErrorCode) {
	SDFile = SD.open(SDFileName, FILE_WRITE); //Open the file to write
	switch (ErrorCode)
		case 0: Serial.println("SPI0 Timeout. Last Line of Data is not Valid");
	SDFile.close();
}

void NewSDFile() {
	SDFile = SD.open(SDFileName, FILE_WRITE); //Creates a new file
	if (SDFile) {//Check to see if file is successfully opened
		SDFile.print("HAPIB Flight "); //Put Header on SD Card File
		GetClock();
		SDFile.print(RTCCurrentData[4]); //Add month
		SDFile.print("/");
		SDFile.print(RTCCurrentData[3]); //Add day
		SDFile.print("/");
		SDFile.println(RTCCurrentData[5]); //Add year
		Serial.println("SD Card initialized, HAPIB.txt created"); //Success
		SDCardPresent = 1; //SD Card Passed
		SDFile.println("Time,XAccel,YAccel,ZAccel,XGyro,YGyro,ZGyro,Temperature,Pressure,S1,S2,S3,S4,S5,S5,M1,M2,M3");
	}
	else {
		Serial.println("SD Card initialized, HAPIB.txt failed to open"); //Failed
		SDCardPresent = 0; //SD Card Failed
	}

SDFile.close(); //Close SD File
}

/*
In order to make the motor controller algorithim run as efficiently as possible, the manner in which SD card writes is done is going to be chagned (only for while
the motor is on).  The opening and closing of the file structure is what takes the longest amount of time, and therefor this will only be done when neccessary.  The
reason that closing it takes a while is because it clears the buffer on a close.  The buffer is 512 characters long and so it is not neccessary to do this every time.
As a result the file will be opened once upon entering the loop, closed once upon leaving the loop, and the buffer will be cleared after all six of the IMU writes,
instead of after every individual write.  This should make each write take about 200us instead of about 3ms.
All of the following functions are used for that purpose:
*/

void SDCardOpenFile() {
	SDFile = SD.open(SDFileName, FILE_WRITE); //Open the file to write
	if (digitalRead(PIN_A6)) {
		SDFile.println("Motor Turned On");
		MotorOn = 1;
	}
}

void SDCardCloseFile() {
	if (MotorOn == 1) {
		SDFile.println("Motor Turned Off");
		MotorOn = 0;
	}
	SDFile.close(); //Close SD File
}


void SDCard_WriteMotorOn(int SDCardData, byte Timestamp) {
	if (Timestamp == 1) {
		GetClock(); //Get Current RTC
		SDFile.print(RTCCurrentData[2]); //Hours
		SDFile.print(':');
		SDFile.print(RTCCurrentData[1]); //Minutes
		SDFile.print(":");
		SDFile.print(RTCCurrentData[0]); //Seconds
		SDFile.print(",");
	}
	SDFile.print(SDCardData); //Record the data
	SDFile.print(","); //Add a comma
}

void SDCard_NewLineMotorOn() {
	SDFile.println();
}

void SDCard_FlushBuffer(){
	SDFile.flush();
}

void SDCard_CalibrationDataWrite(unsigned short Cal1, signed short Cal2, signed short Cal3, signed short Cal4, signed short Cal5, signed short Cal6, signed short Cal7, signed short Cal8, signed short Cal9, bool Temp) {
	// If the calibration data being written is temperature, the "Temp" bit shall be set to 1, and only the first 3 Cal Data will be 
	// used.  If the Temp bit is not set, all 9 will be used.

	SDFile = SD.open(SDFileName, FILE_WRITE); //Creates a new file

	if (Temp) { //Temperature Data
		SDFile.print(",");
		SDFile.print("T1 = ,");
		SDFile.print(Cal1); 
		SDFile.print(",");
		SDFile.print("T2 = ,");
		SDFile.print(Cal2);
		SDFile.print(",");
		SDFile.print("T3 = ,");
		SDFile.print(Cal3);
		SDFile.print(",");
	}
	else { //Pressure Data
		SDFile.print(",");
		SDFile.print("P1 = ,");
		SDFile.print(Cal1);
		SDFile.print(",");
		SDFile.print("P2 = ,");
		SDFile.print(Cal2);
		SDFile.print(",");
		SDFile.print("P3 = ,");
		SDFile.print(Cal3);
		SDFile.print(",");
		SDFile.print("P4 = ,");
		SDFile.print(Cal4);
		SDFile.print(",");
		SDFile.print("P5 = ,");
		SDFile.print(Cal5);
		SDFile.print(",");
		SDFile.print("P6 = ,");
		SDFile.print(Cal6);
		SDFile.print(",");
		SDFile.print("P7 = ,");
		SDFile.print(Cal7);
		SDFile.print(",");
		SDFile.print("P8 = ,");
		SDFile.print(Cal8);
		SDFile.print(",");
		SDFile.print("P9 = ,");
		SDFile.print(Cal9);
		SDFile.print(",");
	}
	SDFile.println();
	SDFile.close(); //Close SD File
}