EESchema Schematic File Version 2
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
LIBS:lsm9ds1
LIBS:mounting_hole_eighth_inch
LIBS:CenterBoard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L LSM9DS1 U1
U 1 1 5AB03A67
P 5250 3250
F 0 "U1" H 5250 3950 60  0000 C CNN
F 1 "LSM9DS1" H 5250 2550 60  0000 C CNN
F 2 "LSM9DS1:PQFN24P43_350X300X102L35X23N" H 6650 3650 60  0001 C CNN
F 3 "" H 6650 3650 60  0001 C CNN
	1    5250 3250
	1    0    0    -1  
$EndComp
Text GLabel 3500 2650 0    39   Input ~ 0
+3.3V
$Comp
L R R1
U 1 1 5AB03ACC
P 3750 2650
F 0 "R1" V 3830 2650 50  0000 C CNN
F 1 "10" V 3750 2650 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" V 3680 2650 50  0001 C CNN
F 3 "" H 3750 2650 50  0000 C CNN
	1    3750 2650
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5AB03AEF
P 4000 2800
F 0 "C2" H 4025 2900 50  0000 L CNN
F 1 "0.1uF" H 4025 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4038 2650 50  0001 C CNN
F 3 "" H 4000 2800 50  0000 C CNN
	1    4000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2650 3600 2650
Wire Wire Line
	3900 2650 4550 2650
$Comp
L GND #PWR01
U 1 1 5AB03B38
P 4000 2950
F 0 "#PWR01" H 4000 2700 50  0001 C CNN
F 1 "GND" H 4000 2800 50  0000 C CNN
F 2 "" H 4000 2950 50  0000 C CNN
F 3 "" H 4000 2950 50  0000 C CNN
	1    4000 2950
	1    0    0    -1  
$EndComp
Connection ~ 4000 2650
Wire Wire Line
	4400 2950 4550 2950
Wire Wire Line
	4400 2650 4400 2950
Connection ~ 4400 2650
Wire Wire Line
	4550 2750 4400 2750
Connection ~ 4400 2750
Wire Wire Line
	4550 2850 4400 2850
Connection ~ 4400 2850
Wire Wire Line
	4550 3250 4450 3250
Wire Wire Line
	4450 3250 4450 3850
Wire Wire Line
	4450 3850 4550 3850
Wire Wire Line
	4550 3750 4450 3750
Connection ~ 4450 3750
Wire Wire Line
	4550 3650 4450 3650
Connection ~ 4450 3650
Wire Wire Line
	4550 3550 4450 3550
Connection ~ 4450 3550
Wire Wire Line
	4550 3450 4450 3450
Connection ~ 4450 3450
Wire Wire Line
	4550 3350 4450 3350
Connection ~ 4450 3350
Text GLabel 4550 3050 0    39   Input ~ 0
LSM_CAP
Text GLabel 4550 3150 0    39   Input ~ 0
LSM_C1
$Comp
L C C1
U 1 1 5AB03C98
P 3650 3550
F 0 "C1" H 3675 3650 50  0000 L CNN
F 1 "10000pF" H 3675 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3688 3400 50  0001 C CNN
F 3 "" H 3650 3550 50  0000 C CNN
	1    3650 3550
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5AB03CC3
P 4150 3550
F 0 "C3" H 4175 3650 50  0000 L CNN
F 1 "0.1uF" H 4175 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4188 3400 50  0001 C CNN
F 3 "" H 4150 3550 50  0000 C CNN
	1    4150 3550
	1    0    0    -1  
$EndComp
Text GLabel 3600 3400 0    39   Input ~ 0
LSM_CAP
Wire Wire Line
	3650 3400 3600 3400
$Comp
L GND #PWR02
U 1 1 5AB03D7E
P 3650 3700
F 0 "#PWR02" H 3650 3450 50  0001 C CNN
F 1 "GND" H 3650 3550 50  0000 C CNN
F 2 "" H 3650 3700 50  0000 C CNN
F 3 "" H 3650 3700 50  0000 C CNN
	1    3650 3700
	1    0    0    -1  
$EndComp
Text GLabel 4100 3400 0    39   Input ~ 0
LSM_C1
Wire Wire Line
	4100 3400 4150 3400
$Comp
L GND #PWR03
U 1 1 5AB03DCB
P 4150 3700
F 0 "#PWR03" H 4150 3450 50  0001 C CNN
F 1 "GND" H 4150 3550 50  0000 C CNN
F 2 "" H 4150 3700 50  0000 C CNN
F 3 "" H 4150 3700 50  0000 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5AB03DF4
P 4450 3850
F 0 "#PWR04" H 4450 3600 50  0001 C CNN
F 1 "GND" H 4450 3700 50  0000 C CNN
F 2 "" H 4450 3850 50  0000 C CNN
F 3 "" H 4450 3850 50  0000 C CNN
	1    4450 3850
	1    0    0    -1  
$EndComp
NoConn ~ 5950 3850
NoConn ~ 5950 3750
NoConn ~ 5950 3550
NoConn ~ 5950 3450
NoConn ~ 5950 3350
$Comp
L CONN_02X04 J1
U 1 1 5AB040AD
P 2600 2100
F 0 "J1" H 2600 2350 50  0000 C CNN
F 1 "Input" H 2600 1850 50  0000 C CNN
F 2 "Dans_Parts:CONN_8Pin_Molex_Horizontal_SMT" H 2600 900 50  0001 C CNN
F 3 "" H 2600 900 50  0000 C CNN
	1    2600 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5AB0436C
P 1850 2150
F 0 "#PWR05" H 1850 1900 50  0001 C CNN
F 1 "GND" H 1850 2000 50  0000 C CNN
F 2 "" H 1850 2150 50  0000 C CNN
F 3 "" H 1850 2150 50  0000 C CNN
	1    1850 2150
	1    0    0    -1  
$EndComp
Text GLabel 2350 1950 0    39   Input ~ 0
+3.3V
Text GLabel 2850 2050 2    39   Input ~ 0
IMU_MOSI
Text GLabel 2850 2250 2    39   Input ~ 0
IMU_MISO
Text GLabel 2350 2050 0    39   Input ~ 0
IMU_SCLK
Text GLabel 2350 2250 0    39   Input ~ 0
IMU_CS_AG
Text GLabel 2850 2150 2    39   Input ~ 0
IMU_CS_M
Text GLabel 5950 2650 2    39   Input ~ 0
IMU_MOSI
Text GLabel 5950 2750 2    39   Input ~ 0
IMU_SCLK
Text GLabel 5950 2850 2    39   Input ~ 0
IMU_MISO
Text GLabel 5950 2950 2    39   Input ~ 0
IMU_CS_AG
Text GLabel 5950 3150 2    39   Input ~ 0
IMU_CS_M
Text GLabel 5950 3050 2    39   Input ~ 0
IMU_MISO
Wire Wire Line
	1850 2150 2350 2150
NoConn ~ 2850 1950
$Comp
L Mounting_Hole_Eighth_Inch MH1
U 1 1 5AB063E7
P 7650 2700
F 0 "MH1" H 7656 2849 39  0000 C CNN
F 1 "Mounting_Hole_Eighth_Inch" H 8150 2600 39  0000 C CNN
F 2 "Dans_Parts:Mounting_Hole_Eighth_Inch" H 7650 2700 39  0001 C CNN
F 3 "" H 7650 2700 39  0001 C CNN
	1    7650 2700
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_Eighth_Inch MH2
U 1 1 5AB06445
P 7650 3300
F 0 "MH2" H 7656 3449 39  0000 C CNN
F 1 "Mounting_Hole_Eighth_Inch" H 8150 3150 39  0000 C CNN
F 2 "Dans_Parts:Mounting_Hole_Eighth_Inch" H 7650 3300 39  0001 C CNN
F 3 "" H 7650 3300 39  0001 C CNN
	1    7650 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AB07A41
P 7650 2850
F 0 "#PWR06" H 7650 2600 50  0001 C CNN
F 1 "GND" H 7650 2700 50  0000 C CNN
F 2 "" H 7650 2850 50  0000 C CNN
F 3 "" H 7650 2850 50  0000 C CNN
	1    7650 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5AB07A65
P 7650 3450
F 0 "#PWR07" H 7650 3200 50  0001 C CNN
F 1 "GND" H 7650 3300 50  0000 C CNN
F 2 "" H 7650 3450 50  0000 C CNN
F 3 "" H 7650 3450 50  0000 C CNN
	1    7650 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
