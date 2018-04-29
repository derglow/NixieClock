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
LIBS:NixieBoardKiCAD
LIBS:nixieKiCadrev1-cache
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
U 1 1 557E2D7D
P 1550 3650
F 0 "#PWR01" H 1550 3400 50  0001 C CNN
F 1 "GND" H 1550 3500 50  0000 C CNN
F 2 "" H 1550 3650 60  0000 C CNN
F 3 "" H 1550 3650 60  0000 C CNN
	1    1550 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 557E2E12
P 1550 1350
F 0 "#PWR02" H 1550 1200 50  0001 C CNN
F 1 "+5V" H 1550 1490 50  0000 C CNN
F 2 "" H 1550 1350 60  0000 C CNN
F 3 "" H 1550 1350 60  0000 C CNN
	1    1550 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1350 1550 1450
$Comp
L ATMEGA328-A IC3
U 1 1 557E2C71
P 2450 2450
F 0 "IC3" H 2450 3700 40  0000 L BNN
F 1 "ATMEGA328-A" H 2850 1050 40  0000 L BNN
F 2 "NixieProjFootprints:TQFP32_Long" H 2450 2450 30  0000 C CIN
F 3 "" H 2450 2450 60  0000 C CNN
	1    2450 2450
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 55B010AC
P 2550 750
F 0 "P2" H 2550 950 50  0000 C CNN
F 1 "CONN_02X03" H 2550 550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 2550 -450 60  0001 C CNN
F 3 "" H 2550 -450 60  0000 C CNN
	1    2550 750 
	1    0    0    -1  
$EndComp
Text Label 2300 650  2    60   ~ 0
MISO
Text Label 2300 750  2    60   ~ 0
SCK
Text Label 2300 850  2    60   ~ 0
RST
Text Label 2800 650  0    60   ~ 0
VCC
Text Label 2800 750  0    60   ~ 0
MOSI
Text Label 2800 850  0    60   ~ 0
GND
Text Label 3600 1650 0    60   ~ 0
MOSI
Text Label 3600 1750 0    60   ~ 0
MISO
Text Label 3600 1850 0    60   ~ 0
SCK
Text Label 3800 2800 2    60   ~ 0
RST
$Comp
L Nixie_IN-14 N3
U 1 1 55B2445A
P 10750 3600
F 0 "N3" H 10750 3600 60  0000 C CNN
F 1 "Nixie_IN-14" H 10750 2200 60  0000 C CNN
F 2 "NixieProjFootprints:Nixie_IN14" H 10750 3600 60  0001 C CNN
F 3 "" H 10750 3600 60  0000 C CNN
	1    10750 3600
	1    0    0    -1  
$EndComp
$Comp
L Nixie_IN-14 N4
U 1 1 55B24528
P 10750 5100
F 0 "N4" H 10750 5100 60  0000 C CNN
F 1 "Nixie_IN-14" H 10750 3700 60  0000 C CNN
F 2 "NixieProjFootprints:Nixie_IN14" H 10750 5100 60  0001 C CNN
F 3 "" H 10750 5100 60  0000 C CNN
	1    10750 5100
	1    0    0    -1  
$EndComp
$Comp
L Nixie_IN-14 N6
U 1 1 55B24582
P 7550 2100
F 0 "N6" H 7550 2100 60  0000 C CNN
F 1 "Nixie_IN-14" H 7550 700 60  0000 C CNN
F 2 "NixieProjFootprints:Nixie_IN14" H 7550 2100 60  0001 C CNN
F 3 "" H 7550 2100 60  0000 C CNN
	1    7550 2100
	1    0    0    -1  
$EndComp
$Comp
L Nixie_IN-14 N5
U 1 1 55B2462B
P 7550 600
F 0 "N5" H 7550 600 60  0000 C CNN
F 1 "Nixie_IN-14" H 7550 -800 60  0000 C CNN
F 2 "NixieProjFootprints:Nixie_IN14" H 7550 600 60  0001 C CNN
F 3 "" H 7550 600 60  0000 C CNN
	1    7550 600 
	1    0    0    -1  
$EndComp
$Comp
L Nixie_IN-14 N1
U 1 1 55B24693
P 10750 600
F 0 "N1" H 10750 600 60  0000 C CNN
F 1 "Nixie_IN-14" H 10750 -800 60  0000 C CNN
F 2 "NixieProjFootprints:Nixie_IN14" H 10750 600 60  0001 C CNN
F 3 "" H 10750 600 60  0000 C CNN
	1    10750 600 
	1    0    0    -1  
$EndComp
$Comp
L Nixie_IN-14 N2
U 1 1 55B246FE
P 10750 2100
F 0 "N2" H 10750 2100 60  0000 C CNN
F 1 "Nixie_IN-14" H 10750 700 60  0000 C CNN
F 2 "NixieProjFootprints:Nixie_IN14" H 10750 2100 60  0001 C CNN
F 3 "" H 10750 2100 60  0000 C CNN
	1    10750 2100
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55B2499B
P 4000 2800
F 0 "R4" V 4080 2800 50  0000 C CNN
F 1 "R10k" V 4000 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3930 2800 30  0001 C CNN
F 3 "" H 4000 2800 30  0000 C CNN
	1    4000 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 2800 3850 2800
$Comp
L +5V #PWR03
U 1 1 55B24C2E
P 4150 2800
F 0 "#PWR03" H 4150 2650 50  0001 C CNN
F 1 "+5V" H 4150 2940 50  0000 C CNN
F 2 "" H 4150 2800 60  0000 C CNN
F 3 "" H 4150 2800 60  0000 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
$Comp
L 74141 IC9
U 1 1 55B2507C
P 9000 800
F 0 "IC9" H 9000 800 60  0000 C CNN
F 1 "74141" H 9000 -100 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 9000 800 60  0001 C CNN
F 3 "" H 9000 800 60  0000 C CNN
	1    9000 800 
	1    0    0    -1  
$EndComp
$Comp
L 74141 IC4
U 1 1 55B25533
P 5800 800
F 0 "IC4" H 5800 800 60  0000 C CNN
F 1 "74141" H 5800 -100 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 5800 800 60  0001 C CNN
F 3 "" H 5800 800 60  0000 C CNN
	1    5800 800 
	1    0    0    -1  
$EndComp
$Comp
L 74141 IC10
U 1 1 55B25592
P 9000 2300
F 0 "IC10" H 9000 2300 60  0000 C CNN
F 1 "74141" H 9000 1400 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 9000 2300 60  0001 C CNN
F 3 "" H 9000 2300 60  0000 C CNN
	1    9000 2300
	1    0    0    -1  
$EndComp
$Comp
L 74141 IC11
U 1 1 55B255EE
P 9000 3800
F 0 "IC11" H 9000 3800 60  0000 C CNN
F 1 "74141" H 9000 2900 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 9000 3800 60  0001 C CNN
F 3 "" H 9000 3800 60  0000 C CNN
	1    9000 3800
	1    0    0    -1  
$EndComp
$Comp
L 74141 IC5
U 1 1 55B2566F
P 5800 2300
F 0 "IC5" H 5800 2300 60  0000 C CNN
F 1 "74141" H 5800 1400 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 5800 2300 60  0001 C CNN
F 3 "" H 5800 2300 60  0000 C CNN
	1    5800 2300
	1    0    0    -1  
$EndComp
$Comp
L 74141 IC12
U 1 1 55B256CD
P 9000 5300
F 0 "IC12" H 9000 5300 60  0000 C CNN
F 1 "74141" H 9000 4400 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 9000 5300 60  0001 C CNN
F 3 "" H 9000 5300 60  0000 C CNN
	1    9000 5300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 55B25B3E
P 1550 1650
F 0 "#PWR04" H 1550 1500 50  0001 C CNN
F 1 "+5V" H 1550 1790 50  0000 C CNN
F 2 "" H 1550 1650 60  0000 C CNN
F 3 "" H 1550 1650 60  0000 C CNN
	1    1550 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 55B2603B
P 1550 1950
F 0 "#PWR05" H 1550 1800 50  0001 C CNN
F 1 "+5V" H 1550 2090 50  0000 C CNN
F 2 "" H 1550 1950 60  0000 C CNN
F 3 "" H 1550 1950 60  0000 C CNN
	1    1550 1950
	1    0    0    -1  
$EndComp
Text Label 10250 900  2    60   ~ 0
Nix1_1
Text Label 10250 1000 2    60   ~ 0
Nix1_2
Text Label 10250 1100 2    60   ~ 0
Nix1_3
Text Label 10250 1200 2    60   ~ 0
Nix1_4
Text Label 10250 1300 2    60   ~ 0
Nix1_5
Text Label 10250 1400 2    60   ~ 0
Nix1_6
Text Label 10250 1500 2    60   ~ 0
Nix1_7
Text Label 10250 1600 2    60   ~ 0
Nix1_8
Text Label 10250 1700 2    60   ~ 0
Nix1_9
Text Label 10250 1800 2    60   ~ 0
Nix1_0
Text Label 9450 900  0    60   ~ 0
Nix1_0
Text Label 9450 1000 0    60   ~ 0
Nix1_1
Text Label 9450 1100 0    60   ~ 0
Nix1_5
Text Label 9450 1200 0    60   ~ 0
Nix1_4
Text Label 9450 1400 0    60   ~ 0
Nix1_6
Text Label 9450 1500 0    60   ~ 0
Nix1_7
Text Label 9450 1600 0    60   ~ 0
Nix1_3
Text Label 8550 900  2    60   ~ 0
Nix1_8
Text Label 8550 1000 2    60   ~ 0
Nix1_9
Text Label 8550 1600 2    60   ~ 0
Nix1_2
Text Label 10250 2400 2    60   ~ 0
Nix2_1
Text Label 10250 2500 2    60   ~ 0
Nix2_2
Text Label 10250 2600 2    60   ~ 0
Nix2_3
Text Label 10250 2700 2    60   ~ 0
Nix2_4
Text Label 10250 2800 2    60   ~ 0
Nix2_5
Text Label 10250 2900 2    60   ~ 0
Nix2_6
Text Label 10250 3000 2    60   ~ 0
Nix2_7
Text Label 10250 3100 2    60   ~ 0
Nix2_8
Text Label 10250 3200 2    60   ~ 0
Nix2_9
Text Label 10250 3300 2    60   ~ 0
Nix2_0
Text Label 9450 2500 0    60   ~ 0
Nix2_1
Text Label 9450 2400 0    60   ~ 0
Nix2_0
Text Label 9450 2600 0    60   ~ 0
Nix2_5
Text Label 9450 2700 0    60   ~ 0
Nix2_4
Text Label 9450 2900 0    60   ~ 0
Nix2_6
Text Label 9450 3000 0    60   ~ 0
Nix2_7
Text Label 9450 3100 0    60   ~ 0
Nix2_3
Text Label 8550 2400 2    60   ~ 0
Nix2_8
Text Label 8550 2500 2    60   ~ 0
Nix2_9
Text Label 8550 3100 2    60   ~ 0
Nix2_2
Text Label 10250 3900 2    60   ~ 0
Nix3_1
Text Label 10250 4000 2    60   ~ 0
Nix3_2
Text Label 10250 4100 2    60   ~ 0
Nix3_3
Text Label 10250 4200 2    60   ~ 0
Nix3_4
Text Label 10250 4300 2    60   ~ 0
Nix3_5
Text Label 10250 4400 2    60   ~ 0
Nix3_6
Text Label 10250 4500 2    60   ~ 0
Nix3_7
Text Label 10250 4600 2    60   ~ 0
Nix3_8
Text Label 10250 4700 2    60   ~ 0
Nix3_9
Text Label 10250 4800 2    60   ~ 0
Nix3_0
Text Label 9450 3900 0    60   ~ 0
Nix3_0
Text Label 9450 4000 0    60   ~ 0
Nix3_1
Text Label 9450 4100 0    60   ~ 0
Nix3_5
Text Label 9450 4200 0    60   ~ 0
Nix3_4
Text Label 9450 4400 0    60   ~ 0
Nix3_6
Text Label 9450 4500 0    60   ~ 0
Nix3_7
Text Label 9450 4600 0    60   ~ 0
Nix3_3
Text Label 8550 3900 2    60   ~ 0
Nix3_8
Text Label 8550 4000 2    60   ~ 0
Nix3_9
Text Label 8550 4600 2    60   ~ 0
Nix3_2
$Comp
L GND #PWR06
U 1 1 55B2941A
P 9450 1300
F 0 "#PWR06" H 9450 1050 50  0001 C CNN
F 1 "GND" H 9450 1150 50  0000 C CNN
F 2 "" H 9450 1300 60  0000 C CNN
F 3 "" H 9450 1300 60  0000 C CNN
	1    9450 1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 55B29925
P 9450 2800
F 0 "#PWR07" H 9450 2550 50  0001 C CNN
F 1 "GND" H 9450 2650 50  0000 C CNN
F 2 "" H 9450 2800 60  0000 C CNN
F 3 "" H 9450 2800 60  0000 C CNN
	1    9450 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 55B29960
P 9450 4300
F 0 "#PWR08" H 9450 4050 50  0001 C CNN
F 1 "GND" H 9450 4150 50  0000 C CNN
F 2 "" H 9450 4300 60  0000 C CNN
F 3 "" H 9450 4300 60  0000 C CNN
	1    9450 4300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 55B29ADB
P 9450 5800
F 0 "#PWR09" H 9450 5550 50  0001 C CNN
F 1 "GND" H 9450 5650 50  0000 C CNN
F 2 "" H 9450 5800 60  0000 C CNN
F 3 "" H 9450 5800 60  0000 C CNN
	1    9450 5800
	0    -1   -1   0   
$EndComp
Text Label 10250 5400 2    60   ~ 0
Nix4_1
Text Label 10250 5500 2    60   ~ 0
Nix4_2
Text Label 10250 5600 2    60   ~ 0
Nix4_3
Text Label 10250 5700 2    60   ~ 0
Nix4_4
Text Label 10250 5800 2    60   ~ 0
Nix4_5
Text Label 10250 5900 2    60   ~ 0
Nix4_6
Text Label 10250 6000 2    60   ~ 0
Nix4_7
Text Label 10250 6100 2    60   ~ 0
Nix4_8
Text Label 10250 6200 2    60   ~ 0
Nix4_9
Text Label 10250 6300 2    60   ~ 0
Nix4_0
Text Label 9450 5400 0    60   ~ 0
Nix4_0
Text Label 9450 5500 0    60   ~ 0
Nix4_1
Text Label 9450 5600 0    60   ~ 0
Nix4_5
Text Label 9450 5700 0    60   ~ 0
Nix4_4
Text Label 9450 5900 0    60   ~ 0
Nix4_6
Text Label 9450 6000 0    60   ~ 0
Nix4_7
Text Label 9450 6100 0    60   ~ 0
Nix4_3
Text Label 8550 5400 2    60   ~ 0
Nix4_8
Text Label 8550 5500 2    60   ~ 0
Nix4_9
Text Label 8550 6100 2    60   ~ 0
Nix4_2
$Comp
L +5V #PWR010
U 1 1 55B2AEB5
P 8150 5800
F 0 "#PWR010" H 8150 5650 50  0001 C CNN
F 1 "+5V" H 8150 5940 50  0000 C CNN
F 2 "" H 8150 5800 60  0000 C CNN
F 3 "" H 8150 5800 60  0000 C CNN
	1    8150 5800
	1    0    0    -1  
$EndComp
Text Label 7050 900  2    60   ~ 0
Nix5_1
Text Label 7050 1000 2    60   ~ 0
Nix5_2
Text Label 7050 1100 2    60   ~ 0
Nix5_3
Text Label 7050 1200 2    60   ~ 0
Nix5_4
Text Label 7050 1300 2    60   ~ 0
Nix5_5
Text Label 7050 1400 2    60   ~ 0
Nix5_6
Text Label 7050 1500 2    60   ~ 0
Nix5_7
Text Label 7050 1600 2    60   ~ 0
Nix5_8
Text Label 7050 1700 2    60   ~ 0
Nix5_9
Text Label 7050 1800 2    60   ~ 0
Nix5_0
Text Label 6250 900  0    60   ~ 0
Nix5_0
Text Label 6250 1000 0    60   ~ 0
Nix5_1
Text Label 6250 1100 0    60   ~ 0
Nix5_5
Text Label 6250 1200 0    60   ~ 0
Nix5_4
Text Label 6250 1400 0    60   ~ 0
Nix5_6
Text Label 6250 1500 0    60   ~ 0
Nix5_7
Text Label 6250 1600 0    60   ~ 0
Nix5_3
Text Label 5350 1600 2    60   ~ 0
Nix5_2
Text Label 5350 900  2    60   ~ 0
Nix5_8
Text Label 5350 1000 2    60   ~ 0
Nix5_9
$Comp
L GND #PWR011
U 1 1 55B2C3E9
P 6250 1300
F 0 "#PWR011" H 6250 1050 50  0001 C CNN
F 1 "GND" H 6250 1150 50  0000 C CNN
F 2 "" H 6250 1300 60  0000 C CNN
F 3 "" H 6250 1300 60  0000 C CNN
	1    6250 1300
	0    -1   -1   0   
$EndComp
Text Label 7050 2400 2    60   ~ 0
Nix6_1
Text Label 7050 2500 2    60   ~ 0
Nix6_2
Text Label 7050 2600 2    60   ~ 0
Nix6_3
Text Label 7050 2700 2    60   ~ 0
Nix6_4
Text Label 7050 2800 2    60   ~ 0
Nix6_5
Text Label 7050 2900 2    60   ~ 0
Nix6_6
Text Label 7050 3000 2    60   ~ 0
Nix6_7
Text Label 7050 3100 2    60   ~ 0
Nix6_8
Text Label 7050 3200 2    60   ~ 0
Nix6_9
Text Label 7050 3300 2    60   ~ 0
Nix6_0
Text Label 6250 2400 0    60   ~ 0
Nix6_0
Text Label 6250 2500 0    60   ~ 0
Nix6_1
Text Label 6250 2600 0    60   ~ 0
Nix6_5
Text Label 6250 2700 0    60   ~ 0
Nix6_4
Text Label 6250 2900 0    60   ~ 0
Nix6_6
Text Label 6250 3000 0    60   ~ 0
Nix6_7
Text Label 6250 3100 0    60   ~ 0
Nix6_3
Text Label 5350 2400 2    60   ~ 0
Nix6_8
Text Label 5350 2500 2    60   ~ 0
Nix6_9
Text Label 5350 3100 2    60   ~ 0
Nix6_2
$Comp
L GND #PWR012
U 1 1 55B2CD1E
P 6250 2800
F 0 "#PWR012" H 6250 2550 50  0001 C CNN
F 1 "GND" H 6250 2650 50  0000 C CNN
F 2 "" H 6250 2800 60  0000 C CNN
F 3 "" H 6250 2800 60  0000 C CNN
	1    6250 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 1650 3600 1650
Wire Wire Line
	3450 1750 3600 1750
Wire Wire Line
	3450 1850 3600 1850
$Comp
L C C3
U 1 1 55B2D6E0
P 1400 1350
F 0 "C3" H 1425 1450 50  0000 L CNN
F 1 "100nF" H 1425 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1438 1200 30  0001 C CNN
F 3 "" H 1400 1350 60  0000 C CNN
	1    1400 1350
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 55B2D75B
P 1400 1450
F 0 "C4" H 1425 1550 50  0000 L CNN
F 1 "100nF" H 1425 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1438 1300 30  0001 C CNN
F 3 "" H 1400 1450 60  0000 C CNN
	1    1400 1450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 55B2D7EB
P 1250 1350
F 0 "#PWR013" H 1250 1100 50  0001 C CNN
F 1 "GND" H 1250 1200 50  0000 C CNN
F 2 "" H 1250 1350 60  0000 C CNN
F 3 "" H 1250 1350 60  0000 C CNN
	1    1250 1350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 55B2D94C
P 1250 1450
F 0 "#PWR014" H 1250 1200 50  0001 C CNN
F 1 "GND" H 1250 1300 50  0000 C CNN
F 2 "" H 1250 1450 60  0000 C CNN
F 3 "" H 1250 1450 60  0000 C CNN
	1    1250 1450
	0    1    1    0   
$EndComp
$Comp
L SN74AHC594 IC8
U 1 1 55B2E91E
P 6800 6000
F 0 "IC8" H 6800 6450 60  0000 C CNN
F 1 "SN74AHC594" H 6800 5550 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 6750 6500 60  0001 C CNN
F 3 "" H 6750 6500 60  0000 C CNN
	1    6800 6000
	1    0    0    -1  
$EndComp
$Comp
L SN74AHC594 IC7
U 1 1 55B2E9EE
P 6800 5000
F 0 "IC7" H 6800 5450 60  0000 C CNN
F 1 "SN74AHC594" H 6800 4550 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 6750 5500 60  0001 C CNN
F 3 "" H 6750 5500 60  0000 C CNN
	1    6800 5000
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 55B29CED
P 10100 700
F 0 "R11" V 10180 700 50  0000 C CNN
F 1 "R180k" V 10100 700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10030 700 30  0001 C CNN
F 3 "" H 10100 700 30  0000 C CNN
	1    10100 700 
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 55B2A06E
P 10100 2200
F 0 "R12" V 10180 2200 50  0000 C CNN
F 1 "R180k" V 10100 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10030 2200 30  0001 C CNN
F 3 "" H 10100 2200 30  0000 C CNN
	1    10100 2200
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 55B2A0F8
P 6900 700
F 0 "R9" V 6980 700 50  0000 C CNN
F 1 "R180k" V 6900 700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6830 700 30  0001 C CNN
F 3 "" H 6900 700 30  0000 C CNN
	1    6900 700 
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 55B2A1B3
P 10100 3700
F 0 "R13" V 10180 3700 50  0000 C CNN
F 1 "R180k" V 10100 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10030 3700 30  0001 C CNN
F 3 "" H 10100 3700 30  0000 C CNN
	1    10100 3700
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 55B2A38D
P 6900 2200
F 0 "R10" V 6980 2200 50  0000 C CNN
F 1 "R180k" V 6900 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6830 2200 30  0001 C CNN
F 3 "" H 6900 2200 30  0000 C CNN
	1    6900 2200
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 55B2A432
P 10100 5200
F 0 "R14" V 10180 5200 50  0000 C CNN
F 1 "R180k" V 10100 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10030 5200 30  0001 C CNN
F 3 "" H 10100 5200 30  0000 C CNN
	1    10100 5200
	0    1    1    0   
$EndComp
Text Label 9950 700  2    60   ~ 0
180V
Text Label 9950 2200 2    60   ~ 0
180V
Text Label 6750 700  2    60   ~ 0
180V
Text Label 9950 3700 2    60   ~ 0
180V
Text Label 9950 5200 2    60   ~ 0
180V
$Comp
L SN74AHC594 IC6
U 1 1 55B2B0F0
P 6800 4000
F 0 "IC6" H 6800 4450 60  0000 C CNN
F 1 "SN74AHC594" H 6800 3550 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 6750 4500 60  0001 C CNN
F 3 "" H 6750 4500 60  0000 C CNN
	1    6800 4000
	1    0    0    -1  
$EndComp
NoConn ~ 10250 5300
NoConn ~ 10250 6400
NoConn ~ 10250 3800
NoConn ~ 10250 4900
NoConn ~ 10250 2300
NoConn ~ 10250 3400
NoConn ~ 10250 800 
NoConn ~ 10250 1900
NoConn ~ 7050 2300
NoConn ~ 7050 3400
NoConn ~ 7050 1900
NoConn ~ 7050 800 
$Comp
L C C18
U 1 1 55B2D7B9
P 8150 5950
F 0 "C18" H 8175 6050 50  0000 L CNN
F 1 "100nF" H 8175 5850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8188 5800 30  0001 C CNN
F 3 "" H 8150 5950 60  0000 C CNN
	1    8150 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 5800 8550 5800
$Comp
L GND #PWR015
U 1 1 55B2DC4C
P 8150 6100
F 0 "#PWR015" H 8150 5850 50  0001 C CNN
F 1 "GND" H 8150 5950 50  0000 C CNN
F 2 "" H 8150 6100 60  0000 C CNN
F 3 "" H 8150 6100 60  0000 C CNN
	1    8150 6100
	1    0    0    -1  
$EndComp
Text Label 8550 5600 2    60   ~ 0
Nix4_A
Text Label 8550 5700 2    60   ~ 0
Nix4_D
Text Label 8550 5900 2    60   ~ 0
Nix4_B
Text Label 8550 6000 2    60   ~ 0
Nix4_C
$Comp
L +5V #PWR016
U 1 1 55B2F3B6
P 8150 4300
F 0 "#PWR016" H 8150 4150 50  0001 C CNN
F 1 "+5V" H 8150 4440 50  0000 C CNN
F 2 "" H 8150 4300 60  0000 C CNN
F 3 "" H 8150 4300 60  0000 C CNN
	1    8150 4300
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 55B2F3BC
P 8150 4450
F 0 "C17" H 8175 4550 50  0000 L CNN
F 1 "100nF" H 8175 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8188 4300 30  0001 C CNN
F 3 "" H 8150 4450 60  0000 C CNN
	1    8150 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 4300 8550 4300
$Comp
L GND #PWR017
U 1 1 55B2F3C3
P 8150 4600
F 0 "#PWR017" H 8150 4350 50  0001 C CNN
F 1 "GND" H 8150 4450 50  0000 C CNN
F 2 "" H 8150 4600 60  0000 C CNN
F 3 "" H 8150 4600 60  0000 C CNN
	1    8150 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR018
U 1 1 55B2F44A
P 8150 2800
F 0 "#PWR018" H 8150 2650 50  0001 C CNN
F 1 "+5V" H 8150 2940 50  0000 C CNN
F 2 "" H 8150 2800 60  0000 C CNN
F 3 "" H 8150 2800 60  0000 C CNN
	1    8150 2800
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 55B2F450
P 8150 2950
F 0 "C16" H 8175 3050 50  0000 L CNN
F 1 "100nF" H 8175 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8188 2800 30  0001 C CNN
F 3 "" H 8150 2950 60  0000 C CNN
	1    8150 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 2800 8550 2800
$Comp
L GND #PWR019
U 1 1 55B2F457
P 8150 3100
F 0 "#PWR019" H 8150 2850 50  0001 C CNN
F 1 "GND" H 8150 2950 50  0000 C CNN
F 2 "" H 8150 3100 60  0000 C CNN
F 3 "" H 8150 3100 60  0000 C CNN
	1    8150 3100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 55B2F81C
P 8150 1300
F 0 "#PWR020" H 8150 1150 50  0001 C CNN
F 1 "+5V" H 8150 1440 50  0000 C CNN
F 2 "" H 8150 1300 60  0000 C CNN
F 3 "" H 8150 1300 60  0000 C CNN
	1    8150 1300
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 55B2F822
P 8150 1450
F 0 "C15" H 8175 1550 50  0000 L CNN
F 1 "100nF" H 8175 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8188 1300 30  0001 C CNN
F 3 "" H 8150 1450 60  0000 C CNN
	1    8150 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 1300 8550 1300
$Comp
L GND #PWR021
U 1 1 55B2F829
P 8150 1600
F 0 "#PWR021" H 8150 1350 50  0001 C CNN
F 1 "GND" H 8150 1450 50  0000 C CNN
F 2 "" H 8150 1600 60  0000 C CNN
F 3 "" H 8150 1600 60  0000 C CNN
	1    8150 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 55B2F8B8
P 4950 1300
F 0 "#PWR022" H 4950 1150 50  0001 C CNN
F 1 "+5V" H 4950 1440 50  0000 C CNN
F 2 "" H 4950 1300 60  0000 C CNN
F 3 "" H 4950 1300 60  0000 C CNN
	1    4950 1300
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 55B2F8BE
P 4950 1450
F 0 "C10" H 4975 1550 50  0000 L CNN
F 1 "100nF" H 4975 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4988 1300 30  0001 C CNN
F 3 "" H 4950 1450 60  0000 C CNN
	1    4950 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 1300 5350 1300
$Comp
L GND #PWR023
U 1 1 55B2F8C5
P 4950 1600
F 0 "#PWR023" H 4950 1350 50  0001 C CNN
F 1 "GND" H 4950 1450 50  0000 C CNN
F 2 "" H 4950 1600 60  0000 C CNN
F 3 "" H 4950 1600 60  0000 C CNN
	1    4950 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 55B2F952
P 4950 2800
F 0 "#PWR024" H 4950 2650 50  0001 C CNN
F 1 "+5V" H 4950 2940 50  0000 C CNN
F 2 "" H 4950 2800 60  0000 C CNN
F 3 "" H 4950 2800 60  0000 C CNN
	1    4950 2800
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 55B2F958
P 4950 2950
F 0 "C11" H 4975 3050 50  0000 L CNN
F 1 "100nF" H 4975 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4988 2800 30  0001 C CNN
F 3 "" H 4950 2950 60  0000 C CNN
	1    4950 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 2800 5350 2800
$Comp
L GND #PWR025
U 1 1 55B2F95F
P 4950 3100
F 0 "#PWR025" H 4950 2850 50  0001 C CNN
F 1 "GND" H 4950 2950 50  0000 C CNN
F 2 "" H 4950 3100 60  0000 C CNN
F 3 "" H 4950 3100 60  0000 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
Text Label 8550 1100 2    60   ~ 0
Nix1_A
Text Label 8550 1200 2    60   ~ 0
Nix1_D
Text Label 8550 1400 2    60   ~ 0
Nix1_B
Text Label 8550 1500 2    60   ~ 0
Nix1_C
Text Label 8550 2600 2    60   ~ 0
Nix2_A
Text Label 8550 2700 2    60   ~ 0
Nix2_D
Text Label 8550 2900 2    60   ~ 0
Nix2_B
Text Label 8550 3000 2    60   ~ 0
Nix2_C
Text Label 8550 4100 2    60   ~ 0
Nix3_A
Text Label 8550 4200 2    60   ~ 0
Nix3_D
Text Label 8550 4400 2    60   ~ 0
Nix3_B
Text Label 8550 4500 2    60   ~ 0
Nix3_C
Text Label 5350 1100 2    60   ~ 0
Nix5_A
Text Label 5350 1200 2    60   ~ 0
Nix5_D
Text Label 5350 1400 2    60   ~ 0
Nix5_B
Text Label 5350 1500 2    60   ~ 0
Nix5_C
Text Label 5350 2600 2    60   ~ 0
Nix6_A
Text Label 5350 2700 2    60   ~ 0
Nix6_D
Text Label 5350 2900 2    60   ~ 0
Nix6_B
Text Label 5350 3000 2    60   ~ 0
Nix6_C
Wire Wire Line
	1550 3450 1550 3650
Connection ~ 1550 3550
Text Label 6350 6250 2    60   ~ 0
Nix6_A
Text Label 6350 6150 2    60   ~ 0
Nix6_B
Text Label 6350 6050 2    60   ~ 0
Nix6_C
Text Label 6350 5950 2    60   ~ 0
Nix6_D
Text Label 6350 5850 2    60   ~ 0
Nix5_A
Text Label 6350 5750 2    60   ~ 0
Nix5_B
Text Label 6350 5650 2    60   ~ 0
Nix5_C
Text Label 7450 5750 0    60   ~ 0
Nix5_D
Text Label 6350 5250 2    60   ~ 0
Nix4_A
Text Label 6350 5150 2    60   ~ 0
Nix4_B
Text Label 6350 5050 2    60   ~ 0
Nix4_C
Text Label 6350 4950 2    60   ~ 0
Nix4_D
Text Label 6350 4850 2    60   ~ 0
Nix3_A
Text Label 6350 4750 2    60   ~ 0
Nix3_B
Text Label 6350 4650 2    60   ~ 0
Nix3_C
Text Label 7450 4750 0    60   ~ 0
Nix3_D
Text Label 6350 4250 2    60   ~ 0
Nix2_A
Text Label 6350 4150 2    60   ~ 0
Nix2_B
Text Label 6350 4050 2    60   ~ 0
Nix2_C
Text Label 6350 3950 2    60   ~ 0
Nix2_D
Text Label 6350 3850 2    60   ~ 0
Nix1_A
Text Label 6350 3750 2    60   ~ 0
Nix1_B
Text Label 6350 3650 2    60   ~ 0
Nix1_C
Text Label 7250 3750 0    60   ~ 0
Nix1_D
Text Label 7250 3850 0    60   ~ 0
Ser_IN
Text Label 7250 4150 0    60   ~ 0
Ser_CLK
Text Label 7250 4050 0    60   ~ 0
Ser_RCLK
Wire Wire Line
	7250 3950 7300 3950
Wire Wire Line
	7300 3650 7300 4250
Wire Wire Line
	7250 3650 7750 3650
Wire Wire Line
	7300 4250 7250 4250
Connection ~ 7300 3950
Wire Wire Line
	7250 4350 7300 4350
Wire Wire Line
	7300 4350 7300 4850
Wire Wire Line
	7300 4850 7250 4850
Wire Wire Line
	7250 5350 7300 5350
Wire Wire Line
	7300 5350 7300 5850
Wire Wire Line
	7300 5850 7250 5850
Wire Wire Line
	7250 4050 7350 4050
Wire Wire Line
	7350 4050 7350 6050
Wire Wire Line
	7350 5050 7250 5050
Connection ~ 7350 5050
Wire Wire Line
	7250 4150 7400 4150
Wire Wire Line
	7400 4150 7400 6150
Wire Wire Line
	7400 5150 7250 5150
Wire Wire Line
	7400 6150 7250 6150
Connection ~ 7400 5150
Wire Wire Line
	7250 4650 7250 5250
Connection ~ 7250 4950
Wire Wire Line
	7350 6050 7250 6050
Wire Wire Line
	7250 5650 7250 6250
Connection ~ 7250 5950
$Comp
L GND #PWR026
U 1 1 55B34460
P 6350 4350
F 0 "#PWR026" H 6350 4100 50  0001 C CNN
F 1 "GND" H 6350 4200 50  0000 C CNN
F 2 "" H 6350 4350 60  0000 C CNN
F 3 "" H 6350 4350 60  0000 C CNN
	1    6350 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR027
U 1 1 55B344D0
P 6350 5350
F 0 "#PWR027" H 6350 5100 50  0001 C CNN
F 1 "GND" H 6350 5200 50  0000 C CNN
F 2 "" H 6350 5350 60  0000 C CNN
F 3 "" H 6350 5350 60  0000 C CNN
	1    6350 5350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 55B3453E
P 6350 6350
F 0 "#PWR028" H 6350 6100 50  0001 C CNN
F 1 "GND" H 6350 6200 50  0000 C CNN
F 2 "" H 6350 6350 60  0000 C CNN
F 3 "" H 6350 6350 60  0000 C CNN
	1    6350 6350
	0    1    1    0   
$EndComp
NoConn ~ 7250 6350
$Comp
L C C12
U 1 1 55B34695
P 7750 3800
F 0 "C12" H 7775 3900 50  0000 L CNN
F 1 "100nF" H 7775 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7788 3650 30  0001 C CNN
F 3 "" H 7750 3800 60  0000 C CNN
	1    7750 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 55B3475F
P 7750 3650
F 0 "#PWR029" H 7750 3500 50  0001 C CNN
F 1 "+5V" H 7750 3790 50  0000 C CNN
F 2 "" H 7750 3650 60  0000 C CNN
F 3 "" H 7750 3650 60  0000 C CNN
	1    7750 3650
	0    1    1    0   
$EndComp
Connection ~ 7300 3650
$Comp
L GND #PWR030
U 1 1 55B3481B
P 7750 3950
F 0 "#PWR030" H 7750 3700 50  0001 C CNN
F 1 "GND" H 7750 3800 50  0000 C CNN
F 2 "" H 7750 3950 60  0000 C CNN
F 3 "" H 7750 3950 60  0000 C CNN
	1    7750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4650 7750 4650
$Comp
L C C13
U 1 1 55B348C8
P 7750 4800
F 0 "C13" H 7775 4900 50  0000 L CNN
F 1 "100nF" H 7775 4700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7788 4650 30  0001 C CNN
F 3 "" H 7750 4800 60  0000 C CNN
	1    7750 4800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR031
U 1 1 55B348CE
P 7750 4650
F 0 "#PWR031" H 7750 4500 50  0001 C CNN
F 1 "+5V" H 7750 4790 50  0000 C CNN
F 2 "" H 7750 4650 60  0000 C CNN
F 3 "" H 7750 4650 60  0000 C CNN
	1    7750 4650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR032
U 1 1 55B348D4
P 7750 4950
F 0 "#PWR032" H 7750 4700 50  0001 C CNN
F 1 "GND" H 7750 4800 50  0000 C CNN
F 2 "" H 7750 4950 60  0000 C CNN
F 3 "" H 7750 4950 60  0000 C CNN
	1    7750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5650 7750 5650
$Comp
L C C14
U 1 1 55B34954
P 7750 5800
F 0 "C14" H 7775 5900 50  0000 L CNN
F 1 "100nF" H 7775 5700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7788 5650 30  0001 C CNN
F 3 "" H 7750 5800 60  0000 C CNN
	1    7750 5800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR033
U 1 1 55B3495A
P 7750 5650
F 0 "#PWR033" H 7750 5500 50  0001 C CNN
F 1 "+5V" H 7750 5790 50  0000 C CNN
F 2 "" H 7750 5650 60  0000 C CNN
F 3 "" H 7750 5650 60  0000 C CNN
	1    7750 5650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR034
U 1 1 55B34960
P 7750 5950
F 0 "#PWR034" H 7750 5700 50  0001 C CNN
F 1 "GND" H 7750 5800 50  0000 C CNN
F 2 "" H 7750 5950 60  0000 C CNN
F 3 "" H 7750 5950 60  0000 C CNN
	1    7750 5950
	1    0    0    -1  
$EndComp
$Comp
L GPS U2
U 1 1 55B380BD
P 4450 2900
F 0 "U2" H 4450 2900 60  0000 C CNN
F 1 "GPS" H 4450 2200 60  0000 C CNN
F 2 "NixieProjFootprints:EM406gps" H 4450 2900 60  0001 C CNN
F 3 "" H 4450 2900 60  0000 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 55B38638
P 4150 3400
F 0 "#PWR035" H 4150 3150 50  0001 C CNN
F 1 "GND" H 4150 3250 50  0000 C CNN
F 2 "" H 4150 3400 60  0000 C CNN
F 3 "" H 4150 3400 60  0000 C CNN
	1    4150 3400
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR036
U 1 1 55B386B2
P 4150 3100
F 0 "#PWR036" H 4150 2950 50  0001 C CNN
F 1 "+5V" H 4150 3240 50  0000 C CNN
F 2 "" H 4150 3100 60  0000 C CNN
F 3 "" H 4150 3100 60  0000 C CNN
	1    4150 3100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR037
U 1 1 55B3872C
P 4150 3000
F 0 "#PWR037" H 4150 2750 50  0001 C CNN
F 1 "GND" H 4150 2850 50  0000 C CNN
F 2 "" H 4150 3000 60  0000 C CNN
F 3 "" H 4150 3000 60  0000 C CNN
	1    4150 3000
	0    1    1    0   
$EndComp
NoConn ~ 4150 3500
Wire Wire Line
	3450 2950 3900 2950
Wire Wire Line
	3900 2950 3900 3300
Wire Wire Line
	3900 3300 4150 3300
Wire Wire Line
	3450 3050 3850 3050
Wire Wire Line
	3850 3050 3850 3200
Wire Wire Line
	3850 3200 4150 3200
$Comp
L CONN_01X02 P1
U 1 1 55B39CA5
P 800 4100
F 0 "P1" H 800 4250 50  0000 C CNN
F 1 "CONN_01X02" V 900 4100 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 800 4100 60  0001 C CNN
F 3 "" H 800 4100 60  0000 C CNN
	1    800  4100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR038
U 1 1 55B39EA0
P 1000 4050
F 0 "#PWR038" H 1000 3800 50  0001 C CNN
F 1 "GND" H 1000 3900 50  0000 C CNN
F 2 "" H 1000 4050 60  0000 C CNN
F 3 "" H 1000 4050 60  0000 C CNN
	1    1000 4050
	0    -1   -1   0   
$EndComp
Text Label 1000 4150 0    60   ~ 0
12V
$Comp
L MAX1771 IC2
U 1 1 55B3AAC4
P 2350 5350
F 0 "IC2" H 2350 5650 60  0000 C CNN
F 1 "MAX1771" H 2350 5050 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 2400 5700 60  0001 C CNN
F 3 "" H 2400 5700 60  0000 C CNN
	1    2350 5350
	1    0    0    -1  
$EndComp
Text Label 1900 5300 2    60   ~ 0
SHDN
Text Label 3450 3650 0    60   ~ 0
SHDN
Text Label 1100 5200 2    60   ~ 0
12V
$Comp
L GND #PWR039
U 1 1 55B3C1C7
P 1900 5500
F 0 "#PWR039" H 1900 5250 50  0001 C CNN
F 1 "GND" H 1900 5350 50  0000 C CNN
F 2 "" H 1900 5500 60  0000 C CNN
F 3 "" H 1900 5500 60  0000 C CNN
	1    1900 5500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR040
U 1 1 55B3C247
P 2800 5500
F 0 "#PWR040" H 2800 5250 50  0001 C CNN
F 1 "GND" H 2800 5350 50  0000 C CNN
F 2 "" H 2800 5500 60  0000 C CNN
F 3 "" H 2800 5500 60  0000 C CNN
	1    2800 5500
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 55B3C363
P 1550 5550
F 0 "C6" H 1575 5650 50  0000 L CNN
F 1 "100nF" H 1575 5450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1588 5400 30  0001 C CNN
F 3 "" H 1550 5550 60  0000 C CNN
	1    1550 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 5400 1900 5400
$Comp
L GND #PWR041
U 1 1 55B3C500
P 1550 5700
F 0 "#PWR041" H 1550 5450 50  0001 C CNN
F 1 "GND" H 1550 5550 50  0000 C CNN
F 2 "" H 1550 5700 60  0000 C CNN
F 3 "" H 1550 5700 60  0000 C CNN
	1    1550 5700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55B3C583
P 1350 5550
F 0 "C2" H 1375 5650 50  0000 L CNN
F 1 "100nF" H 1375 5450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1388 5400 30  0001 C CNN
F 3 "" H 1350 5550 60  0000 C CNN
	1    1350 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 5200 1900 5200
Wire Wire Line
	1350 4150 1350 5400
Wire Wire Line
	1100 5700 1550 5700
$Comp
L CP C1
U 1 1 55B3C6A5
P 1100 5550
F 0 "C1" H 1125 5650 50  0000 L CNN
F 1 "10uF,25V" H 1125 5450 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeC_EIA-6032_HandSoldering" H 1138 5400 30  0001 C CNN
F 3 "" H 1100 5550 60  0000 C CNN
	1    1100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5200 1100 5400
Connection ~ 1350 5200
Connection ~ 1350 5700
$Comp
L INDUCTOR L1
U 1 1 55B3C82A
P 2300 4750
F 0 "L1" V 2250 4750 50  0000 C CNN
F 1 "100uH" V 2400 4750 50  0000 C CNN
F 2 "NixieProjFootprints:Inductor" H 2300 4750 60  0001 C CNN
F 3 "" H 2300 4750 60  0000 C CNN
	1    2300 4750
	0    1    1    0   
$EndComp
$Comp
L CP C7
U 1 1 55B3C992
P 2000 4900
F 0 "C7" H 2025 5000 50  0000 L CNN
F 1 "100uF,35V" H 2025 4800 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeE_EIA-7360_HandSoldering" H 2038 4750 30  0001 C CNN
F 3 "" H 2000 4900 60  0000 C CNN
	1    2000 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 55B3CA5A
P 2000 5050
F 0 "#PWR042" H 2000 4800 50  0001 C CNN
F 1 "GND" H 2000 4900 50  0000 C CNN
F 2 "" H 2000 5050 60  0000 C CNN
F 3 "" H 2000 5050 60  0000 C CNN
	1    2000 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 5200 1700 4750
Wire Wire Line
	1700 4750 2000 4750
Connection ~ 1700 5200
$Comp
L R R3
U 1 1 55B3CC7A
P 3150 5550
F 0 "R3" V 3230 5550 50  0000 C CNN
F 1 "0R050" V 3150 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 3080 5550 30  0001 C CNN
F 3 "" H 3150 5550 30  0000 C CNN
	1    3150 5550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR043
U 1 1 55B3CDC2
P 3150 5700
F 0 "#PWR043" H 3150 5450 50  0001 C CNN
F 1 "GND" H 3150 5550 50  0000 C CNN
F 2 "" H 3150 5700 60  0000 C CNN
F 3 "" H 3150 5700 60  0000 C CNN
	1    3150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5300 3150 5300
Wire Wire Line
	3150 5300 3150 5400
$Comp
L Q_NMOS_DGS Q1
U 1 1 55B3CE91
P 3050 5100
F 0 "Q1" H 3350 5150 50  0000 R CNN
F 1 "Q_NMOS_DGS" H 3700 5050 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 3250 5200 29  0001 C CNN
F 3 "" H 3050 5100 60  0000 C CNN
	1    3050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5100 2800 5100
Wire Wire Line
	2800 5100 2800 5200
Wire Wire Line
	2600 4750 3150 4750
Wire Wire Line
	3150 4750 3150 4900
$Comp
L D D1
U 1 1 55B3D119
P 3300 4750
F 0 "D1" H 3300 4850 50  0000 C CNN
F 1 "D" H 3300 4650 50  0000 C CNN
F 2 "Diodes_SMD:Diode-MELF_Handsoldering" H 3300 4750 60  0001 C CNN
F 3 "" H 3300 4750 60  0000 C CNN
	1    3300 4750
	-1   0    0    1   
$EndComp
$Comp
L CP C8
U 1 1 55B3D2A3
P 3750 5000
F 0 "C8" H 3775 5100 50  0000 L CNN
F 1 "4u7,250V" H 3775 4900 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_10x10" H 3788 4850 30  0001 C CNN
F 3 "" H 3750 5000 60  0000 C CNN
	1    3750 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 55B3D3E5
P 3750 5150
F 0 "#PWR044" H 3750 4900 50  0001 C CNN
F 1 "GND" H 3750 5000 50  0000 C CNN
F 2 "" H 3750 5150 60  0000 C CNN
F 3 "" H 3750 5150 60  0000 C CNN
	1    3750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4850 4750 4850
$Comp
L R R5
U 1 1 55B3D4F1
P 4200 5000
F 0 "R5" V 4280 5000 50  0000 C CNN
F 1 "1M5" V 4200 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 4130 5000 30  0001 C CNN
F 3 "" H 4200 5000 30  0000 C CNN
	1    4200 5000
	-1   0    0    1   
$EndComp
Connection ~ 3750 4850
$Comp
L C C9
U 1 1 55B3D70A
P 4550 5000
F 0 "C9" H 4575 5100 50  0000 L CNN
F 1 "100nF,250V" H 4575 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 4588 4850 30  0001 C CNN
F 3 "" H 4550 5000 60  0000 C CNN
	1    4550 5000
	-1   0    0    1   
$EndComp
Connection ~ 4200 4850
$Comp
L GND #PWR045
U 1 1 55B3D9D0
P 4550 5150
F 0 "#PWR045" H 4550 4900 50  0001 C CNN
F 1 "GND" H 4550 5000 50  0000 C CNN
F 2 "" H 4550 5150 60  0000 C CNN
F 3 "" H 4550 5150 60  0000 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
Connection ~ 4550 4850
Text Label 4750 4850 0    60   ~ 0
180V
$Comp
L R R6
U 1 1 55B3DC84
P 4200 6050
F 0 "R6" V 4280 6050 50  0000 C CNN
F 1 "10k" V 4200 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4130 6050 30  0001 C CNN
F 3 "" H 4200 6050 30  0000 C CNN
	1    4200 6050
	-1   0    0    1   
$EndComp
$Comp
L POT RV1
U 1 1 55B3DDC0
P 4200 5650
F 0 "RV1" H 4200 5550 50  0000 C CNN
F 1 "POT" H 4200 5650 50  0000 C CNN
F 2 "NixieProjFootprints:TrimPot" H 4200 5650 60  0001 C CNN
F 3 "" H 4200 5650 60  0000 C CNN
	1    4200 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 5400 4200 5400
Wire Wire Line
	4200 5400 4200 5150
Wire Wire Line
	4350 5650 4350 5900
Wire Wire Line
	4350 5900 4200 5900
$Comp
L GND #PWR046
U 1 1 55B3E35E
P 4200 6200
F 0 "#PWR046" H 4200 5950 50  0001 C CNN
F 1 "GND" H 4200 6050 50  0000 C CNN
F 2 "" H 4200 6200 60  0000 C CNN
F 3 "" H 4200 6200 60  0000 C CNN
	1    4200 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 55B3E692
P 1900 4500
F 0 "#PWR047" H 1900 4250 50  0001 C CNN
F 1 "GND" H 1900 4350 50  0000 C CNN
F 2 "" H 1900 4500 60  0000 C CNN
F 3 "" H 1900 4500 60  0000 C CNN
	1    1900 4500
	1    0    0    -1  
$EndComp
Text Label 1500 4150 2    60   ~ 0
12V
$Comp
L +5V #PWR048
U 1 1 55B3E91B
P 2200 4150
F 0 "#PWR048" H 2200 4000 50  0001 C CNN
F 1 "+5V" H 2200 4290 50  0000 C CNN
F 2 "" H 2200 4150 60  0000 C CNN
F 3 "" H 2200 4150 60  0000 C CNN
	1    2200 4150
	1    0    0    -1  
$EndComp
$Comp
L DS3231M IC1
U 1 1 55B3FB75
P 2200 6800
F 0 "IC1" H 2200 7050 60  0000 C CNN
F 1 "DS3231M" H 2200 6550 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 2250 7100 60  0001 C CNN
F 3 "" H 2250 7100 60  0000 C CNN
	1    2200 6800
	1    0    0    -1  
$EndComp
NoConn ~ 1650 6650
$Comp
L GND #PWR049
U 1 1 55B4039E
P 2700 6950
F 0 "#PWR049" H 2700 6700 50  0001 C CNN
F 1 "GND" H 2700 6800 50  0000 C CNN
F 2 "" H 2700 6950 60  0000 C CNN
F 3 "" H 2700 6950 60  0000 C CNN
	1    2700 6950
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR050
U 1 1 55B40483
P 1450 6750
F 0 "#PWR050" H 1450 6600 50  0001 C CNN
F 1 "+5V" H 1450 6890 50  0000 C CNN
F 2 "" H 1450 6750 60  0000 C CNN
F 3 "" H 1450 6750 60  0000 C CNN
	1    1450 6750
	0    -1   -1   0   
$EndComp
NoConn ~ 1650 6850
NoConn ~ 1650 6950
$Comp
L CONN_01X02 P3
U 1 1 55B406B0
P 3300 6900
F 0 "P3" H 3300 7050 50  0000 C CNN
F 1 "Battery" V 3400 6900 50  0000 C CNN
F 2 "NixieProjFootprints:CR2032_BatHolder" H 3300 6900 60  0001 C CNN
F 3 "" H 3300 6900 60  0000 C CNN
	1    3300 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6850 3100 6850
Wire Wire Line
	2700 6950 2700 7000
Wire Wire Line
	2700 7000 3100 7000
Wire Wire Line
	3100 7000 3100 6950
$Comp
L R R1
U 1 1 55B40984
P 2800 6500
F 0 "R1" V 2880 6500 50  0000 C CNN
F 1 "4k7" V 2800 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2730 6500 30  0001 C CNN
F 3 "" H 2800 6500 30  0000 C CNN
	1    2800 6500
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 55B40A76
P 2900 6500
F 0 "R2" V 2980 6500 50  0000 C CNN
F 1 "4k7" V 2900 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2830 6500 30  0001 C CNN
F 3 "" H 2900 6500 30  0000 C CNN
	1    2900 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 6650 2800 6650
Wire Wire Line
	2700 6750 2900 6750
Wire Wire Line
	2900 6750 2900 6650
$Comp
L +5V #PWR051
U 1 1 55B40C48
P 2800 6350
F 0 "#PWR051" H 2800 6200 50  0001 C CNN
F 1 "+5V" H 2800 6490 50  0000 C CNN
F 2 "" H 2800 6350 60  0000 C CNN
F 3 "" H 2800 6350 60  0000 C CNN
	1    2800 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6350 2900 6350
Text Label 2900 6750 0    60   ~ 0
RTC_SDA
Text Label 2700 6650 1    60   ~ 0
RTC_SCL
Text Label 3450 2600 0    60   ~ 0
RTC_SDA
Text Label 3450 2700 0    60   ~ 0
RTC_SCL
Wire Wire Line
	1000 4150 1600 4150
Connection ~ 1350 4150
$Comp
L LED D3
U 1 1 55B42F29
P 4350 4100
F 0 "D3" H 4350 4200 50  0000 C CNN
F 1 "LED" H 4350 4000 50  0000 C CNN
F 2 "LEDs:LED-0805" H 4350 4100 60  0001 C CNN
F 3 "" H 4350 4100 60  0000 C CNN
	1    4350 4100
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 55B43170
P 4700 4100
F 0 "R8" V 4780 4100 50  0000 C CNN
F 1 "R250" V 4700 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4630 4100 30  0001 C CNN
F 3 "" H 4700 4100 30  0000 C CNN
	1    4700 4100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR052
U 1 1 55B43269
P 4850 4100
F 0 "#PWR052" H 4850 3850 50  0001 C CNN
F 1 "GND" H 4850 3950 50  0000 C CNN
F 2 "" H 4850 4100 60  0000 C CNN
F 3 "" H 4850 4100 60  0000 C CNN
	1    4850 4100
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 55B43478
P 4350 3900
F 0 "D2" H 4350 4000 50  0000 C CNN
F 1 "LED" H 4350 3800 50  0000 C CNN
F 2 "LEDs:LED-0805" H 4350 3900 60  0001 C CNN
F 3 "" H 4350 3900 60  0000 C CNN
	1    4350 3900
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 55B4347E
P 4700 3900
F 0 "R7" V 4780 3900 50  0000 C CNN
F 1 "R250" V 4700 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4630 3900 30  0001 C CNN
F 3 "" H 4700 3900 30  0000 C CNN
	1    4700 3900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR053
U 1 1 55B43484
P 4850 3900
F 0 "#PWR053" H 4850 3650 50  0001 C CNN
F 1 "GND" H 4850 3750 50  0000 C CNN
F 2 "" H 4850 3900 60  0000 C CNN
F 3 "" H 4850 3900 60  0000 C CNN
	1    4850 3900
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 55B4372B
P 4550 4350
F 0 "SW1" H 4700 4460 50  0000 C CNN
F 1 "SW_PUSH" H 4550 4270 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 4550 4350 60  0001 C CNN
F 3 "" H 4550 4350 60  0000 C CNN
	1    4550 4350
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 55B4385C
P 4550 4550
F 0 "SW2" H 4700 4660 50  0000 C CNN
F 1 "SW_PUSH" H 4550 4470 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 4550 4550 60  0001 C CNN
F 3 "" H 4550 4550 60  0000 C CNN
	1    4550 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 55B43937
P 4850 4350
F 0 "#PWR054" H 4850 4100 50  0001 C CNN
F 1 "GND" H 4850 4200 50  0000 C CNN
F 2 "" H 4850 4350 60  0000 C CNN
F 3 "" H 4850 4350 60  0000 C CNN
	1    4850 4350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR055
U 1 1 55B439FF
P 4850 4550
F 0 "#PWR055" H 4850 4300 50  0001 C CNN
F 1 "GND" H 4850 4400 50  0000 C CNN
F 2 "" H 4850 4550 60  0000 C CNN
F 3 "" H 4850 4550 60  0000 C CNN
	1    4850 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 3150 3800 3150
Wire Wire Line
	3800 3150 3800 3900
Wire Wire Line
	3800 3900 4150 3900
Wire Wire Line
	3450 3250 3750 3250
Wire Wire Line
	3750 3250 3750 4100
Wire Wire Line
	3750 4100 4150 4100
Wire Wire Line
	3450 3350 3700 3350
Wire Wire Line
	3700 3350 3700 4350
Wire Wire Line
	3700 4350 4250 4350
Wire Wire Line
	3450 3450 3650 3450
Wire Wire Line
	3650 3450 3650 4550
Wire Wire Line
	3650 4550 4250 4550
Wire Wire Line
	7250 4750 7450 4750
Wire Wire Line
	7250 5750 7450 5750
$Comp
L C C19
U 1 1 55B44361
P 1450 6900
F 0 "C19" H 1475 7000 50  0000 L CNN
F 1 "100nF" H 1475 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1488 6750 30  0001 C CNN
F 3 "" H 1450 6900 60  0000 C CNN
	1    1450 6900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 6750 1650 6750
$Comp
L GND #PWR056
U 1 1 55B44AD0
P 1450 7050
F 0 "#PWR056" H 1450 6800 50  0001 C CNN
F 1 "GND" H 1450 6900 50  0000 C CNN
F 2 "" H 1450 7050 60  0000 C CNN
F 3 "" H 1450 7050 60  0000 C CNN
	1    1450 7050
	1    0    0    -1  
$EndComp
Text Label 6750 2200 2    60   ~ 0
180V
Text Label 3450 2300 0    60   ~ 0
Ser_CLK
Text Label 3450 2400 0    60   ~ 0
Ser_RCLK
Text Label 3450 2200 0    60   ~ 0
Ser_IN
Wire Wire Line
	3450 4750 3450 4850
Text Label 3800 3050 2    60   ~ 0
GPS_Rx
Text Label 3800 2950 2    60   ~ 0
GPS_Tx
Text Label 3950 3900 0    60   ~ 0
LED1
Text Label 3950 4100 0    60   ~ 0
LED2
Text Label 3950 4350 0    60   ~ 0
SW1
Text Label 3950 4550 0    60   ~ 0
SW2
Text Label 2750 6850 0    60   ~ 0
Bat_Pos
$Comp
L 7805_Nix U1
U 1 1 55BEB930
P 1900 4050
F 0 "U1" H 1900 4250 60  0000 C CNN
F 1 "7805_Nix" H 1900 3500 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 1900 4050 60  0001 C CNN
F 3 "" H 1900 4050 60  0000 C CNN
	1    1900 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
