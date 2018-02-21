EESchema Schematic File Version 2
LIBS:mainBoardV2-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:msp430fr4994
LIBS:asemb-24mhz-xy-t
LIBS:pct2075d,118
LIBS:ms560702ba03-50
LIBS:lsm9ds1
LIBS:adg704brmz
LIBS:lt3481
LIBS:az2117h
LIBS:lt8609
LIBS:ltc2992
LIBS:TVS_Small
LIBS:tvsSmall
LIBS:mmqa5v6t1g
LIBS:led_x2_3pin
LIBS:bme280
LIBS:aoz8318di
LIBS:switch_dpdt
LIBS:SWITCH_3PDT
LIBS:teensy3_6-OuterHeadersOnly
LIBS:mounting_hole_eighth_inch
LIBS:mainBoardV2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X04 J1
U 1 1 5A01059C
P 7700 4550
F 0 "J1" H 7700 4800 50  0000 C CNN
F 1 "Pi0_1" V 7800 4550 50  0000 C CNN
F 2 "Dans_Parts:4-Pin_Molex_Horizontal" H 7700 4550 50  0001 C CNN
F 3 "" H 7700 4550 50  0000 C CNN
	1    7700 4550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 J2
U 1 1 5A010786
P 8500 4550
F 0 "J2" H 8500 4800 50  0000 C CNN
F 1 "Pi0_2" V 8600 4550 50  0000 C CNN
F 2 "Dans_Parts:4-Pin_Molex_Horizontal" H 8500 4550 50  0001 C CNN
F 3 "" H 8500 4550 50  0000 C CNN
	1    8500 4550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 J3
U 1 1 5A0107C9
P 9300 4550
F 0 "J3" H 9300 4800 50  0000 C CNN
F 1 "Pi0_3" V 9400 4550 50  0000 C CNN
F 2 "Dans_Parts:4-Pin_Molex_Horizontal" H 9300 4550 50  0001 C CNN
F 3 "" H 9300 4550 50  0000 C CNN
	1    9300 4550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 J6
U 1 1 5A01080F
P 10100 4550
F 0 "J6" H 10100 4800 50  0000 C CNN
F 1 "Pi0_4" V 10200 4550 50  0000 C CNN
F 2 "Dans_Parts:4-Pin_Molex_Horizontal" H 10100 4550 50  0001 C CNN
F 3 "" H 10100 4550 50  0000 C CNN
	1    10100 4550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A0109CB
P 7950 4750
F 0 "#PWR01" H 7950 4500 50  0001 C CNN
F 1 "GND" H 7950 4600 50  0000 C CNN
F 2 "" H 7950 4750 50  0000 C CNN
F 3 "" H 7950 4750 50  0000 C CNN
	1    7950 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A010AB2
P 8750 4750
F 0 "#PWR02" H 8750 4500 50  0001 C CNN
F 1 "GND" H 8750 4600 50  0000 C CNN
F 2 "" H 8750 4750 50  0000 C CNN
F 3 "" H 8750 4750 50  0000 C CNN
	1    8750 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A010B41
P 9550 4750
F 0 "#PWR03" H 9550 4500 50  0001 C CNN
F 1 "GND" H 9550 4600 50  0000 C CNN
F 2 "" H 9550 4750 50  0000 C CNN
F 3 "" H 9550 4750 50  0000 C CNN
	1    9550 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A010BBB
P 10350 4750
F 0 "#PWR04" H 10350 4500 50  0001 C CNN
F 1 "GND" H 10350 4600 50  0000 C CNN
F 2 "" H 10350 4750 50  0000 C CNN
F 3 "" H 10350 4750 50  0000 C CNN
	1    10350 4750
	1    0    0    -1  
$EndComp
Text GLabel 7900 4400 2    39   Input ~ 0
UART_1_TX
Text GLabel 7900 4500 2    39   Input ~ 0
UART_1_RX
Text GLabel 7900 4600 2    39   Input ~ 0
RESET_PI_1
Text GLabel 8700 4400 2    39   Input ~ 0
UART_2_TX
Text GLabel 8700 4500 2    39   Input ~ 0
UART_2_RX
Text GLabel 8700 4600 2    39   Input ~ 0
RESET_PI_2
Text GLabel 9500 4400 2    39   Input ~ 0
UART_3_TX
Text GLabel 9500 4500 2    39   Input ~ 0
UART_3_RX
Text GLabel 9500 4600 2    39   Input ~ 0
RESET_PI_3
Text GLabel 10300 4400 2    39   Input ~ 0
UART_4_TX
Text GLabel 10300 4500 2    39   Input ~ 0
UART_4_RX
Text GLabel 10300 4600 2    39   Input ~ 0
RESET_PI_4
Text Notes 7700 4200 0    197  ~ 0
Raspberry Pi Zeros
$Comp
L CONN_01X05 J9
U 1 1 5A011DB4
P 3550 5950
F 0 "J9" H 3550 6250 50  0000 C CNN
F 1 "Comms_SPI" V 3650 5950 50  0000 C CNN
F 2 "Dans_Parts:6-Pin_Molex_Horizontal" H 3550 5950 50  0001 C CNN
F 3 "" H 3550 5950 50  0000 C CNN
	1    3550 5950
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A011EEC
P 3800 6200
F 0 "#PWR05" H 3800 5950 50  0001 C CNN
F 1 "GND" H 3800 6050 50  0000 C CNN
F 2 "" H 3800 6200 50  0000 C CNN
F 3 "" H 3800 6200 50  0000 C CNN
	1    3800 6200
	1    0    0    -1  
$EndComp
Text GLabel 3750 5750 2    39   Input ~ 0
COMMS_CS
Text GLabel 3750 5850 2    39   Input ~ 0
COMMS_SCLK
Text GLabel 3750 5950 2    39   Input ~ 0
COMMS_MISO
Text GLabel 3750 6050 2    39   Input ~ 0
COMMS_MOSI
Text Notes 3300 5500 0    197  ~ 0
Comms Board
$Comp
L GND #PWR06
U 1 1 5A01B32C
P 4900 6150
F 0 "#PWR06" H 4900 5900 50  0001 C CNN
F 1 "GND" H 4900 6000 50  0000 C CNN
F 2 "" H 4900 6150 50  0000 C CNN
F 3 "" H 4900 6150 50  0000 C CNN
	1    4900 6150
	1    0    0    -1  
$EndComp
Text GLabel 4850 5900 2    39   Input ~ 0
HOST_SCL
Text GLabel 4850 6000 2    39   Input ~ 0
HOST_SDA
Text Notes 5050 4250 0    197  ~ 0
Programming
$Comp
L CONN_01X03 J16
U 1 1 5A01C19E
P 5800 4600
F 0 "J16" H 5800 4800 50  0000 C CNN
F 1 "Programming" V 5900 4600 50  0000 C CNN
F 2 "Dans_Parts:4-Pin_Molex_Horizontal" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0000 C CNN
	1    5800 4600
	-1   0    0    -1  
$EndComp
Text GLabel 6000 4500 2    39   Input ~ 0
SBWTCK_HOST
Text GLabel 6000 4600 2    39   Input ~ 0
RST_SBWTDIO_HOST
$Comp
L GND #PWR07
U 1 1 5A01C77E
P 6050 4750
F 0 "#PWR07" H 6050 4500 50  0001 C CNN
F 1 "GND" H 6050 4600 50  0000 C CNN
F 2 "" H 6050 4750 50  0000 C CNN
F 3 "" H 6050 4750 50  0000 C CNN
	1    6050 4750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J12
U 1 1 5A01DD06
P 4650 5950
F 0 "J12" H 4650 6200 50  0000 C CNN
F 1 "Comms_I2C" V 4750 5950 50  0000 C CNN
F 2 "Dans_Parts:4-Pin_Molex_Horizontal" H 4650 5950 50  0001 C CNN
F 3 "" H 4650 5950 50  0000 C CNN
	1    4650 5950
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 J8
U 1 1 5A023228
P 5550 1450
F 0 "J8" H 5550 1600 50  0000 C CNN
F 1 "Main_Battery" V 5650 1450 50  0000 C CNN
F 2 "Dans_Parts:TE-AMP-2PIN-Vertical" H 5550 1450 50  0001 C CNN
F 3 "" H 5550 1450 50  0000 C CNN
	1    5550 1450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A02359D
P 5800 1550
F 0 "#PWR08" H 5800 1300 50  0001 C CNN
F 1 "GND" H 5800 1400 50  0000 C CNN
F 2 "" H 5800 1550 50  0000 C CNN
F 3 "" H 5800 1550 50  0000 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
Text GLabel 5750 1400 2    39   Input ~ 0
MBATT
$Comp
L CONN_01X07 J18
U 1 1 5A023816
P 10050 1400
F 0 "J18" H 10050 1800 50  0000 C CNN
F 1 "Motor_Batt_Monitoring" V 10200 1400 50  0000 C CNN
F 2 "Dans_Parts:JST-XH-7PIN" H 10050 1400 50  0001 C CNN
F 3 "" H 10050 1400 50  0000 C CNN
	1    10050 1400
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A023955
P 10250 1700
F 0 "#PWR09" H 10250 1450 50  0001 C CNN
F 1 "GND" H 10250 1550 50  0000 C CNN
F 2 "" H 10250 1700 50  0000 C CNN
F 3 "" H 10250 1700 50  0000 C CNN
	1    10250 1700
	1    0    0    -1  
$EndComp
Text GLabel 10250 1100 2    39   Input ~ 0
RWBATT_C6
Text GLabel 10250 1200 2    39   Input ~ 0
RWBATT_C5
Text GLabel 10250 1300 2    39   Input ~ 0
RWBATT_C4
Text GLabel 10250 1400 2    39   Input ~ 0
RWBATT_C3
Text GLabel 10250 1500 2    39   Input ~ 0
RWBATT_C2
Text GLabel 10250 1600 2    39   Input ~ 0
RWBATT_C1
Text Notes 3300 1750 0    197  ~ 39
Battery &\nPower\nConnections
Text Notes 3400 4700 0    197  ~ 39
MSP-430 \nInterfaces
$Comp
L Q_NMOS_DGS Q1
U 1 1 5A038706
P 6000 7150
F 0 "Q1" H 6000 7000 50  0000 R CNN
F 1 "NTD20N03L27T4G" H 6850 7300 50  0000 R CNN
F 2 "Dans_Parts:DPAK" H 6200 7250 50  0001 C CNN
F 3 "" H 6000 7150 50  0000 C CNN
	1    6000 7150
	1    0    0    -1  
$EndComp
Text GLabel 5700 7150 0    39   Input ~ 0
CUTDOWN_EN
$Comp
L GND #PWR010
U 1 1 5A0389E1
P 6100 7350
F 0 "#PWR010" H 6100 7100 50  0001 C CNN
F 1 "GND" H 6100 7200 50  0000 C CNN
F 2 "" H 6100 7350 50  0000 C CNN
F 3 "" H 6100 7350 50  0000 C CNN
	1    6100 7350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J17
U 1 1 5A0391D5
P 5250 6800
F 0 "J17" H 5250 6950 50  0000 C CNN
F 1 "To_Balloon" V 5350 6800 50  0000 C CNN
F 2 "Dans_Parts:TE-AMP-2PIN-Vertical" H 5250 6800 50  0001 C CNN
F 3 "" H 5250 6800 50  0000 C CNN
	1    5250 6800
	-1   0    0    -1  
$EndComp
Text Notes 3400 7350 0    197  ~ 39
Cutdown\nMechanism
$Comp
L R R1
U 1 1 5A03B400
P 5750 7400
F 0 "R1" V 5830 7400 50  0000 C CNN
F 1 "10k" V 5750 7400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5680 7400 50  0001 C CNN
F 3 "" H 5750 7400 50  0000 C CNN
	1    5750 7400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5A03B498
P 5750 7550
F 0 "#PWR011" H 5750 7300 50  0001 C CNN
F 1 "GND" H 5750 7400 50  0000 C CNN
F 2 "" H 5750 7550 50  0000 C CNN
F 3 "" H 5750 7550 50  0000 C CNN
	1    5750 7550
	1    0    0    -1  
$EndComp
Text Notes 1100 1450 0    197  ~ 39
Additional\nSchematic \nDrawings
Text Notes 3300 3150 0    197  ~ 39
Teensy 3.6 \nInterfaces
Text Notes 5950 2550 0    197  ~ 0
Motor
$Comp
L CONN_01X05 J4
U 1 1 5A03F01F
P 5550 2850
F 0 "J4" H 5550 3150 50  0000 C CNN
F 1 "To_Motor" V 5650 2850 50  0000 C CNN
F 2 "Dans_Parts:6-Pin_Molex_Horizontal" H 5550 2850 50  0001 C CNN
F 3 "" H 5550 2850 50  0000 C CNN
	1    5550 2850
	-1   0    0    -1  
$EndComp
Text GLabel 5750 2650 2    39   Input ~ 0
PWM_SPEED_CTRL
Text GLabel 5750 2750 2    39   Input ~ 0
PWM_CURRENT_CTRL
Text GLabel 5750 2850 2    39   Input ~ 0
MOTOR_ENABLE_5
Text GLabel 5750 2950 2    39   Input ~ 0
MOTOR_DIRECTION_5
$Comp
L GND #PWR012
U 1 1 5A03F47A
P 5800 3100
F 0 "#PWR012" H 5800 2850 50  0001 C CNN
F 1 "GND" H 5800 2950 50  0000 C CNN
F 2 "" H 5800 3100 50  0000 C CNN
F 3 "" H 5800 3100 50  0000 C CNN
	1    5800 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J7
U 1 1 5A03FA2C
P 6600 2850
F 0 "J7" H 6600 3050 50  0000 C CNN
F 1 "From_Motor" V 6700 2850 50  0000 C CNN
F 2 "Dans_Parts:4-Pin_Molex_Horizontal" H 6600 2850 50  0001 C CNN
F 3 "" H 6600 2850 50  0000 C CNN
	1    6600 2850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A03FB3B
P 6850 3000
F 0 "#PWR013" H 6850 2750 50  0001 C CNN
F 1 "GND" H 6850 2850 50  0000 C CNN
F 2 "" H 6850 3000 50  0000 C CNN
F 3 "" H 6850 3000 50  0000 C CNN
	1    6850 3000
	1    0    0    -1  
$EndComp
Text GLabel 6800 2750 2    39   Input ~ 0
MEAS_CURRENT
Text GLabel 6800 2850 2    39   Input ~ 0
MEAS_SPEED
$Comp
L R R2
U 1 1 5A045A3A
P 5700 6850
F 0 "R2" V 5780 6850 50  0000 C CNN
F 1 "2" V 5700 6850 50  0000 C CNN
F 2 "Dans_Parts:RES-POWER-RIEDON-PF1262" V 5630 6850 50  0001 C CNN
F 3 "" H 5700 6850 50  0000 C CNN
	1    5700 6850
	0    1    1    0   
$EndComp
Text Notes 7750 2500 0    197  ~ 0
Sensors
$Comp
L CONN_01X04 J11
U 1 1 5A064EF6
P 7700 2950
F 0 "J11" H 7700 3200 50  0000 C CNN
F 1 "External_Temp" V 7800 2950 50  0000 C CNN
F 2 "Dans_Parts:4-Pin_Molex_Horizontal" H 7700 2950 50  0001 C CNN
F 3 "" H 7700 2950 50  0000 C CNN
	1    7700 2950
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5A064EFC
P 7950 3150
F 0 "#PWR014" H 7950 2900 50  0001 C CNN
F 1 "GND" H 7950 3000 50  0000 C CNN
F 2 "" H 7950 3150 50  0000 C CNN
F 3 "" H 7950 3150 50  0000 C CNN
	1    7950 3150
	1    0    0    -1  
$EndComp
Text GLabel 7900 2900 2    39   Input ~ 0
TEENSY_SCL
Text GLabel 7900 3000 2    39   Input ~ 0
TEENSY_SDA
Text GLabel 8700 2850 2    39   Input ~ 0
IMU_MOSI
Text GLabel 8700 2950 2    39   Input ~ 0
IMU_MISO
Text GLabel 8700 3050 2    39   Input ~ 0
IMU_SCLK
$Comp
L GND #PWR015
U 1 1 5A064F17
P 8750 3400
F 0 "#PWR015" H 8750 3150 50  0001 C CNN
F 1 "GND" H 8750 3250 50  0000 C CNN
F 2 "" H 8750 3400 50  0000 C CNN
F 3 "" H 8750 3400 50  0000 C CNN
	1    8750 3400
	1    0    0    -1  
$EndComp
Text GLabel 8700 2750 2    39   Input ~ 0
IMU_1_CS_M
Text Notes 9500 2550 0    197  ~ 0
PI 3 RST
$Sheet
S 600  5400 2400 1000
U 5A09BC7A
F0 "Power" 79
F1 "Power.sch" 79
$EndSheet
$Sheet
S 600  2900 2400 1000
U 5A09CA28
F0 "Teensy" 79
F1 "Teensy.sch" 79
$EndSheet
Text GLabel 8700 2650 2    39   Input ~ 0
IMU_1_CS_AG
Text GLabel 10200 3000 2    39   Input ~ 0
RPI3_RST
Text GLabel 5850 1500 2    39   Input ~ 0
GND
Text GLabel 10200 3100 2    39   Input ~ 0
GND
$Comp
L CONN_01X02 J10
U 1 1 5A38640E
P 6200 1450
F 0 "J10" H 6200 1600 50  0000 C CNN
F 1 "Backup_Battery" V 6300 1450 50  0000 C CNN
F 2 "Dans_Parts:TE-AMP-2PIN-Vertical" H 6200 1450 50  0001 C CNN
F 3 "" H 6200 1450 50  0000 C CNN
	1    6200 1450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5A386414
P 6450 1550
F 0 "#PWR016" H 6450 1300 50  0001 C CNN
F 1 "GND" H 6450 1400 50  0000 C CNN
F 2 "" H 6450 1550 50  0000 C CNN
F 3 "" H 6450 1550 50  0000 C CNN
	1    6450 1550
	1    0    0    -1  
$EndComp
Text GLabel 6400 1400 2    39   Input ~ 0
MBATT2
Text GLabel 6500 1500 2    39   Input ~ 0
GND
$Comp
L CONN_01X02 J14
U 1 1 5A36D663
P 7900 1550
F 0 "J14" H 7900 1700 50  0000 C CNN
F 1 "2S_Primary_Batt" V 8000 1550 50  0000 C CNN
F 2 "Dans_Parts:TE-AMP-2PIN-Vertical" H 7900 1550 50  0001 C CNN
F 3 "" H 7900 1550 50  0000 C CNN
	1    7900 1550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5A36D669
P 8150 1650
F 0 "#PWR017" H 8150 1400 50  0001 C CNN
F 1 "GND" H 8150 1500 50  0000 C CNN
F 2 "" H 8150 1650 50  0000 C CNN
F 3 "" H 8150 1650 50  0000 C CNN
	1    8150 1650
	1    0    0    -1  
$EndComp
Text GLabel 8100 1500 2    39   Input ~ 0
2S_Primary
Text GLabel 8200 1600 2    39   Input ~ 0
GND
$Comp
L CONN_01X04 J13
U 1 1 5A37A2CB
P 6950 1450
F 0 "J13" H 6950 1700 50  0000 C CNN
F 1 "Main_Monitoring" V 7050 1450 50  0000 C CNN
F 2 "Dans_Parts:JST-XH-4PIN" H 6950 1450 50  0001 C CNN
F 3 "" H 6950 1450 50  0000 C CNN
	1    6950 1450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5A37CE58
P 7150 1600
F 0 "#PWR018" H 7150 1350 50  0001 C CNN
F 1 "GND" H 7150 1450 50  0000 C CNN
F 2 "" H 7150 1600 50  0000 C CNN
F 3 "" H 7150 1600 50  0000 C CNN
	1    7150 1600
	1    0    0    -1  
$EndComp
Text GLabel 7150 1300 2    39   Input ~ 0
MBATT_C3
Text GLabel 7150 1400 2    39   Input ~ 0
MBATT_C2
Text GLabel 7150 1500 2    39   Input ~ 0
MBATT_C1
Text GLabel 5450 6750 2    39   Input ~ 0
For_Cutdown
Text GLabel 8950 1600 2    39   Input ~ 0
GND
Text GLabel 8850 1500 2    39   Input ~ 0
2S_Backup
$Comp
L GND #PWR019
U 1 1 5A36D67B
P 8900 1650
F 0 "#PWR019" H 8900 1400 50  0001 C CNN
F 1 "GND" H 8900 1500 50  0000 C CNN
F 2 "" H 8900 1650 50  0000 C CNN
F 3 "" H 8900 1650 50  0000 C CNN
	1    8900 1650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J15
U 1 1 5A36D675
P 8650 1550
F 0 "J15" H 8650 1700 50  0000 C CNN
F 1 "2S_Backup_Batt" V 8750 1550 50  0000 C CNN
F 2 "Dans_Parts:TE-AMP-2PIN-Vertical" H 8650 1550 50  0001 C CNN
F 3 "" H 8650 1550 50  0000 C CNN
	1    8650 1550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X08 J5
U 1 1 5A6EFA4A
P 8500 3000
F 0 "J5" H 8500 2550 50  0000 C CNN
F 1 "To_Center_Board" V 8600 3000 50  0000 C CNN
F 2 "Dans_Parts:8-Pin_Molex_Horizontal" H 8500 3000 50  0001 C CNN
F 3 "" H 8500 3000 50  0000 C CNN
	1    8500 3000
	-1   0    0    1   
$EndComp
Text GLabel 7900 2800 2    39   Input ~ 0
+3.3V
Text GLabel 4850 5800 2    39   Input ~ 0
+3.3V
$Sheet
S 600  6650 2400 1000
U 5A09D728
F0 "TVS and TP" 79
F1 "TVS and TP.sch" 79
$EndSheet
$Sheet
S 600  4150 2400 1000
U 5A063FC6
F0 "Sensors" 79
F1 "Sensors.sch" 79
$EndSheet
$Sheet
S 613  1637 2387 1013
U 5A00D3E5
F0 "MSP430" 79
F1 "MSP430.sch" 79
$EndSheet
Wire Wire Line
	8750 3350 8700 3350
Wire Wire Line
	8750 3400 8750 3350
Connection ~ 8900 1600
Wire Wire Line
	8900 1650 8900 1600
Wire Wire Line
	8850 1600 8950 1600
Wire Wire Line
	8100 1600 8200 1600
Wire Wire Line
	8150 1650 8150 1600
Connection ~ 8150 1600
Wire Wire Line
	6400 1500 6500 1500
Wire Wire Line
	6450 1550 6450 1500
Connection ~ 6450 1500
Wire Notes Line
	9350 3600 9350 2250
Wire Notes Line
	10950 3600 9350 3600
Wire Notes Line
	10950 2250 10950 3600
Wire Notes Line
	9350 2250 10950 2250
Wire Notes Line
	7500 3600 7500 2250
Wire Notes Line
	9200 3600 7500 3600
Wire Notes Line
	9200 2250 9200 3600
Wire Notes Line
	7500 2250 9200 2250
Wire Wire Line
	7950 3100 7900 3100
Wire Wire Line
	7950 3150 7950 3100
Wire Wire Line
	5850 6850 6100 6850
Wire Wire Line
	5450 6850 5550 6850
Wire Notes Line
	5350 3350 5350 2250
Wire Notes Line
	7350 3350 5350 3350
Wire Notes Line
	7350 2250 7350 3350
Wire Notes Line
	5350 2250 7350 2250
Wire Wire Line
	6850 2950 6800 2950
Wire Wire Line
	6850 3000 6850 2950
Wire Wire Line
	5800 3050 5750 3050
Wire Wire Line
	5800 3100 5800 3050
Wire Notes Line
	3150 2100 11200 2100
Wire Notes Line
	3150 3750 11250 3750
Connection ~ 5750 7150
Wire Wire Line
	5750 7250 5750 7150
Wire Wire Line
	5700 7150 5800 7150
Wire Wire Line
	5750 1500 5850 1500
Wire Wire Line
	5800 1550 5800 1500
Wire Wire Line
	6050 4700 6000 4700
Wire Wire Line
	6050 4750 6050 4700
Wire Notes Line
	5000 5000 5000 3950
Wire Notes Line
	7050 5000 5000 5000
Wire Notes Line
	7050 3950 7050 5000
Wire Notes Line
	5000 3950 7050 3950
Wire Notes Line
	3250 6450 3250 5200
Wire Notes Line
	5400 6450 3250 6450
Wire Notes Line
	5400 5200 5400 6450
Wire Notes Line
	3250 5200 5400 5200
Wire Wire Line
	4900 6100 4850 6100
Wire Wire Line
	4900 6150 4900 6100
Wire Wire Line
	3800 6150 3750 6150
Wire Wire Line
	3800 6200 3800 6150
Wire Notes Line
	7500 5000 7500 3900
Wire Notes Line
	10750 5000 7500 5000
Wire Notes Line
	10750 3900 10750 5000
Wire Notes Line
	7500 3900 10750 3900
Wire Wire Line
	10350 4700 10300 4700
Wire Wire Line
	10350 4750 10350 4700
Wire Wire Line
	9550 4700 9500 4700
Wire Wire Line
	9550 4750 9550 4700
Wire Wire Line
	8750 4700 8700 4700
Wire Wire Line
	8750 4750 8750 4700
Wire Wire Line
	7950 4700 7900 4700
Wire Wire Line
	7950 4750 7950 4700
Connection ~ 5800 1500
Wire Notes Line
	3150 500  3150 7800
Text Notes 5450 1050 0    197  ~ 0
3-Cell Batts
Text Notes 7850 1250 0    197  ~ 0
2-Cell\nBatteries
Wire Notes Line
	5350 800  7550 800 
Wire Notes Line
	7550 800  7550 1800
Wire Notes Line
	7550 1800 5350 1800
Wire Notes Line
	5350 1800 5350 800 
Wire Notes Line
	7700 650  9250 650 
Wire Notes Line
	9250 650  9250 1900
Wire Notes Line
	9250 1900 7700 1900
Wire Notes Line
	7700 1900 7700 650 
Text Notes 9450 900  0    197  ~ 0
RW Battery\n
Wire Notes Line
	9400 650  11100 650 
Wire Notes Line
	11100 650  11100 1900
Wire Notes Line
	11100 1900 9400 1900
Wire Notes Line
	9400 1900 9400 650 
Wire Wire Line
	6100 6850 6100 6950
Wire Notes Line
	6950 6550 3150 6550
$Comp
L Mounting_Hole_Eighth_Inch MH1
U 1 1 5A777134
P 7400 5500
F 0 "MH1" H 7406 5649 39  0000 C CNN
F 1 "GND" H 7500 5400 39  0000 C CNN
F 2 "Dans_Parts:Mounting_Hole_Eighth_Inch" H 7400 5500 39  0001 C CNN
F 3 "" H 7400 5500 39  0001 C CNN
	1    7400 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5A777D3D
P 7400 5650
F 0 "#PWR020" H 7400 5400 50  0001 C CNN
F 1 "GND" H 7400 5500 50  0000 C CNN
F 2 "" H 7400 5650 50  0000 C CNN
F 3 "" H 7400 5650 50  0000 C CNN
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_Eighth_Inch MH3
U 1 1 5A777F0E
P 7850 5500
F 0 "MH3" H 7856 5649 39  0000 C CNN
F 1 "GND" H 7950 5400 39  0000 C CNN
F 2 "Dans_Parts:Mounting_Hole_Eighth_Inch" H 7850 5500 39  0001 C CNN
F 3 "" H 7850 5500 39  0001 C CNN
	1    7850 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5A777F14
P 7850 5650
F 0 "#PWR021" H 7850 5400 50  0001 C CNN
F 1 "GND" H 7850 5500 50  0000 C CNN
F 2 "" H 7850 5650 50  0000 C CNN
F 3 "" H 7850 5650 50  0000 C CNN
	1    7850 5650
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_Eighth_Inch MH2
U 1 1 5A77802D
P 7400 6050
F 0 "MH2" H 7406 6199 39  0000 C CNN
F 1 "GND" H 7500 5950 39  0000 C CNN
F 2 "Dans_Parts:Mounting_Hole_Eighth_Inch" H 7400 6050 39  0001 C CNN
F 3 "" H 7400 6050 39  0001 C CNN
	1    7400 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5A778033
P 7400 6200
F 0 "#PWR022" H 7400 5950 50  0001 C CNN
F 1 "GND" H 7400 6050 50  0000 C CNN
F 2 "" H 7400 6200 50  0000 C CNN
F 3 "" H 7400 6200 50  0000 C CNN
	1    7400 6200
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_Eighth_Inch MH4
U 1 1 5A778039
P 7850 6050
F 0 "MH4" H 7856 6199 39  0000 C CNN
F 1 "GND" H 7950 5950 39  0000 C CNN
F 2 "Dans_Parts:Mounting_Hole_Eighth_Inch" H 7850 6050 39  0001 C CNN
F 3 "" H 7850 6050 39  0001 C CNN
	1    7850 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5A77803F
P 7850 6200
F 0 "#PWR023" H 7850 5950 50  0001 C CNN
F 1 "GND" H 7850 6050 50  0000 C CNN
F 2 "" H 7850 6200 50  0000 C CNN
F 3 "" H 7850 6200 50  0000 C CNN
	1    7850 6200
	1    0    0    -1  
$EndComp
Text Notes 5800 6250 0    197  ~ 39
Mounting\nHoles
Wire Notes Line
	5600 6550 5600 5200
Wire Notes Line
	5600 5200 11200 5200
$Comp
L CONN_01X02 J19
U 1 1 5A77CE20
P 10000 3050
F 0 "J19" H 10000 3200 50  0000 C CNN
F 1 "PI 3 RESET" V 10100 3050 50  0000 C CNN
F 2 "Dans_Parts:HEADER_1x2_BB" H 10000 3050 50  0001 C CNN
F 3 "" H 10000 3050 50  0000 C CNN
	1    10000 3050
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 J21
U 1 1 5A7B9761
P 10500 5850
F 0 "J21" H 10500 5700 50  0000 C CNN
F 1 "Ethernet_Switch_PWR" V 10600 5850 50  0000 C CNN
F 2 "Dans_Parts:2-Pin_Molex_Horizontal" H 10500 5850 50  0001 C CNN
F 3 "" H 10500 5850 50  0000 C CNN
	1    10500 5850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR024
U 1 1 5A7B9767
P 10750 5950
F 0 "#PWR024" H 10750 5700 50  0001 C CNN
F 1 "GND" H 10750 5800 50  0000 C CNN
F 2 "" H 10750 5950 50  0000 C CNN
F 3 "" H 10750 5950 50  0000 C CNN
	1    10750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 5900 10700 5900
Wire Wire Line
	10750 5950 10750 5900
Text GLabel 10700 5800 2    39   Input ~ 0
+5V
Text Notes 8400 6150 0    197  ~ 39
Network\nSwitch PWR
Wire Notes Line
	8200 5200 8200 6550
Text GLabel 8700 3150 2    39   Input ~ 0
+3.3V
Text GLabel 8700 3250 2    39   Input ~ 0
MSP_GPIO_CB
$EndSCHEMATC
