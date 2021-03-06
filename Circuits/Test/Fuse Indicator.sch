EESchema Schematic File Version 2
LIBS:Fuse Indicator-rescue
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
LIBS:Fuse Indicator-cache
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
L FUSE F1
U 1 1 56484211
P 4650 3200
F 0 "F1" H 4750 3250 50  0000 C CNN
F 1 "FUSE" H 4550 3150 50  0000 C CNN
F 2 "" H 4650 3200 60  0000 C CNN
F 3 "" H 4650 3200 60  0000 C CNN
	1    4650 3200
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 56484291
P 4950 3050
F 0 "D1" H 4950 3150 50  0000 C CNN
F 1 "AL5809" H 4950 2950 50  0000 C CNN
F 2 "" H 4950 3050 60  0000 C CNN
F 3 "" H 4950 3050 60  0000 C CNN
	1    4950 3050
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 5648430C
P 4950 3450
F 0 "D2" H 4950 3550 50  0000 C CNN
F 1 "LED" H 4950 3350 50  0000 C CNN
F 2 "" H 4950 3450 60  0000 C CNN
F 3 "" H 4950 3450 60  0000 C CNN
	1    4950 3450
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR1
U 1 1 5648451B
P 4000 2700
F 0 "#PWR1" H 4000 2550 50  0001 C CNN
F 1 "VCC" H 4000 2850 50  0000 C CNN
F 2 "" H 4000 2700 60  0000 C CNN
F 3 "" H 4000 2700 60  0000 C CNN
	1    4000 2700
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Fuse_Indicator #PWR2
U 1 1 56484550
P 4000 4350
F 0 "#PWR2" H 4000 4100 50  0001 C CNN
F 1 "GND" H 4000 4200 50  0000 C CNN
F 2 "" H 4000 4350 60  0000 C CNN
F 3 "" H 4000 4350 60  0000 C CNN
	1    4000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2700 4650 2700
Wire Wire Line
	4650 2700 4650 2950
Wire Wire Line
	4950 2900 4650 2900
Connection ~ 4650 2900
Wire Wire Line
	4950 3200 4950 3250
Wire Wire Line
	4950 3650 4650 3650
Wire Wire Line
	4650 3450 4650 3800
Wire Wire Line
	4000 4350 4650 4350
Wire Wire Line
	4650 4350 4650 4100
Text Label 4650 2700 0    60   ~ 0
Vin
Text Label 4650 4350 0    60   ~ 0
Gnd
$Comp
L R R1
U 1 1 564845C1
P 4650 3950
F 0 "R1" V 4730 3950 50  0000 C CNN
F 1 "LOAD" V 4650 3950 50  0000 C CNN
F 2 "" V 4580 3950 30  0000 C CNN
F 3 "" H 4650 3950 30  0000 C CNN
	1    4650 3950
	1    0    0    -1  
$EndComp
Connection ~ 4650 3650
$EndSCHEMATC
