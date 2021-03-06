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
LIBS:test
LIBS:diode
LIBS:w_device
LIBS:w_transistor
LIBS:linear-technology-2
LIBS:linear-technology-3
LIBS:w_connectors
LIBS:Amp Fan-cache
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
L GND #PWR01
U 1 1 564C3D12
P 2800 3800
F 0 "#PWR01" H 2800 3800 30  0001 C CNN
F 1 "GND" H 2800 3730 30  0001 C CNN
F 2 "" H 2800 3800 60  0000 C CNN
F 3 "" H 2800 3800 60  0000 C CNN
	1    2800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2850 2800 3800
$Comp
L R R1
U 1 1 564C3E78
P 2800 2100
F 0 "R1" V 2880 2100 50  0000 C CNN
F 1 "12k" V 2800 2100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2730 2100 30  0001 C CNN
F 3 "" H 2800 2100 30  0000 C CNN
	1    2800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1150 2800 1950
$Comp
L +16-24V #PWR02
U 1 1 564C4641
P 2800 1150
F 0 "#PWR02" H 2800 1100 20  0001 C CNN
F 1 "+16-24V" H 2800 1250 30  0000 C CNN
F 2 "" H 2800 1150 60  0000 C CNN
F 3 "" H 2800 1150 60  0000 C CNN
	1    2800 1150
	1    0    0    -1  
$EndComp
$Comp
L Fan12V F1
U 1 1 564C4682
P 6550 1800
F 0 "F1" H 6800 2150 60  0000 C CNN
F 1 "FANout" H 6550 1800 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04" H 6550 1800 60  0001 C CNN
F 3 "" H 6550 1800 60  0000 C CNN
	1    6550 1800
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 564CCA77
P 2800 2700
F 0 "R2" V 2880 2700 50  0000 C CNN
F 1 "12k" V 2800 2700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2730 2700 30  0001 C CNN
F 3 "" H 2800 2700 30  0000 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_CBE Q1
U 1 1 564CCB34
P 4950 2500
F 0 "Q1" H 4900 2650 50  0000 R CNN
F 1 "Q_NPN_CBE" H 5550 2500 50  0000 R CNN
F 2 "Transistors_TO-220:TO-220_Bipolar-BCE_Vertical" H 5150 2600 29  0001 C CNN
F 3 "" H 4950 2500 60  0000 C CNN
	1    4950 2500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 564CCD8C
P 3950 1650
F 0 "C2" H 3975 1750 50  0000 L CNN
F 1 "100nF" H 3975 1550 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 3988 1500 30  0001 C CNN
F 3 "" H 3950 1650 60  0000 C CNN
	1    3950 1650
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 564CCDF1
P 2400 2700
F 0 "C1" H 2450 2800 50  0000 L CNN
F 1 "47uF" H 2200 2550 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5_CopperClear" H 2400 2700 60  0001 C CNN
F 3 "" H 2400 2700 60  0000 C CNN
	1    2400 2700
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 564CCF84
P 5050 3100
F 0 "D1" H 5050 3200 50  0000 C CNN
F 1 "1N4001" H 5050 3000 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_P600_Horizontal" H 5050 3100 60  0001 C CNN
F 3 "" H 5050 3100 60  0000 C CNN
	1    5050 3100
	0    1    1    0   
$EndComp
$Comp
L TL071 U1
U 1 1 564CD035
P 3800 2500
F 0 "U1" H 3900 2700 70  0000 C CNN
F 1 "TL071" H 3950 2300 70  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 3800 2500 60  0001 C CNN
F 3 "" H 3800 2500 60  0000 C CNN
	1    3800 2500
	1    0    0    -1  
$EndComp
NoConn ~ 6400 2250
NoConn ~ 6500 2250
Wire Wire Line
	5050 3550 5050 3250
Wire Wire Line
	2100 3550 6700 3550
Connection ~ 2800 3550
Wire Wire Line
	6700 3550 6700 2250
Connection ~ 5050 3550
Wire Wire Line
	3700 2900 3700 3550
Connection ~ 3700 3550
Wire Wire Line
	2100 1250 5050 1250
Wire Wire Line
	3700 1250 3700 2100
Connection ~ 2800 1250
Wire Wire Line
	3950 1250 3950 1500
Connection ~ 3700 1250
Wire Wire Line
	5050 1250 5050 2300
Connection ~ 3950 1250
Wire Wire Line
	4300 2500 4750 2500
$Comp
L GND #PWR03
U 1 1 564CE5BB
P 3950 1800
F 0 "#PWR03" H 3950 1800 30  0001 C CNN
F 1 "GND" H 3950 1730 30  0001 C CNN
F 2 "" H 3950 1800 60  0000 C CNN
F 3 "" H 3950 1800 60  0000 C CNN
	1    3950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2850 2400 3550
Wire Wire Line
	2400 2550 2400 2400
Wire Wire Line
	2400 2400 3300 2400
Wire Wire Line
	2800 2250 2800 2550
Connection ~ 2800 2400
Wire Wire Line
	5050 2700 5050 2950
Wire Wire Line
	3200 2850 6600 2850
Wire Wire Line
	6600 2850 6600 2250
Connection ~ 5050 2850
Wire Wire Line
	3300 2600 3200 2600
Wire Wire Line
	3200 2600 3200 2850
Wire Wire Line
	1650 2350 2100 2350
Wire Wire Line
	2100 2350 2100 1250
Wire Wire Line
	1650 2450 2100 2450
Wire Wire Line
	2100 2450 2100 3550
Connection ~ 2400 3550
$Comp
L POWER_2 J1
U 1 1 564CFC37
P 1550 2400
F 0 "J1" H 1550 2550 60  0000 C CNN
F 1 "FANin" H 1550 2250 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1550 2400 60  0001 C CNN
F 3 "" H 1550 2400 60  0000 C CNN
	1    1550 2400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
