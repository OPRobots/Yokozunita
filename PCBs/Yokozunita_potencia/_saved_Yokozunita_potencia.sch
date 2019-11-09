EESchema Schematic File Version 4
LIBS:Yokozunita_potencia-cache
EELAYER 26 0
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
L Yokozunita_potencia-rescue:SW_DPDT_x2 SWBAT1
U 1 1 5AABF38A
P 3450 1800
F 0 "SWBAT1" H 3450 1970 50  0000 C CNN
F 1 "SW_DPDT_x2" H 3450 1600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 3450 1800 50  0001 C CNN
F 3 "" H 3450 1800 50  0001 C CNN
	1    3450 1800
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:Step_down_chino U1
U 1 1 5AABF44D
P 4500 1700
F 0 "U1" H 4500 1750 60  0000 C CNN
F 1 "Step_down_chino" H 4500 2000 60  0000 C CNN
F 2 "Librerias manu:Step_down_chino" H 4500 1750 60  0001 C CNN
F 3 "" H 4500 1750 60  0001 C CNN
	1    4500 1700
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:Conn_01x01 J6
U 1 1 5AABF525
P 5750 1500
F 0 "J6" H 5750 1600 50  0000 C CNN
F 1 "Conn_01x01" H 5750 1400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 5750 1500 50  0001 C CNN
F 3 "" H 5750 1500 50  0001 C CNN
	1    5750 1500
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:Conn_01x01 IN+1
U 1 1 5AABF55E
P 3650 2300
F 0 "IN+1" H 3650 2400 50  0000 C CNN
F 1 "Conn_01x01" H 3650 2200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3650 2300 50  0001 C CNN
F 3 "" H 3650 2300 50  0001 C CNN
	1    3650 2300
	0    1    1    0   
$EndComp
$Comp
L Yokozunita_potencia-rescue:Conn_01x01 J7
U 1 1 5AABF58B
P 3750 1200
F 0 "J7" H 3750 1300 50  0000 C CNN
F 1 "Conn_01x01" H 3750 1100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 3750 1200 50  0001 C CNN
F 3 "" H 3750 1200 50  0001 C CNN
	1    3750 1200
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:Conn_01x01 OUT+1
U 1 1 5AABF5D3
P 7850 4200
F 0 "OUT+1" H 7850 4300 50  0000 C CNN
F 1 "Conn_01x01" H 7850 4100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 7850 4200 50  0001 C CNN
F 3 "" H 7850 4200 50  0001 C CNN
	1    7850 4200
	0    -1   -1   0   
$EndComp
$Comp
L Yokozunita_potencia-rescue:Conn_01x02_Male J3
U 1 1 5AABF7E2
P 2700 1600
F 0 "J3" H 2700 1700 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2700 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2700 1600 50  0001 C CNN
F 3 "" H 2700 1600 50  0001 C CNN
	1    2700 1600
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:CP1 C1
U 1 1 5AABF89D
P 3950 2250
F 0 "C1" H 3975 2350 50  0000 L CNN
F 1 "CP1" H 3975 2150 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P7.50mm" H 3950 2250 50  0001 C CNN
F 3 "" H 3950 2250 50  0001 C CNN
	1    3950 2250
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:CP1 C2
U 1 1 5AABF94B
P 5300 1950
F 0 "C2" H 5325 2050 50  0000 L CNN
F 1 "CP1" H 5325 1850 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P5.00mm" H 5300 1950 50  0001 C CNN
F 3 "" H 5300 1950 50  0001 C CNN
	1    5300 1950
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:L6205PD IC1
U 1 1 5AABF9ED
P 7000 4800
F 0 "IC1" V 6400 5350 50  0000 L BNN
F 1 "L6205PD" V 6965 4600 50  0000 L BNN
F 2 "footprints:POWERSO20" H 7000 4950 50  0001 C CNN
F 3 "" H 7000 4800 60  0001 C CNN
	1    7000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1700 3250 1700
Wire Wire Line
	3650 1800 3650 2050
Wire Wire Line
	3950 2100 3950 1800
Wire Wire Line
	3650 2100 3950 2100
Wire Wire Line
	2900 1600 3500 1600
Wire Wire Line
	3950 1600 3950 1550
Wire Wire Line
	5050 1550 5500 1550
Wire Wire Line
	5550 1550 5550 1500
Wire Wire Line
	5050 1800 5300 1800
Wire Wire Line
	3950 2400 5300 2400
Wire Wire Line
	5300 2400 5300 2100
Wire Wire Line
	5500 2400 5500 1550
Connection ~ 5300 2400
Connection ~ 5500 1550
Wire Wire Line
	7700 4500 7850 4500
Wire Wire Line
	7850 4400 7850 4500
Wire Wire Line
	7850 5000 7700 5000
Connection ~ 7850 4500
$Comp
L Yokozunita_potencia-rescue:GND #PWR01
U 1 1 5AAC0706
P 5300 2400
F 0 "#PWR01" H 5300 2150 50  0001 C CNN
F 1 "GND" H 5300 2250 50  0000 C CNN
F 2 "" H 5300 2400 50  0001 C CNN
F 3 "" H 5300 2400 50  0001 C CNN
	1    5300 2400
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:GND #PWR02
U 1 1 5AAC07E8
P 6950 5600
F 0 "#PWR02" H 6950 5350 50  0001 C CNN
F 1 "GND" H 6950 5450 50  0000 C CNN
F 2 "" H 6950 5600 50  0001 C CNN
F 3 "" H 6950 5600 50  0001 C CNN
	1    6950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5500 7000 5500
Connection ~ 6900 5500
Connection ~ 7000 5500
Wire Wire Line
	6300 1800 6300 2950
Connection ~ 5300 1800
Wire Wire Line
	3500 2950 6300 2950
Connection ~ 6300 2950
$Comp
L Yokozunita_potencia-rescue:Conn_01x02_Female J9
U 1 1 5AAC0FD6
P 9600 4600
F 0 "J9" H 9600 4700 50  0000 C CNN
F 1 "Conn_01x02_Female" H 9600 4400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 9600 4600 50  0001 C CNN
F 3 "" H 9600 4600 50  0001 C CNN
	1    9600 4600
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:Conn_01x02_Female J10
U 1 1 5AAC10F9
P 9600 5100
F 0 "J10" H 9600 5200 50  0000 C CNN
F 1 "Conn_01x02_Female" H 9600 4900 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 9600 5100 50  0001 C CNN
F 3 "" H 9600 5100 50  0001 C CNN
	1    9600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5100 9400 5100
Wire Wire Line
	7700 5200 9400 5200
Wire Wire Line
	7700 4600 9400 4600
Wire Wire Line
	7700 4700 9400 4700
$Comp
L Yokozunita_potencia-rescue:R R7
U 1 1 5AAC15D1
P 6150 4900
F 0 "R7" V 6230 4900 50  0000 C CNN
F 1 "R" V 6150 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6080 4900 50  0001 C CNN
F 3 "" H 6150 4900 50  0001 C CNN
	1    6150 4900
	0    1    1    0   
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R6
U 1 1 5AAC1684
P 6050 5300
F 0 "R6" V 6130 5300 50  0000 C CNN
F 1 "R" V 6050 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5980 5300 50  0001 C CNN
F 3 "" H 6050 5300 50  0001 C CNN
	1    6050 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 5300 6300 5300
$Comp
L Yokozunita_potencia-rescue:+5V #PWR03
U 1 1 5AAC1842
P 6000 4900
F 0 "#PWR03" H 6000 4750 50  0001 C CNN
F 1 "+5V" H 6000 5040 50  0000 C CNN
F 2 "" H 6000 4900 50  0001 C CNN
F 3 "" H 6000 4900 50  0001 C CNN
	1    6000 4900
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:+5V #PWR04
U 1 1 5AAC18F9
P 5800 5300
F 0 "#PWR04" H 5800 5150 50  0001 C CNN
F 1 "+5V" H 5800 5440 50  0000 C CNN
F 2 "" H 5800 5300 50  0001 C CNN
F 3 "" H 5800 5300 50  0001 C CNN
	1    5800 5300
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:+5V #PWR05
U 1 1 5AAC1940
P 6550 1800
F 0 "#PWR05" H 6550 1650 50  0001 C CNN
F 1 "+5V" H 6550 1940 50  0000 C CNN
F 2 "" H 6550 1800 50  0001 C CNN
F 3 "" H 6550 1800 50  0001 C CNN
	1    6550 1800
	-1   0    0    1   
$EndComp
Connection ~ 6300 1800
Wire Wire Line
	5800 5300 5900 5300
$Comp
L Yokozunita_potencia-rescue:QRE1113 U2
U 1 1 5AAC1C60
P 8150 2450
F 0 "U2" H 8400 2600 60  0000 L CNN
F 1 "QRE1113" H 8400 2200 60  0000 L CNN
F 2 "mods:QRE1113" H 8250 2550 60  0001 C CNN
F 3 "" H 8250 2550 60  0000 C CNN
	1    8150 2450
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:QRE1113 U3
U 1 1 5AAC1F99
P 9200 2450
F 0 "U3" H 9450 2600 60  0000 L CNN
F 1 "QRE1113" H 9450 2200 60  0000 L CNN
F 2 "mods:QRE1113" H 9300 2550 60  0001 C CNN
F 3 "" H 9300 2550 60  0000 C CNN
	1    9200 2450
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:QRE1113 U4
U 1 1 5AAC2002
P 10200 2450
F 0 "U4" H 10450 2600 60  0000 L CNN
F 1 "QRE1113" H 10450 2200 60  0000 L CNN
F 2 "mods:QRE1113" H 10300 2550 60  0001 C CNN
F 3 "" H 10300 2550 60  0000 C CNN
	1    10200 2450
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R9
U 1 1 5AAC21E0
P 8350 1950
F 0 "R9" V 8430 1950 50  0000 C CNN
F 1 "R" V 8350 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8280 1950 50  0001 C CNN
F 3 "" H 8350 1950 50  0001 C CNN
	1    8350 1950
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R13
U 1 1 5AAC2454
P 9400 1950
F 0 "R13" V 9480 1950 50  0000 C CNN
F 1 "R" V 9400 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9330 1950 50  0001 C CNN
F 3 "" H 9400 1950 50  0001 C CNN
	1    9400 1950
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R15
U 1 1 5AAC24FC
P 10400 1950
F 0 "R15" V 10480 1950 50  0000 C CNN
F 1 "R" V 10400 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10330 1950 50  0001 C CNN
F 3 "" H 10400 1950 50  0001 C CNN
	1    10400 1950
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R8
U 1 1 5AAC256F
P 7950 1750
F 0 "R8" V 8030 1750 50  0000 C CNN
F 1 "R" V 7950 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7880 1750 50  0001 C CNN
F 3 "" H 7950 1750 50  0001 C CNN
	1    7950 1750
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R12
U 1 1 5AAC25DB
P 9000 1750
F 0 "R12" V 9080 1750 50  0000 C CNN
F 1 "R" V 9000 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8930 1750 50  0001 C CNN
F 3 "" H 9000 1750 50  0001 C CNN
	1    9000 1750
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R14
U 1 1 5AAC2656
P 10000 1750
F 0 "R14" V 10080 1750 50  0000 C CNN
F 1 "R" V 10000 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9930 1750 50  0001 C CNN
F 3 "" H 10000 1750 50  0001 C CNN
	1    10000 1750
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:GND #PWR06
U 1 1 5AAC30A7
P 7950 2900
F 0 "#PWR06" H 7950 2650 50  0001 C CNN
F 1 "GND" H 7950 2750 50  0000 C CNN
F 2 "" H 7950 2900 50  0001 C CNN
F 3 "" H 7950 2900 50  0001 C CNN
	1    7950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2750 10400 2850
Wire Wire Line
	10400 2850 10000 2850
Wire Wire Line
	7950 2750 7950 2850
Connection ~ 7950 2850
Wire Wire Line
	8350 2750 8350 2850
Connection ~ 8350 2850
Wire Wire Line
	9000 2750 9000 2850
Connection ~ 9000 2850
Wire Wire Line
	9400 2750 9400 2850
Connection ~ 9400 2850
Wire Wire Line
	10000 2750 10000 2850
Connection ~ 10000 2850
Wire Wire Line
	8350 2100 8350 2150
Wire Wire Line
	7950 1900 7950 2250
Wire Wire Line
	9000 1900 9000 2250
Wire Wire Line
	9400 2100 9400 2150
Wire Wire Line
	10000 1900 10000 2250
Wire Wire Line
	10400 2100 10400 2150
$Comp
L Yokozunita_potencia-rescue:+5V #PWR07
U 1 1 5AAC3D04
P 7950 1250
F 0 "#PWR07" H 7950 1100 50  0001 C CNN
F 1 "+5V" H 7950 1390 50  0000 C CNN
F 2 "" H 7950 1250 50  0001 C CNN
F 3 "" H 7950 1250 50  0001 C CNN
	1    7950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1600 7950 1400
Wire Wire Line
	8350 2150 8650 2150
Connection ~ 8350 2150
Wire Wire Line
	9400 2150 9750 2150
Connection ~ 9400 2150
Wire Wire Line
	10400 2150 10800 2150
Connection ~ 10400 2150
Text Label 8650 2150 2    60   ~ 0
Sder
Text Label 9750 2150 2    60   ~ 0
Scentr
Text Label 10800 2150 2    60   ~ 0
Sizq
$Comp
L Yokozunita_potencia-rescue:R R10
U 1 1 5AAD071C
P 8450 4800
F 0 "R10" V 8530 4800 50  0000 C CNN
F 1 "R" V 8450 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8380 4800 50  0001 C CNN
F 3 "" H 8450 4800 50  0001 C CNN
	1    8450 4800
	0    1    1    0   
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R11
U 1 1 5AAD0906
P 8450 5300
F 0 "R11" V 8530 5300 50  0000 C CNN
F 1 "R" V 8450 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8380 5300 50  0001 C CNN
F 3 "" H 8450 5300 50  0001 C CNN
	1    8450 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 4800 7950 4800
Wire Wire Line
	7700 5300 7950 5300
Wire Wire Line
	7950 4800 7950 5000
Wire Wire Line
	7950 5000 8350 5000
Connection ~ 7950 4800
Wire Wire Line
	7950 5300 7950 5500
Wire Wire Line
	7950 5500 8350 5500
Connection ~ 7950 5300
Text Label 8350 5000 2    60   ~ 0
CurrentA
Text Label 8350 5500 2    60   ~ 0
CurrentB
$Comp
L Yokozunita_potencia-rescue:GND #PWR08
U 1 1 5AAD13BB
P 8700 4850
F 0 "#PWR08" H 8700 4600 50  0001 C CNN
F 1 "GND" H 8700 4700 50  0000 C CNN
F 2 "" H 8700 4850 50  0001 C CNN
F 3 "" H 8700 4850 50  0001 C CNN
	1    8700 4850
	1    0    0    -1  
$EndComp
$Comp
L Yokozunita_potencia-rescue:GND #PWR09
U 1 1 5AAD1505
P 8700 5350
F 0 "#PWR09" H 8700 5100 50  0001 C CNN
F 1 "GND" H 8700 5200 50  0000 C CNN
F 2 "" H 8700 5350 50  0001 C CNN
F 3 "" H 8700 5350 50  0001 C CNN
	1    8700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4800 8700 4800
Wire Wire Line
	8700 4800 8700 4850
Wire Wire Line
	8600 5300 8700 5300
Wire Wire Line
	8700 5300 8700 5350
Wire Wire Line
	3650 2050 3100 2050
Wire Wire Line
	3100 2050 3100 2450
Connection ~ 3650 2050
$Comp
L Yokozunita_potencia-rescue:R R2
U 1 1 5AAD4022
P 3100 2600
F 0 "R2" V 3180 2600 50  0000 C CNN
F 1 "R" V 3100 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3030 2600 50  0001 C CNN
F 3 "" H 3100 2600 50  0001 C CNN
	1    3100 2600
	-1   0    0    1   
$EndComp
$Comp
L Yokozunita_potencia-rescue:R R1
U 1 1 5AAD42D8
P 2800 2900
F 0 "R1" V 2880 2900 50  0000 C CNN
F 1 "R" V 2800 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2730 2900 50  0001 C CNN
F 3 "" H 2800 2900 50  0001 C CNN
	1    2800 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 2900 3100 2900
Wire Wire Line
	3100 2750 3100 2900
Wire Wire Line
	3100 3200 2650 3200
Connection ~ 3100 2900
Text Label 2650 3200 0    60   ~ 0
AnalogBat
$Comp
L Yokozunita_potencia-rescue:GND #PWR010
U 1 1 5AAD4B52
P 2500 2900
F 0 "#PWR010" H 2500 2650 50  0001 C CNN
F 1 "GND" H 2500 2750 50  0000 C CNN
F 2 "" H 2500 2900 50  0001 C CNN
F 3 "" H 2500 2900 50  0001 C CNN
	1    2500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2900 2650 2900
Wire Wire Line
	5500 4800 6300 4800
Wire Wire Line
	5500 4700 6300 4700
NoConn ~ 3250 1900
NoConn ~ 6300 4500
NoConn ~ -3100 1400
Wire Wire Line
	6950 5500 6950 5600
Connection ~ 6950 5500
$Comp
L Yokozunita_potencia-rescue:Conn_01x12 J1
U 1 1 5BEFFB0A
P 4250 5200
F 0 "J1" H 4250 5800 50  0000 C CNN
F 1 "Conn_01x12" H 4250 4500 50  0000 C CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-12S-0.5SH_1x12-1MP_P0.50mm_Horizontal" H 4250 5200 50  0001 C CNN
F 3 "" H 4250 5200 50  0001 C CNN
	1    4250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4800 3150 4950
$Comp
L Yokozunita_potencia-rescue:GND #PWR011
U 1 1 5BEFFB12
P 3150 4950
F 0 "#PWR011" H 3150 4700 50  0001 C CNN
F 1 "GND" H 3150 4800 50  0000 C CNN
F 2 "" H 3150 4950 50  0001 C CNN
F 3 "" H 3150 4950 50  0001 C CNN
	1    3150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4800 3150 4800
Wire Wire Line
	3400 4900 4050 4900
Wire Wire Line
	3400 5000 4050 5000
Wire Wire Line
	3400 5100 4050 5100
Wire Wire Line
	3400 5200 4050 5200
Wire Wire Line
	3400 5300 4050 5300
Wire Wire Line
	3400 5400 4050 5400
Wire Wire Line
	3400 5500 4050 5500
Wire Wire Line
	3400 5600 4050 5600
Wire Wire Line
	3400 5700 4050 5700
Wire Wire Line
	3400 5800 4050 5800
Text Label 3400 5800 0    60   ~ 0
Scentr
Text Label 3400 5500 0    60   ~ 0
CurrentA
Text Label 3400 5400 0    60   ~ 0
CurrentB
Text Label 3400 5300 0    60   ~ 0
AnalogBat
Text Label 3400 5600 0    60   ~ 0
Sder
Text Label 3400 5700 0    60   ~ 0
Sizq
Text Label 3400 4900 0    60   ~ 0
PWM1A
Text Label 3400 5000 0    60   ~ 0
PWM2A
Text Label 3400 5100 0    60   ~ 0
PWM1B
Text Label 3400 5200 0    60   ~ 0
PWM2B
Wire Wire Line
	6300 5100 5500 5100
Wire Wire Line
	6300 5200 5500 5200
Text Label 5500 4700 0    60   ~ 0
PWM1A
Text Label 5500 4800 0    60   ~ 0
PWM2A
Text Label 5500 5100 0    60   ~ 0
PWM1B
Text Label 5500 5200 0    60   ~ 0
PWM2B
Wire Wire Line
	3500 2950 3500 4700
Wire Wire Line
	3500 4700 4050 4700
Wire Wire Line
	8350 1400 8350 1800
Connection ~ 7950 1400
Connection ~ 9000 1400
Connection ~ 8350 1400
Wire Wire Line
	9400 1400 9400 1800
Connection ~ 10000 1400
Connection ~ 9400 1400
Wire Wire Line
	10400 1400 10400 1800
Wire Wire Line
	9000 1400 9000 1600
Wire Wire Line
	10000 1400 10000 1600
Wire Wire Line
	3550 1200 3500 1200
Wire Wire Line
	3500 1200 3500 1600
Connection ~ 3500 1600
$Comp
L Yokozunita_potencia-rescue:GND #PWR012
U 1 1 5BF04F8F
P 3850 1600
F 0 "#PWR012" H 3850 1350 50  0001 C CNN
F 1 "GND" H 3850 1450 50  0000 C CNN
F 2 "" H 3850 1600 50  0001 C CNN
F 3 "" H 3850 1600 50  0001 C CNN
	1    3850 1600
	1    0    0    -1  
$EndComp
Connection ~ 3850 1600
Wire Wire Line
	7950 1400 8350 1400
Wire Wire Line
	5300 2400 5500 2400
Wire Wire Line
	5500 1550 5550 1550
Wire Wire Line
	7850 4500 7850 5000
Wire Wire Line
	6900 5500 6800 5500
Wire Wire Line
	7000 5500 6950 5500
Wire Wire Line
	5300 1800 6300 1800
Wire Wire Line
	6300 2950 6300 4400
Wire Wire Line
	6300 1800 6550 1800
Wire Wire Line
	7950 2850 7950 2900
Wire Wire Line
	8350 2850 7950 2850
Wire Wire Line
	9000 2850 8350 2850
Wire Wire Line
	9400 2850 9000 2850
Wire Wire Line
	10000 2850 9400 2850
Wire Wire Line
	8350 2150 8350 2250
Wire Wire Line
	9400 2150 9400 2250
Wire Wire Line
	10400 2150 10400 2250
Wire Wire Line
	7950 4800 8300 4800
Wire Wire Line
	7950 5300 8300 5300
Wire Wire Line
	3650 2050 3650 2100
Wire Wire Line
	3100 2900 3100 3200
Wire Wire Line
	6950 5500 6900 5500
Wire Wire Line
	7950 1400 7950 1250
Wire Wire Line
	9000 1400 9400 1400
Wire Wire Line
	8350 1400 9000 1400
Wire Wire Line
	10000 1400 10400 1400
Wire Wire Line
	9400 1400 10000 1400
Wire Wire Line
	3500 1600 3850 1600
Wire Wire Line
	3850 1600 3950 1600
$EndSCHEMATC
