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
LIBS:Transformer Breakout-cache
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
L CONN_2 P2
U 1 1 58159F39
P 4200 3200
F 0 "P2" V 4150 3200 40  0000 C CNN
F 1 "BRK" V 4250 3200 40  0000 C CNN
F 2 "Footprints:ED110-2" H 4200 3200 60  0001 C CNN
F 3 "" H 4200 3200 60  0001 C CNN
	1    4200 3200
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 5815A005
P 4200 2150
F 0 "P1" V 4150 2150 40  0000 C CNN
F 1 "XFRMR" V 4250 2150 40  0000 C CNN
F 2 "Footprints:AMGIS_XFRMR" H 4200 2150 60  0001 C CNN
F 3 "" H 4200 2150 60  0001 C CNN
	1    4200 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 2500 4100 2850
Wire Wire Line
	4300 2850 4300 2500
Text Label 4300 2700 0    60   ~ 0
A
Text Label 4100 2700 0    60   ~ 0
B
$EndSCHEMATC
