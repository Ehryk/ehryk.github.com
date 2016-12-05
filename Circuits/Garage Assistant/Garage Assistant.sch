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
LIBS:ehryk
LIBS:w_relay
LIBS:Garage Assistant-cache
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
L Blend_Micro_v1.0 UC1
U 1 1 583CD9DF
P 4600 3700
F 0 "UC1" H 4600 4400 60  0000 C CNN
F 1 "Blend_Micro_v1.0" H 4600 2900 60  0000 C CNN
F 2 "Footprints:Blend_Micro_v1.0" H 4650 3550 60  0001 C CNN
F 3 "" H 4650 3550 60  0000 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L HiLink_5V3W U1
U 1 1 583CDAC5
P 4550 1450
F 0 "U1" H 4550 1700 60  0000 C CNN
F 1 "HiLink_5V3W" H 4550 1200 60  0000 C CNN
F 2 "Footprints:HiLink_5V3W" H 4250 1450 60  0001 C CNN
F 3 "" H 4250 1450 60  0001 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
$Comp
L RELAY_T9AS5x1 RLY1
U 1 1 583CDBD6
P 9300 1500
F 0 "RLY1" H 9300 1200 60  0000 C CNN
F 1 "RELAY" H 9300 1300 60  0000 C CNN
F 2 "Footprints:Relay" H 9300 1500 60  0001 C CNN
F 3 "" H 9300 1500 60  0000 C CNN
	1    9300 1500
	1    0    0    1   
$EndComp
$Comp
L CONN_3 P5
U 1 1 583CDC9A
P 10900 1400
F 0 "P5" V 10850 1400 50  0000 C CNN
F 1 "OUT_A" V 10950 1400 40  0000 C CNN
F 2 "Connect:bornier3" H 10900 1400 60  0001 C CNN
F 3 "" H 10900 1400 60  0001 C CNN
	1    10900 1400
	1    0    0    -1  
$EndComp
$Comp
L RELAY_T9AS5x1 RLY2
U 1 1 583CE11F
P 9300 3750
F 0 "RLY2" H 9300 3450 60  0000 C CNN
F 1 "RELAY" H 9300 3550 60  0000 C CNN
F 2 "Footprints:Relay" H 9300 3750 60  0001 C CNN
F 3 "" H 9300 3750 60  0000 C CNN
	1    9300 3750
	1    0    0    1   
$EndComp
$Comp
L CONN_3 P6
U 1 1 583CE14E
P 10900 3650
F 0 "P6" V 10850 3650 50  0000 C CNN
F 1 "OUT_B" V 10950 3650 40  0000 C CNN
F 2 "Connect:bornier3" H 10900 3650 60  0001 C CNN
F 3 "" H 10900 3650 60  0001 C CNN
	1    10900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3700 9100 3700
Wire Wire Line
	7100 3700 7100 3600
Wire Wire Line
	7100 1350 7100 1450
Wire Wire Line
	7100 1450 9100 1450
Wire Wire Line
	9500 1400 10550 1400
Wire Wire Line
	9500 1500 10550 1500
Wire Wire Line
	10550 1300 10100 1300
Wire Wire Line
	10100 1300 10100 1100
Wire Wire Line
	10100 1100 8700 1100
Wire Wire Line
	8700 1100 8700 1450
Connection ~ 8700 1450
Wire Wire Line
	9500 3750 10550 3750
Wire Wire Line
	9500 3650 10550 3650
Wire Wire Line
	8700 3700 8700 3350
Wire Wire Line
	8700 3350 10100 3350
Wire Wire Line
	10100 3350 10100 3550
Wire Wire Line
	10100 3550 10550 3550
Connection ~ 8700 3700
$Comp
L GND #PWR10
U 1 1 583CF72C
P 5450 1400
F 0 "#PWR10" H 5450 1400 30  0001 C CNN
F 1 "GND" H 5450 1330 30  0001 C CNN
F 2 "" H 5450 1400 60  0001 C CNN
F 3 "" H 5450 1400 60  0001 C CNN
	1    5450 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 583CF78F
P 3650 4600
F 0 "#PWR9" H 3650 4600 30  0001 C CNN
F 1 "GND" H 3650 4530 30  0001 C CNN
F 2 "" H 3650 4600 60  0001 C CNN
F 3 "" H 3650 4600 60  0001 C CNN
	1    3650 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 583CF8CC
P 5550 4600
F 0 "#PWR12" H 5550 4600 30  0001 C CNN
F 1 "GND" H 5550 4530 30  0001 C CNN
F 2 "" H 5550 4600 60  0001 C CNN
F 3 "" H 5550 4600 60  0001 C CNN
	1    5550 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1250 5450 1250
Wire Wire Line
	5450 1250 5450 1400
Wire Wire Line
	3650 4300 3650 4600
Wire Wire Line
	3650 4300 3750 4300
Wire Wire Line
	3750 4400 3650 4400
Connection ~ 3650 4400
Wire Wire Line
	5550 4600 5550 4400
Wire Wire Line
	5550 4400 5450 4400
$Comp
L GND #PWR20
U 1 1 583CFAB3
P 10950 4550
F 0 "#PWR20" H 10950 4550 30  0001 C CNN
F 1 "GND" H 10950 4480 30  0001 C CNN
F 2 "" H 10950 4550 60  0001 C CNN
F 3 "" H 10950 4550 60  0001 C CNN
	1    10950 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 583CFB1F
P 8250 2300
F 0 "#PWR16" H 8250 2300 30  0001 C CNN
F 1 "GND" H 8250 2230 30  0001 C CNN
F 2 "" H 8250 2300 60  0001 C CNN
F 3 "" H 8250 2300 60  0001 C CNN
	1    8250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1650 9700 1650
$Comp
L LED D9
U 1 1 583D004F
P 10650 4450
F 0 "D9" H 10650 4350 50  0000 C CNN
F 1 "LED_B" H 10650 4550 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 10650 4450 60  0001 C CNN
F 3 "" H 10650 4450 60  0000 C CNN
	1    10650 4450
	-1   0    0    1   
$EndComp
$Comp
L LED D7
U 1 1 583D0084
P 9450 5800
F 0 "D7" H 9450 5700 50  0000 C CNN
F 1 "LED_PWR" H 9450 5900 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 9450 5800 60  0001 C CNN
F 3 "" H 9450 5800 60  0000 C CNN
	1    9450 5800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR18
U 1 1 583D07E1
P 9750 5900
F 0 "#PWR18" H 9750 5900 30  0001 C CNN
F 1 "GND" H 9750 5830 30  0001 C CNN
F 2 "" H 9750 5900 60  0001 C CNN
F 3 "" H 9750 5900 60  0001 C CNN
	1    9750 5900
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 583D0879
P 8950 5800
F 0 "R6" V 8850 5800 50  0000 C CNN
F 1 "220Ω" V 8950 5800 47  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 8880 5800 30  0001 C CNN
F 3 "" H 8950 5800 30  0000 C CNN
	1    8950 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 5800 9250 5800
Wire Wire Line
	9650 5800 9750 5800
Wire Wire Line
	9750 5800 9750 5900
$Comp
L CP1 C1
U 1 1 583D105A
P 3300 4350
F 0 "C1" H 3325 4450 50  0000 L CNN
F 1 "10µF" H 3325 4250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 3300 4350 60  0001 C CNN
F 3 "" H 3300 4350 60  0000 C CNN
	1    3300 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 583D111F
P 3300 4600
F 0 "#PWR8" H 3300 4600 30  0001 C CNN
F 1 "GND" H 3300 4530 30  0001 C CNN
F 2 "" H 3300 4600 60  0001 C CNN
F 3 "" H 3300 4600 60  0001 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4500 3300 4600
Text GLabel 9700 3900 2    47   Input ~ 0
+5VDC
Text GLabel 9700 1650 2    47   Input ~ 0
+5VDC
Wire Wire Line
	8250 1650 9100 1650
Wire Wire Line
	8250 3900 9100 3900
Wire Wire Line
	10850 4450 10950 4450
Wire Wire Line
	10950 4450 10950 4550
$Comp
L R R8
U 1 1 583D1E02
P 10150 4450
F 0 "R8" V 10050 4450 50  0000 C CNN
F 1 "220Ω" V 10150 4450 47  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 10080 4450 30  0001 C CNN
F 3 "" H 10150 4450 30  0000 C CNN
	1    10150 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	10300 4450 10450 4450
$Comp
L TIP122 Q2
U 1 1 583D1FE7
P 8150 4200
F 0 "Q2" H 8400 4275 50  0000 L CNN
F 1 "TIP102" H 8400 4200 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 6850 3950 50  0001 L CIN
F 3 "" H 8150 4200 50  0000 L CNN
	1    8150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3900 9700 3900
Wire Wire Line
	8250 3900 8250 4000
$Comp
L GND #PWR17
U 1 1 583D2383
P 8250 4550
F 0 "#PWR17" H 8250 4550 30  0001 C CNN
F 1 "GND" H 8250 4480 30  0001 C CNN
F 2 "" H 8250 4550 60  0001 C CNN
F 3 "" H 8250 4550 60  0001 C CNN
	1    8250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4400 8250 4550
$Comp
L TIP122 Q1
U 1 1 583D2DDE
P 8150 1950
F 0 "Q1" H 8400 2025 50  0000 L CNN
F 1 "TIP102" H 8400 1950 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 8400 1875 50  0001 L CIN
F 3 "" H 8150 1950 50  0000 L CNN
	1    8150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1650 8250 1750
Wire Wire Line
	8250 2150 8250 2300
$Comp
L GND #PWR19
U 1 1 583D33AB
P 10950 2300
F 0 "#PWR19" H 10950 2300 30  0001 C CNN
F 1 "GND" H 10950 2230 30  0001 C CNN
F 2 "" H 10950 2300 60  0001 C CNN
F 3 "" H 10950 2300 60  0001 C CNN
	1    10950 2300
	1    0    0    -1  
$EndComp
$Comp
L LED D8
U 1 1 583D33B1
P 10650 2200
F 0 "D8" H 10650 2100 50  0000 C CNN
F 1 "LED_A" H 10650 2300 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 10650 2200 60  0001 C CNN
F 3 "" H 10650 2200 60  0000 C CNN
	1    10650 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	10850 2200 10950 2200
Wire Wire Line
	10950 2200 10950 2300
$Comp
L R R7
U 1 1 583D33B9
P 10150 2200
F 0 "R7" V 10050 2200 50  0000 C CNN
F 1 "220Ω" V 10150 2200 47  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 10080 2200 30  0001 C CNN
F 3 "" H 10150 2200 30  0000 C CNN
	1    10150 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	10300 2200 10450 2200
Text GLabel 9850 2200 0    47   Input ~ 0
A_LED
Text GLabel 7350 1950 0    47   Input ~ 0
A_RELAY
Text GLabel 7350 4200 0    47   Input ~ 0
B_RELAY
Text GLabel 9850 4450 0    47   Input ~ 0
B_LED
Text GLabel 5450 3400 2    47   Output ~ 0
B_RELAY
Text GLabel 5450 3200 2    47   Output ~ 0
A_RELAY
Text GLabel 5450 3300 2    47   Output ~ 0
B_LED
Text GLabel 5450 3100 2    47   Output ~ 0
A_LED
Text GLabel 8650 5800 0    47   Input ~ 0
PWR_LED
Text GLabel 3750 3200 0    47   Output ~ 0
PWR_LED
Text GLabel 1850 1200 2    47   Output ~ 0
120VAC_A
Text GLabel 1850 1400 2    47   Output ~ 0
120VAC_B
Text GLabel 3750 1250 0    47   Input ~ 0
120VAC_A
Text GLabel 3750 1650 0    47   Input ~ 0
120VAC_B
Text GLabel 6700 1250 0    47   Input ~ 0
120VAC_A
Text GLabel 7500 1250 2    47   Input ~ 0
120VAC_B
Wire Wire Line
	6850 1250 6700 1250
Wire Wire Line
	7350 1250 7500 1250
Text GLabel 6700 3500 0    47   Input ~ 0
120VAC_A
Text GLabel 7500 3500 2    47   Input ~ 0
120VAC_B
Wire Wire Line
	6700 3500 6850 3500
Wire Wire Line
	7350 3500 7500 3500
Wire Wire Line
	3000 4200 3750 4200
Connection ~ 3300 4200
Wire Wire Line
	8650 5800 8800 5800
Wire Wire Line
	9850 4450 10000 4450
Wire Wire Line
	9850 2200 10000 2200
$Comp
L JUMPER3 JP2
U 1 1 583D8910
P 7100 3500
F 0 "JP2" H 7050 3750 50  0000 L CNN
F 1 "CROSSFEED_B" H 7100 3600 50  0000 C BNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 7100 3500 60  0001 C CNN
F 3 "" H 7100 3500 60  0000 C CNN
	1    7100 3500
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP1
U 1 1 583D8966
P 7100 1250
F 0 "JP1" H 7050 1500 50  0000 L CNN
F 1 "CROSSFEED_A" H 7100 1350 50  0000 C BNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 7100 1250 60  0001 C CNN
F 3 "" H 7100 1250 60  0000 C CNN
	1    7100 1250
	1    0    0    -1  
$EndComp
Text Notes 1150 950  0    197  ~ 0
AC Input
Text Notes 3400 950  0    197  ~ 0
DC Rectification
Text Notes 3550 2700 0    197  ~ 0
Microcontroller
Text Notes 8250 900  0    197  ~ 0
Output A
Text Notes 8250 3150 0    197  ~ 0
Output B
Text Notes 8300 5450 0    197  ~ 0
Power LED
NoConn ~ 3750 3600
NoConn ~ 3750 3700
NoConn ~ 3750 3500
NoConn ~ 5450 4200
Text Notes 3050 5500 0    197  ~ 0
Current Sense
$Comp
L CONN_PWR_2 P3
U 1 1 583DD4B5
P 1350 1300
F 0 "P3" V 1300 1300 40  0000 C CNN
F 1 "AC_IN" V 1400 1300 40  0000 C CNN
F 2 "Connect:bornier2" H 1350 1300 60  0001 C CNN
F 3 "" H 1350 1300 60  0001 C CNN
	1    1350 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 1200 1850 1200
Wire Wire Line
	1850 1400 1700 1400
Wire Wire Line
	3750 1250 3900 1250
Wire Wire Line
	3900 1650 3750 1650
Wire Wire Line
	7800 1950 7950 1950
Wire Wire Line
	7800 4200 7950 4200
$Comp
L 3.5mm_11pin P4
U 1 1 583EBBBC
P 3000 6250
F 0 "P4" H 3000 6850 60  0000 C CNN
F 1 "3.5mm_11pin" H 3000 5300 60  0000 C CNN
F 2 "Footprints:3.5mm_11PIN" H 3000 6250 60  0001 C CNN
F 3 "" H 3000 6250 60  0001 C CNN
	1    3000 6250
	1    0    0    -1  
$EndComp
Text GLabel 2050 6800 0    47   Output ~ 0
CS_CONNECT
$Comp
L GND #PWR6
U 1 1 583EC6C1
P 2050 7100
F 0 "#PWR6" H 2050 7100 30  0001 C CNN
F 1 "GND" H 2050 7030 30  0001 C CNN
F 2 "" H 2050 7100 60  0001 C CNN
F 3 "" H 2050 7100 60  0001 C CNN
	1    2050 7100
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR13
U 1 1 583EC6F4
P 5750 4350
F 0 "#PWR13" H 5750 4450 40  0001 C CNN
F 1 "3V3" H 5750 4499 40  0000 C CNN
F 2 "" H 5750 4350 60  0001 C CNN
F 3 "" H 5750 4350 60  0001 C CNN
	1    5750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4300 5650 4300
Wire Wire Line
	5650 4300 5650 4400
Wire Wire Line
	5750 4400 5750 4350
NoConn ~ 5450 3500
$Comp
L +5V #PWR11
U 1 1 583ECC31
P 5450 1600
F 0 "#PWR11" H 5450 1690 20  0001 C CNN
F 1 "+5V" H 5450 1690 30  0000 C CNN
F 2 "" H 5450 1600 60  0001 C CNN
F 3 "" H 5450 1600 60  0001 C CNN
	1    5450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1600 5450 1650
Wire Wire Line
	2050 6650 2350 6650
Wire Wire Line
	2350 6800 2050 6800
Wire Wire Line
	2350 6950 2050 6950
Wire Wire Line
	2050 6950 2050 7100
NoConn ~ 3650 6950
NoConn ~ 3650 6800
NoConn ~ 3650 6650
NoConn ~ 3850 6100
NoConn ~ 3850 6250
$Comp
L R R1
U 1 1 583EDE96
P 4200 6100
F 0 "R1" H 4300 6100 50  0000 C CNN
F 1 "47Ω" V 4200 6100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4130 6100 30  0001 C CNN
F 3 "" H 4200 6100 30  0000 C CNN
	1    4200 6100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 583EDEF3
P 5800 6100
F 0 "R2" V 5880 6100 50  0000 C CNN
F 1 "10kΩ" V 5800 6100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5730 6100 30  0001 C CNN
F 3 "" H 5800 6100 30  0000 C CNN
	1    5800 6100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 583EDF58
P 5800 6600
F 0 "R3" V 5880 6600 50  0000 C CNN
F 1 "10kΩ" V 5800 6600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5730 6600 30  0001 C CNN
F 3 "" H 5800 6600 30  0000 C CNN
	1    5800 6600
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 583EE11E
P 5400 6500
F 0 "C2" H 5425 6600 50  0000 L CNN
F 1 "10µF" H 5425 6400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 5438 6350 30  0001 C CNN
F 3 "" H 5400 6500 60  0000 C CNN
	1    5400 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 583EEB39
P 5800 6950
F 0 "#PWR15" H 5800 6950 30  0001 C CNN
F 1 "GND" H 5800 6880 30  0001 C CNN
F 2 "" H 5800 6950 60  0001 C CNN
F 3 "" H 5800 6950 60  0001 C CNN
	1    5800 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6750 5800 6950
Wire Wire Line
	5400 6650 5400 6850
Wire Wire Line
	5400 6850 5800 6850
Connection ~ 5800 6850
Wire Wire Line
	5800 6250 5800 6450
Wire Wire Line
	3850 6350 5800 6350
Connection ~ 5800 6350
Wire Wire Line
	5800 5950 5800 5850
Connection ~ 5400 6350
Wire Wire Line
	3850 5850 5150 5850
Wire Wire Line
	4200 5950 4200 5850
Connection ~ 4200 5850
NoConn ~ 3850 6000
Text GLabel 5100 6350 3    47   Output ~ 0
BIAS
Text GLabel 5150 5850 2    47   Output ~ 0
SENSE
Text GLabel 5450 3600 2    47   Input ~ 0
SENSE
Text GLabel 5450 3800 2    47   Input ~ 0
CS_CONNECT
Text GLabel 5450 3700 2    47   Input ~ 0
BIAS
Wire Wire Line
	5650 4400 5750 4400
Wire Wire Line
	5450 1650 5300 1650
$Comp
L +5V #PWR7
U 1 1 583F0557
P 3000 4100
F 0 "#PWR7" H 3000 4190 20  0001 C CNN
F 1 "+5V" H 3000 4190 30  0000 C CNN
F 2 "" H 3000 4100 60  0001 C CNN
F 3 "" H 3000 4100 60  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4100 3000 4200
$Comp
L 3V3 #PWR5
U 1 1 583F08C7
P 2050 6600
F 0 "#PWR5" H 2050 6700 40  0001 C CNN
F 1 "3V3" H 2050 6749 40  0000 C CNN
F 2 "" H 2050 6600 60  0001 C CNN
F 3 "" H 2050 6600 60  0001 C CNN
	1    2050 6600
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR14
U 1 1 583F0917
P 5800 5850
F 0 "#PWR14" H 5800 5950 40  0001 C CNN
F 1 "3V3" H 5800 5999 40  0000 C CNN
F 2 "" H 5800 5850 60  0001 C CNN
F 3 "" H 5800 5850 60  0001 C CNN
	1    5800 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6600 2050 6650
Text Notes 4100 5800 0    39   ~ 0
Burden\nResistor
$Comp
L D_Small D1
U 1 1 583F176D
P 4600 6000
F 0 "D1" V 4600 5850 50  0000 L CNN
F 1 "1N4148" H 4450 5920 50  0001 L CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" V 4600 6000 60  0001 C CNN
F 3 "" V 4600 6000 60  0000 C CNN
	1    4600 6000
	0    1    1    0   
$EndComp
$Comp
L D_Small D2
U 1 1 583F184A
P 4600 6200
F 0 "D2" V 4600 6050 50  0000 L CNN
F 1 "1N4148" V 4500 6450 50  0001 L CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" V 4600 6200 60  0001 C CNN
F 3 "" V 4600 6200 60  0000 C CNN
	1    4600 6200
	0    1    1    0   
$EndComp
$Comp
L D_Small D4
U 1 1 583F1900
P 4800 6200
F 0 "D4" V 4800 6050 50  0000 L CNN
F 1 "1N4148" H 4650 6120 50  0001 L CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" V 4800 6200 60  0001 C CNN
F 3 "" V 4800 6200 60  0000 C CNN
	1    4800 6200
	0    -1   -1   0   
$EndComp
$Comp
L D_Small D3
U 1 1 583F1966
P 4800 6000
F 0 "D3" V 4800 5850 50  0000 L CNN
F 1 "1N4148" H 4650 5920 50  0001 L CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" V 4800 6000 60  0001 C CNN
F 3 "" V 4800 6000 60  0000 C CNN
	1    4800 6000
	0    -1   -1   0   
$EndComp
Text Notes 4850 5800 2    39   ~ 0
1N4148 x4
Wire Wire Line
	4600 5900 4600 5850
Connection ~ 4600 5850
Wire Wire Line
	4800 5900 4800 5850
Connection ~ 4800 5850
Wire Wire Line
	4600 6300 4600 6300
Wire Wire Line
	4600 6100 4600 6100
Wire Wire Line
	4800 6100 4800 6100
Wire Wire Line
	4800 6300 4800 6350
Connection ~ 4800 6350
Wire Wire Line
	4600 6300 4600 6350
Connection ~ 4600 6350
Wire Wire Line
	4200 6250 4200 6350
Connection ~ 4200 6350
Text Notes 4100 7600 0    39   ~ 0
Burden Resistor Values: 3.3V Max\n0 - 100A   23Ω\n0 - 50A    46Ω\n0 - 30A    76Ω\n0 - 20A    112Ω\n0 - 10A    224Ω
$Comp
L CONN_3 P1
U 1 1 583F43B2
P 1100 3400
F 0 "P1" V 1050 3400 50  0000 C CNN
F 1 "MOTION_A" V 1150 3400 40  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 1100 3400 60  0001 C CNN
F 3 "" H 1100 3400 60  0001 C CNN
	1    1100 3400
	-1   0    0    1   
$EndComp
$Comp
L CONN_3 P2
U 1 1 583F48BC
P 1100 4400
F 0 "P2" V 1050 4400 50  0000 C CNN
F 1 "MOTION_B" V 1150 4400 40  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 1100 4400 60  0001 C CNN
F 3 "" H 1100 4400 60  0001 C CNN
	1    1100 4400
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR1
U 1 1 583F4CE6
P 1600 3150
F 0 "#PWR1" H 1600 3240 20  0001 C CNN
F 1 "+5V" H 1600 3240 30  0000 C CNN
F 2 "" H 1600 3150 60  0001 C CNN
F 3 "" H 1600 3150 60  0001 C CNN
	1    1600 3150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR3
U 1 1 583F4D48
P 1600 4150
F 0 "#PWR3" H 1600 4240 20  0001 C CNN
F 1 "+5V" H 1600 4240 30  0000 C CNN
F 2 "" H 1600 4150 60  0001 C CNN
F 3 "" H 1600 4150 60  0001 C CNN
	1    1600 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 583F4DAA
P 1600 4650
F 0 "#PWR4" H 1600 4650 30  0001 C CNN
F 1 "GND" H 1600 4580 30  0001 C CNN
F 2 "" H 1600 4650 60  0001 C CNN
F 3 "" H 1600 4650 60  0001 C CNN
	1    1600 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 583F4E0C
P 1600 3650
F 0 "#PWR2" H 1600 3650 30  0001 C CNN
F 1 "GND" H 1600 3580 30  0001 C CNN
F 2 "" H 1600 3650 60  0001 C CNN
F 3 "" H 1600 3650 60  0001 C CNN
	1    1600 3650
	1    0    0    -1  
$EndComp
Text GLabel 1600 3400 2    47   Output ~ 0
A_MOTION
Text GLabel 1600 4400 2    47   Output ~ 0
B_MOTION
Wire Wire Line
	1600 3150 1600 3300
Wire Wire Line
	1600 3300 1450 3300
Wire Wire Line
	1450 3400 1600 3400
Wire Wire Line
	1450 3500 1600 3500
Wire Wire Line
	1600 3500 1600 3650
Wire Wire Line
	1450 4300 1600 4300
Wire Wire Line
	1600 4300 1600 4150
Wire Wire Line
	1450 4400 1600 4400
Wire Wire Line
	1450 4500 1600 4500
Wire Wire Line
	1600 4500 1600 4650
Text GLabel 5450 4000 2    47   Output ~ 0
B_MOTION
Text GLabel 5450 3900 2    47   Output ~ 0
A_MOTION
NoConn ~ 5450 4100
NoConn ~ 3750 4100
NoConn ~ 3750 4000
NoConn ~ 3750 3900
NoConn ~ 3750 3800
NoConn ~ 3750 3400
NoConn ~ 3750 3300
NoConn ~ 3750 3100
Text Notes 650  2900 0    197  ~ 0
Motion Sense
$Comp
L D_Small D6
U 1 1 583F6D59
P 9300 4100
F 0 "D6" H 9250 4000 50  0000 L CNN
F 1 "1N4007" H 9150 4200 50  0000 L CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" V 9300 4100 60  0001 C CNN
F 3 "" V 9300 4100 60  0000 C CNN
	1    9300 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 4100 9600 4100
Wire Wire Line
	9600 4100 9600 3900
Connection ~ 9600 3900
Wire Wire Line
	9200 4100 9000 4100
Wire Wire Line
	9000 4100 9000 3900
Connection ~ 9000 3900
Wire Notes Line
	9400 3600 9400 3950
Wire Notes Line
	9400 3950 9200 3950
Wire Notes Line
	9200 3950 9200 3600
Wire Notes Line
	9200 3600 9400 3600
Wire Notes Line
	9400 1700 9400 1350
Wire Notes Line
	9400 1350 9200 1350
Wire Notes Line
	9200 1350 9200 1700
Wire Notes Line
	9200 1700 9400 1700
$Comp
L D_Small D5
U 1 1 583F8349
P 9300 1850
F 0 "D5" H 9250 1750 50  0000 L CNN
F 1 "1N4007" H 9150 1950 50  0000 L CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" V 9300 1850 60  0001 C CNN
F 3 "" V 9300 1850 60  0000 C CNN
	1    9300 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 1850 9600 1850
Wire Wire Line
	9600 1850 9600 1650
Connection ~ 9600 1650
Wire Wire Line
	9200 1850 9000 1850
Wire Wire Line
	9000 1850 9000 1650
Connection ~ 9000 1650
Text Label 10250 1300 0    24   ~ 0
A_COMMON
Text Label 10250 1400 0    24   ~ 0
A_NC
Text Label 10250 1500 0    24   ~ 0
A_NO
Text Label 10250 3550 0    24   ~ 0
B_COMMON
Text Label 10250 3650 0    24   ~ 0
B_NC
Text Label 10250 3750 0    24   ~ 0
B_NO
$Comp
L R R5
U 1 1 5841304F
P 7650 4200
F 0 "R5" V 7730 4200 50  0000 C CNN
F 1 "1kΩ" V 7650 4200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7580 4200 30  0001 C CNN
F 3 "" H 7650 4200 30  0000 C CNN
	1    7650 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 4200 7500 4200
$Comp
L R R4
U 1 1 58414D97
P 7650 1950
F 0 "R4" V 7730 1950 50  0000 C CNN
F 1 "1kΩ" V 7650 1950 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7580 1950 30  0001 C CNN
F 3 "" H 7650 1950 30  0000 C CNN
	1    7650 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 1950 7500 1950
$EndSCHEMATC
