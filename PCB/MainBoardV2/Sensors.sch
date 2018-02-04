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
Sheet 5 6
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
L LSM9DS1 U6
U 1 1 5A094206
P 3600 2000
F 0 "U6" H 3600 2700 60  0000 C CNN
F 1 "LSM9DS1" H 3600 1300 60  0000 C CNN
F 2 "LSM9DS1:PQFN24P43_350X300X102L35X23N" H 5000 2400 60  0001 C CNN
F 3 "" H 5000 2400 60  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
$Comp
L R R47
U 1 1 5A0946A4
P 1950 1400
F 0 "R47" V 2050 1400 50  0000 C CNN
F 1 "10" V 1950 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1880 1400 50  0001 C CNN
F 3 "" H 1950 1400 50  0000 C CNN
	1    1950 1400
	0    -1   -1   0   
$EndComp
$Comp
L C C18
U 1 1 5A094738
P 2250 1550
F 0 "C18" H 2000 1600 50  0000 L CNN
F 1 "10uF" H 1950 1450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2288 1400 50  0001 C CNN
F 3 "" H 2250 1550 50  0000 C CNN
	1    2250 1550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR74
U 1 1 5A094FD0
P 2250 1700
F 0 "#PWR74" H 2250 1450 50  0001 C CNN
F 1 "GND" H 2250 1550 50  0000 C CNN
F 2 "" H 2250 1700 50  0000 C CNN
F 3 "" H 2250 1700 50  0000 C CNN
	1    2250 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR76
U 1 1 5A09594E
P 2800 2650
F 0 "#PWR76" H 2800 2400 50  0001 C CNN
F 1 "GND" H 2800 2500 50  0000 C CNN
F 2 "" H 2800 2650 50  0000 C CNN
F 3 "" H 2800 2650 50  0000 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
Text GLabel 2900 1800 0    39   Input ~ 0
LSM_CAP
Text GLabel 2900 1900 0    39   Input ~ 0
LSM_C1
Text GLabel 1650 2050 0    39   Input ~ 0
LSM_CAP
$Comp
L C C17
U 1 1 5A095D7B
P 1750 2200
F 0 "C17" H 1775 2300 50  0000 L CNN
F 1 "10000pF" H 1775 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1788 2050 50  0001 C CNN
F 3 "" H 1750 2200 50  0000 C CNN
	1    1750 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR73
U 1 1 5A095DD6
P 1750 2350
F 0 "#PWR73" H 1750 2100 50  0001 C CNN
F 1 "GND" H 1750 2200 50  0000 C CNN
F 2 "" H 1750 2350 50  0000 C CNN
F 3 "" H 1750 2350 50  0000 C CNN
	1    1750 2350
	1    0    0    -1  
$EndComp
Text GLabel 2300 2050 0    39   Input ~ 0
LSM_C1
$Comp
L C C20
U 1 1 5A095E13
P 2400 2200
F 0 "C20" H 2425 2300 50  0000 L CNN
F 1 "100nF" H 2425 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2438 2050 50  0001 C CNN
F 3 "" H 2400 2200 50  0000 C CNN
	1    2400 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR75
U 1 1 5A095E6E
P 2400 2350
F 0 "#PWR75" H 2400 2100 50  0001 C CNN
F 1 "GND" H 2400 2200 50  0000 C CNN
F 2 "" H 2400 2350 50  0000 C CNN
F 3 "" H 2400 2350 50  0000 C CNN
	1    2400 2350
	1    0    0    -1  
$EndComp
Text GLabel 4300 1400 2    39   Input ~ 0
IMU_MOSI
Text GLabel 4300 1800 2    39   Input ~ 0
IMU_MISO
Text GLabel 4300 1500 2    39   Input ~ 0
IMU_SCLK
Text GLabel 4300 1600 2    39   Input ~ 0
IMU_MISO
Text Notes 2800 1200 0    197  ~ 0
IMU
Text Notes 5600 1450 0    197  ~ 0
Temp, Pressure, \nHumidity Msmt
Text GLabel 4300 1700 2    39   Input ~ 0
IMU_CS_AG
Text GLabel 4300 1900 2    39   Input ~ 0
IMU_CS_M
NoConn ~ 4300 2100
NoConn ~ 4300 2200
NoConn ~ 4300 2300
NoConn ~ 4300 2500
NoConn ~ 4300 2600
Text GLabel 1700 1400 0    39   Input ~ 0
+3.3V
$Comp
L BME280 U7
U 1 1 5A76507D
P 6950 2000
F 0 "U7" H 6950 2350 79  0000 C CNN
F 1 "BME280" H 6950 1650 79  0000 C CNN
F 2 "Dans_Parts:BME280" H 6950 2000 79  0001 C CNN
F 3 "" H 6950 2000 79  0001 C CNN
	1    6950 2000
	1    0    0    -1  
$EndComp
Text GLabel 7450 1850 2    39   Input ~ 0
TEENSY_SDA
Text GLabel 7450 1950 2    39   Input ~ 0
TEENSY_SCL
$Comp
L GND #PWR78
U 1 1 5A7655E3
P 7450 2250
F 0 "#PWR78" H 7450 2000 50  0001 C CNN
F 1 "GND" H 7450 2100 50  0000 C CNN
F 2 "" H 7450 2250 50  0000 C CNN
F 3 "" H 7450 2250 50  0000 C CNN
	1    7450 2250
	1    0    0    -1  
$EndComp
$Comp
L R R48
U 1 1 5A7656CF
P 6000 1850
F 0 "R48" V 5900 1850 50  0000 C CNN
F 1 "10" V 6000 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5930 1850 50  0001 C CNN
F 3 "" H 6000 1850 50  0000 C CNN
	1    6000 1850
	0    1    1    0   
$EndComp
Text GLabel 5800 1850 0    39   Input ~ 0
+3.3V
$Comp
L C C22
U 1 1 5A765801
P 6250 2100
F 0 "C22" H 6050 2200 50  0000 L CNN
F 1 "0.1uF" H 6000 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6288 1950 50  0001 C CNN
F 3 "" H 6250 2100 50  0000 C CNN
	1    6250 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR77
U 1 1 5A7659F1
P 6350 2250
F 0 "#PWR77" H 6350 2000 50  0001 C CNN
F 1 "GND" H 6350 2100 50  0000 C CNN
F 2 "" H 6350 2250 50  0000 C CNN
F 3 "" H 6350 2250 50  0000 C CNN
	1    6350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1400 2900 1400
Wire Wire Line
	1700 1400 1800 1400
Wire Notes Line
	5500 2500 5500 900 
Wire Notes Line
	8000 2500 5500 2500
Wire Notes Line
	8000 900  8000 2500
Wire Notes Line
	5500 900  8000 900 
Wire Wire Line
	5800 1850 5850 1850
Connection ~ 6350 2250
Wire Wire Line
	6250 2250 6450 2250
Wire Wire Line
	6450 2250 6450 2150
Connection ~ 6250 1850
Wire Wire Line
	6250 1850 6250 1950
Connection ~ 6350 1850
Wire Wire Line
	6150 1850 6450 1850
Wire Wire Line
	6350 1950 6450 1950
Wire Wire Line
	6350 1750 6350 1950
Wire Wire Line
	6450 1750 6350 1750
Wire Notes Line
	1200 2900 1200 900 
Wire Notes Line
	4800 2900 1200 2900
Wire Notes Line
	4800 900  4800 2900
Wire Notes Line
	1200 900  4800 900 
Wire Wire Line
	2300 2050 2400 2050
Wire Wire Line
	1750 2050 1650 2050
Connection ~ 2800 2600
Wire Wire Line
	2800 2600 2900 2600
Connection ~ 2800 2100
Wire Wire Line
	2900 2100 2800 2100
Connection ~ 2800 2200
Wire Wire Line
	2900 2200 2800 2200
Connection ~ 2800 2300
Wire Wire Line
	2900 2300 2800 2300
Connection ~ 2800 2400
Wire Wire Line
	2900 2400 2800 2400
Connection ~ 2800 2500
Wire Wire Line
	2900 2500 2800 2500
Wire Wire Line
	2800 2000 2800 2650
Wire Wire Line
	2900 2000 2800 2000
Connection ~ 2800 1600
Wire Wire Line
	2800 1700 2900 1700
Connection ~ 2800 1500
Wire Wire Line
	2800 1600 2900 1600
Connection ~ 2800 1400
Wire Wire Line
	2800 1400 2800 1700
Wire Wire Line
	2900 1500 2800 1500
Connection ~ 2250 1400
$EndSCHEMATC
