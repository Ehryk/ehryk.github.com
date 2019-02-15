EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:ehryk
LIBS:w_connectors
LIBS:w_relay
LIBS:AC Logic Board-cache
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
Text GLabel 2900 3100 2    47   Input ~ 0
A
Text GLabel 2900 3200 2    47   Input ~ 0
B
Text GLabel 2900 3300 2    47   Input ~ 0
COMMON
Text GLabel 8550 3400 0    47   Output ~ 0
COMMON
Text GLabel 8550 3300 0    47   Output ~ 0
OR
Text GLabel 8550 3200 0    47   Output ~ 0
AND
Text GLabel 8550 3100 0    47   Output ~ 0
B
Text GLabel 8550 3000 0    47   Output ~ 0
A
Wire Wire Line
	2750 3100 2900 3100
Wire Wire Line
	2750 3200 2900 3200
Wire Wire Line
	2750 3300 2900 3300
Wire Wire Line
	8700 3000 8550 3000
Wire Wire Line
	8550 3100 8700 3100
Wire Wire Line
	8700 3200 8550 3200
Wire Wire Line
	8550 3300 8700 3300
Wire Wire Line
	8700 3400 8550 3400
Text GLabel 5350 2950 2    47   Input ~ 0
COMMON
Text GLabel 6350 2950 0    47   Input ~ 0
COMMON
Text GLabel 4650 2950 0    47   Input ~ 0
A
Text GLabel 7050 2950 2    47   Input ~ 0
B
Text GLabel 4650 3300 0    47   Output ~ 0
AND
Text GLabel 6350 3300 0    47   Output ~ 0
OR
$Comp
L TE-AC-SPDT RLY1
U 1 1 5C58C26A
P 5000 3150
F 0 "RLY1" H 5000 3500 60  0000 C CNN
F 1 "A" H 5000 2790 60  0000 C CNN
F 2 "Footprints:TE-RT1-3.5mm" H 5045 3090 60  0001 C CNN
F 3 "" H 5045 3090 60  0000 C CNN
	1    5000 3150
	1    0    0    -1  
$EndComp
$Comp
L TE-AC-SPDT RLY2
U 1 1 5C58C2E3
P 6700 3150
F 0 "RLY2" H 6700 3500 60  0000 C CNN
F 1 "B" H 6700 2790 60  0000 C CNN
F 2 "Footprints:TE-RT1-3.5mm" H 6745 3090 60  0001 C CNN
F 3 "" H 6745 3090 60  0000 C CNN
	1    6700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2950 6500 2950
Wire Wire Line
	6900 2950 7050 2950
Wire Wire Line
	6350 3300 6500 3300
Wire Wire Line
	6900 3400 7050 3400
Wire Wire Line
	4800 2950 4650 2950
Wire Wire Line
	4650 3300 4800 3300
Wire Wire Line
	5200 2950 5350 2950
Wire Wire Line
	5200 3400 5350 3400
NoConn ~ 5200 3200
Text GLabel 5350 3400 2    47   Input ~ 0
B
Text GLabel 7050 3200 2    47   Input ~ 0
A
Text GLabel 7050 3400 2    47   Input ~ 0
B
Wire Wire Line
	7050 3200 6900 3200
$Comp
L Conn_01x03 J1
U 1 1 5C672192
P 2550 3200
F 0 "J1" H 2550 3400 50  0000 C CNN
F 1 "Input" H 2550 3000 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_3pol" H 2550 3200 50  0001 C CNN
F 3 "" H 2550 3200 50  0001 C CNN
	1    2550 3200
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x05 J2
U 1 1 5C672368
P 8900 3200
F 0 "J2" H 8900 2900 50  0000 C CNN
F 1 "Output" H 8900 3500 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_5pol" H 8900 3200 50  0001 C CNN
F 3 "" H 8900 3200 50  0001 C CNN
	1    8900 3200
	1    0    0    1   
$EndComp
$EndSCHEMATC
