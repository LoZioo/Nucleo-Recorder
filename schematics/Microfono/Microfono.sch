EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Microfono"
Date "2019-12-03"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1200 2350 1200 2450
Wire Wire Line
	850  2350 1200 2350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DFFCD8F
P 850 2450
F 0 "#FLG0102" H 850 2525 50  0001 C CNN
F 1 "PWR_FLAG" V 850 2577 50  0000 L CNN
F 2 "" H 850 2450 50  0001 C CNN
F 3 "~" H 850 2450 50  0001 C CNN
	1    850  2450
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DFF097E
P 850 1100
F 0 "#FLG0101" H 850 1175 50  0001 C CNN
F 1 "PWR_FLAG" V 850 1227 50  0000 L CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "~" H 850 1100 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
Connection ~ 1200 1200
Wire Wire Line
	1200 1200 1200 1300
Wire Wire Line
	1200 1100 1200 1200
$Comp
L Device:R R1
U 1 1 5DE8C992
P 1200 1450
F 0 "R1" H 1130 1404 50  0000 R CNN
F 1 "1k" H 1130 1495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1130 1450 50  0001 C CNN
F 3 "~" H 1200 1450 50  0001 C CNN
	1    1200 1450
	-1   0    0    1   
$EndComp
Connection ~ 1200 1750
Wire Wire Line
	1200 1600 1200 1750
Wire Wire Line
	1200 1750 1200 1950
$Comp
L power:+9V #PWR0101
U 1 1 5DE8D513
P 1200 1100
F 0 "#PWR0101" H 1200 950 50  0001 C CNN
F 1 "+9V" H 1215 1273 50  0000 C CNN
F 2 "" H 1200 1100 50  0001 C CNN
F 3 "" H 1200 1100 50  0001 C CNN
	1    1200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5DE9A645
P 3200 1650
F 0 "C3" V 3455 1650 50  0000 C CNN
F 1 "4.7µF" V 3364 1650 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 3238 1500 50  0001 C CNN
F 3 "~" H 3200 1650 50  0001 C CNN
	1    3200 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DEA10E3
P 3500 2100
F 0 "#PWR0105" H 3500 1850 50  0001 C CNN
F 1 "GND" H 3505 1927 50  0000 C CNN
F 2 "" H 3500 2100 50  0001 C CNN
F 3 "" H 3500 2100 50  0001 C CNN
	1    3500 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DEA1723
P 4000 2100
F 0 "#PWR0106" H 4000 1850 50  0001 C CNN
F 1 "GND" H 4005 1927 50  0000 C CNN
F 2 "" H 4000 2100 50  0001 C CNN
F 3 "" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D1
U 1 1 5DEA2788
P 4000 1950
F 0 "D1" V 3954 2029 50  0000 L CNN
F 1 "1N5819" V 4045 2029 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4000 1775 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4000 1950 50  0001 C CNN
	1    4000 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 1650 3500 1650
Connection ~ 3500 1650
Wire Wire Line
	3500 1650 3500 1800
Wire Wire Line
	3500 1650 4000 1650
Wire Wire Line
	4000 1800 4000 1650
$Comp
L Device:R R2
U 1 1 5DE92016
P 1850 1750
F 0 "R2" V 1643 1750 50  0000 C CNN
F 1 "1k" V 1734 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1780 1750 50  0001 C CNN
F 3 "~" H 1850 1750 50  0001 C CNN
	1    1850 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 1750 2050 1750
$Comp
L Device:R R4
U 1 1 5DEABE14
P 1400 1200
F 0 "R4" V 1193 1200 50  0000 C CNN
F 1 "5k1" V 1284 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1330 1200 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1750 1200 1750
Wire Wire Line
	1600 1750 1700 1750
Wire Wire Line
	1550 1200 1600 1200
Wire Wire Line
	2100 1550 2100 1350
Wire Wire Line
	2100 1350 1600 1350
Wire Wire Line
	1600 1350 1600 1200
Connection ~ 1600 1200
Wire Wire Line
	1600 1200 1650 1200
Wire Wire Line
	2050 1750 2050 2100
Wire Wire Line
	2050 2450 2200 2450
Connection ~ 2050 1750
Wire Wire Line
	2050 1750 2000 1750
Wire Wire Line
	2500 2450 2700 2450
Wire Wire Line
	2700 2450 2700 2100
Wire Wire Line
	2200 2800 2050 2800
Wire Wire Line
	2050 2800 2050 2450
Connection ~ 2050 2450
Wire Wire Line
	2700 2450 2700 2800
Wire Wire Line
	2700 2800 2500 2800
Connection ~ 2700 2450
$Comp
L Device:R R3-2
U 1 1 5DE9E8E2
P 2350 2450
F 0 "R3-2" V 2250 2450 50  0000 C CNN
F 1 "100k" V 2150 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2280 2450 50  0001 C CNN
F 3 "~" H 2350 2450 50  0001 C CNN
	1    2350 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C1
U 1 1 5DE94E0B
P 1450 1750
F 0 "C1" V 1705 1750 50  0000 C CNN
F 1 "4.7µF" V 1614 1750 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 1488 1600 50  0001 C CNN
F 3 "~" H 1450 1750 50  0001 C CNN
	1    1450 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DED3A4F
P 1800 1200
F 0 "R5" V 1593 1200 50  0000 C CNN
F 1 "5k1" V 1684 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 1200 50  0001 C CNN
F 3 "~" H 1800 1200 50  0001 C CNN
	1    1800 1200
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener Z1
U 1 1 5DEA068D
P 4000 1400
F 0 "Z1" V 4046 1321 50  0000 R CNN
F 1 "3v" V 3955 1321 50  0000 R CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 4000 1400 50  0001 C CNN
F 3 "~" H 4000 1400 50  0001 C CNN
	1    4000 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1550 4000 1650
Connection ~ 4000 1650
Wire Wire Line
	4500 1650 4000 1650
Wire Wire Line
	1200 1200 1250 1200
$Comp
L power:GND #PWR0102
U 1 1 5DE8E8DE
P 1200 2450
F 0 "#PWR0102" H 1200 2200 50  0001 C CNN
F 1 "GND" H 1205 2277 50  0000 C CNN
F 2 "" H 1200 2450 50  0001 C CNN
F 3 "" H 1200 2450 50  0001 C CNN
	1    1200 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Microphone_Condenser MIC1
U 1 1 5DE8BCC8
P 1200 2150
F 0 "MIC1" H 1330 2196 50  0001 L CNN
F 1 "Microphone" H 1330 2150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" V 1200 2250 50  0001 C CNN
F 3 "~" V 1200 2250 50  0001 C CNN
	1    1200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1550 3500 1650
$Comp
L Device:R R6
U 1 1 5DE9BD5F
P 3500 1400
F 0 "R6" H 3430 1354 50  0000 R CNN
F 1 "10k" H 3430 1445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 1400 50  0001 C CNN
F 3 "~" H 3500 1400 50  0001 C CNN
	1    3500 1400
	-1   0    0    1   
$EndComp
$Comp
L power:+9V #PWR0107
U 1 1 5DEA3B37
P 2300 1050
F 0 "#PWR0107" H 2300 900 50  0001 C CNN
F 1 "+9V" V 2315 1178 50  0000 L CNN
F 2 "" H 2300 1050 50  0001 C CNN
F 3 "" H 2300 1050 50  0001 C CNN
	1    2300 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DE9C331
P 3250 1050
F 0 "R8" V 3457 1050 50  0000 C CNN
F 1 "2k" V 3366 1050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 1050 50  0001 C CNN
F 3 "~" H 3250 1050 50  0001 C CNN
	1    3250 1050
	0    -1   -1   0   
$EndComp
Connection ~ 3500 1050
Wire Wire Line
	3500 1250 3500 1050
Wire Wire Line
	3400 1050 3500 1050
Wire Wire Line
	4000 1250 4000 1050
Wire Wire Line
	3900 1050 4000 1050
Wire Wire Line
	3600 1050 3500 1050
$Comp
L Device:D_Zener Z2
U 1 1 5DE9CF0B
P 3750 1050
F 0 "Z2" H 3750 1266 50  0000 C CNN
F 1 "3v3" H 3750 1175 50  0000 C CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 3750 1050 50  0001 C CNN
F 3 "~" H 3750 1050 50  0001 C CNN
	1    3750 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1650 3050 1650
$Comp
L power:+9V #PWR0103
U 1 1 5DF3D969
P 4550 1050
F 0 "#PWR0103" H 4550 900 50  0001 C CNN
F 1 "+9V" V 4565 1178 50  0000 L CNN
F 2 "" H 4550 1050 50  0001 C CNN
F 3 "" H 4550 1050 50  0001 C CNN
	1    4550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2100 2050 2100
Connection ~ 2050 2100
Wire Wire Line
	2050 2100 2050 2450
Wire Wire Line
	2500 2100 2700 2100
Connection ~ 2700 2100
Wire Wire Line
	4500 1450 4450 1450
Connection ~ 4000 1050
$Comp
L Switch:SW_SPDT SW1
U 1 1 5DF90986
P 4450 1250
F 0 "SW1" V 4496 1062 50  0000 R CNN
F 1 "SW_SPDT" V 4405 1062 50  0000 R CNN
F 2 "Button_Switch_THT:SW_Slide_1P2T_CK_OS102011MS2Q" H 4450 1250 50  0001 C CNN
F 3 "~" H 4450 1250 50  0001 C CNN
	1    4450 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1050 4250 1050
$Comp
L power:GND #PWR0109
U 1 1 5DE9DA88
P 4250 1050
F 0 "#PWR0109" H 4250 800 50  0001 C CNN
F 1 "GND" V 4255 922 50  0000 R CNN
F 2 "" H 4250 1050 50  0001 C CNN
F 3 "" H 4250 1050 50  0001 C CNN
	1    4250 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 1050 4250 1550
Wire Wire Line
	4250 1550 4500 1550
Connection ~ 4250 1050
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5DFC3DF5
P 2400 1650
F 0 "U1" H 2500 1900 50  0000 L CNN
F 1 "TL072CP" H 2200 1650 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2400 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 1650 50  0001 C CNN
	3    2400 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3-1
U 1 1 5DF7E5C1
P 2350 2100
F 0 "R3-1" V 2250 2100 50  0000 C CNN
F 1 "100k" V 2150 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2280 2100 50  0001 C CNN
F 3 "~" H 2350 2100 50  0001 C CNN
	1    2350 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5DE9F6A3
P 2350 2800
F 0 "C2" V 2200 2800 50  0000 C CNN
F 1 "10pF" V 2100 2800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2388 2650 50  0001 C CNN
F 3 "~" H 2350 2800 50  0001 C CNN
	1    2350 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 2100 2700 1650
Connection ~ 2700 1650
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5DEE0AAA
P 2400 1650
F 0 "U1" H 2400 1900 50  0000 C CNN
F 1 "TL072CP" H 2600 1800 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2400 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 1650 50  0001 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5DEAEDCE
P 1950 1200
F 0 "#PWR0108" H 1950 950 50  0001 C CNN
F 1 "GND" V 1955 1072 50  0000 R CNN
F 2 "" H 1950 1200 50  0001 C CNN
F 3 "" H 1950 1200 50  0001 C CNN
	1    1950 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 1350 2300 1050
Wire Wire Line
	3100 1050 2300 1050
Connection ~ 2300 1050
$Comp
L power:GND #PWR0104
U 1 1 5DFDC0F3
P 2300 1950
F 0 "#PWR0104" H 2300 1700 50  0001 C CNN
F 1 "GND" H 2305 1777 50  0000 C CNN
F 2 "" H 2300 1950 50  0001 C CNN
F 3 "" H 2300 1950 50  0001 C CNN
	1    2300 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED L1
U 1 1 5DFDCE75
P 850 1450
F 0 "L1" V 889 1333 50  0000 R CNN
F 1 "LED" V 798 1333 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 850 1450 50  0001 C CNN
F 3 "~" H 850 1450 50  0001 C CNN
	1    850  1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5DFE88BD
P 850 1900
F 0 "R9" V 643 1900 50  0000 C CNN
F 1 "2k" V 734 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 780 1900 50  0001 C CNN
F 3 "~" H 850 1900 50  0001 C CNN
	1    850  1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  1300 850  1200
Connection ~ 850  1200
Wire Wire Line
	850  1200 1200 1200
Wire Wire Line
	850  1200 850  1100
Wire Wire Line
	850  2450 850  2350
Wire Wire Line
	850  1750 850  1600
Wire Wire Line
	850  2050 850  2350
Connection ~ 850  2350
$Comp
L Connector:Screw_Terminal_01x03 O1
U 1 1 5DEED236
P 4700 1550
F 0 "O1" H 4520 1533 50  0001 R CNN
F 1 "Output" H 5050 1450 50  0000 R CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G_1x03_P5.00mm_Vertical" H 4700 1550 50  0001 C CNN
F 3 "~" H 4700 1550 50  0001 C CNN
	1    4700 1550
	1    0    0    -1  
$EndComp
Text Notes 4790 1480 0    50   ~ 0
+9v
Text Notes 4800 1585 0    50   ~ 0
GND
$Comp
L Device:R R7
U 1 1 5DE9B42B
P 3500 1950
F 0 "R7" H 3570 1996 50  0000 L CNN
F 1 "10k" H 3570 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 1950 50  0001 C CNN
F 3 "~" H 3500 1950 50  0001 C CNN
	1    3500 1950
	1    0    0    -1  
$EndComp
NoConn ~ 4350 1050
Connection ~ 1200 2350
$EndSCHEMATC