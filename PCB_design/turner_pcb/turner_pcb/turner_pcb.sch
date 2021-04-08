EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "jeu. 02 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 60164915
P 5100 2050
F 0 "A1" H 5100 961 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5100 870 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5100 2050 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5100 2050 50  0001 C CNN
	1    5100 2050
	1    0    0    -1  
$EndComp
Text GLabel 4400 1850 0    50   Input ~ 0
Enable
Text GLabel 9250 1950 2    50   Input ~ 0
Enable
Wire Wire Line
	9250 1950 9000 1950
Wire Wire Line
	4400 1850 4600 1850
$Comp
L power:GND #PWR01
U 1 1 601844E7
P 5100 3450
F 0 "#PWR01" H 5100 3200 50  0001 C CNN
F 1 "GND" H 5105 3277 50  0000 C CNN
F 2 "" H 5100 3450 50  0001 C CNN
F 3 "" H 5100 3450 50  0001 C CNN
	1    5100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3050 5100 3450
$Comp
L power:+5V #PWR02
U 1 1 601857BF
P 5300 850
F 0 "#PWR02" H 5300 700 50  0001 C CNN
F 1 "+5V" H 5315 1023 50  0000 C CNN
F 2 "" H 5300 850 50  0001 C CNN
F 3 "" H 5300 850 50  0001 C CNN
	1    5300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 850  5300 1050
Text GLabel 4400 1750 0    50   Input ~ 0
Direction
Text GLabel 9250 1750 2    50   Input ~ 0
Direction
Wire Wire Line
	4600 1750 4400 1750
Text GLabel 4400 1650 0    50   Input ~ 0
Step
Text GLabel 9250 1850 2    50   Input ~ 0
Step
Wire Wire Line
	9000 1850 9250 1850
Wire Wire Line
	9000 1750 9250 1750
Wire Wire Line
	4600 1650 4400 1650
$Comp
L power:+12V #PWR0103
U 1 1 60164B1C
P 8400 2850
F 0 "#PWR0103" H 8400 2700 50  0001 C CNN
F 1 "+12V" V 8415 2978 50  0000 L CNN
F 2 "" H 8400 2850 50  0001 C CNN
F 3 "" H 8400 2850 50  0001 C CNN
	1    8400 2850
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR05
U 1 1 606D21A0
P 5000 850
F 0 "#PWR05" H 5000 700 50  0001 C CNN
F 1 "+12V" H 5015 1023 50  0000 C CNN
F 2 "" H 5000 850 50  0001 C CNN
F 3 "" H 5000 850 50  0001 C CNN
	1    5000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1050 5000 850 
Text GLabel 4400 1950 0    50   Input ~ 0
DIO1
Text GLabel 4400 2050 0    50   Input ~ 0
DIO2
Wire Wire Line
	4600 2050 4400 2050
Wire Wire Line
	4600 1950 4400 1950
Text GLabel 5800 2050 2    50   Input ~ 0
Pot
Wire Wire Line
	5800 2050 5600 2050
Wire Wire Line
	8400 2550 8400 2850
$Comp
L power:GND #PWR06
U 1 1 606D52D7
P 8550 3850
F 0 "#PWR06" H 8550 3600 50  0001 C CNN
F 1 "GND" V 8550 3700 50  0000 R CNN
F 2 "" H 8550 3850 50  0001 C CNN
F 3 "" H 8550 3850 50  0001 C CNN
	1    8550 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 606D78AE
P 8750 3450
F 0 "C1" V 8521 3450 50  0000 C CNN
F 1 "C_Small" V 8612 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8750 3450 50  0001 C CNN
F 3 "~" H 8750 3450 50  0001 C CNN
	1    8750 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Polarized C2
U 1 1 606D935B
P 8300 3450
F 0 "C2" V 8555 3450 50  0000 C CNN
F 1 "C_Polarized" V 8464 3450 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 8338 3300 50  0001 C CNN
F 3 "~" H 8300 3450 50  0001 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3350 8750 2850
Wire Wire Line
	8300 3300 8300 2850
Wire Wire Line
	8300 2850 8400 2850
Connection ~ 8400 2850
Wire Wire Line
	8300 3600 8300 3850
Wire Wire Line
	8750 3550 8750 3850
Wire Wire Line
	8750 3850 8550 3850
Connection ~ 8550 3850
$Comp
L Connector_Generic:Conn_01x02 input_power1
U 1 1 606DD661
P 5150 4500
F 0 "input_power1" H 5230 4492 50  0000 L CNN
F 1 "Conn_01x02" H 5230 4401 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0212_2x01_P3.00mm_Vertical" H 5150 4500 50  0001 C CNN
F 3 "~" H 5150 4500 50  0001 C CNN
	1    5150 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even pot_input1
U 1 1 606DECD9
P 5100 5100
F 0 "pot_input1" H 5150 5317 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 5150 5226 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0412_2x02_P3.00mm_Vertical" H 5100 5100 50  0001 C CNN
F 3 "~" H 5100 5100 50  0001 C CNN
	1    5100 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3850 8300 3850
$Comp
L Connector_Generic:Conn_02x02_Odd_Even stepper1
U 1 1 606E15AD
P 5100 5650
F 0 "stepper1" H 5150 5867 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 5150 5776 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0412_2x02_P3.00mm_Vertical" H 5100 5650 50  0001 C CNN
F 3 "~" H 5100 5650 50  0001 C CNN
	1    5100 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 606E2756
P 4700 4500
F 0 "#PWR09" H 4700 4250 50  0001 C CNN
F 1 "GND" V 4705 4372 50  0000 R CNN
F 2 "" H 4700 4500 50  0001 C CNN
F 3 "" H 4700 4500 50  0001 C CNN
	1    4700 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 606E2953
P 4650 5100
F 0 "#PWR07" H 4650 4850 50  0001 C CNN
F 1 "GND" V 4655 4972 50  0000 R CNN
F 2 "" H 4650 5100 50  0001 C CNN
F 3 "" H 4650 5100 50  0001 C CNN
	1    4650 5100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 606E2CA1
P 4650 6200
F 0 "#PWR08" H 4650 5950 50  0001 C CNN
F 1 "GND" V 4655 6072 50  0000 R CNN
F 2 "" H 4650 6200 50  0001 C CNN
F 3 "" H 4650 6200 50  0001 C CNN
	1    4650 6200
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR010
U 1 1 606E30D4
P 4700 4600
F 0 "#PWR010" H 4700 4450 50  0001 C CNN
F 1 "+12V" V 4715 4728 50  0000 L CNN
F 2 "" H 4700 4600 50  0001 C CNN
F 3 "" H 4700 4600 50  0001 C CNN
	1    4700 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 606E3588
P 5650 5100
F 0 "#PWR011" H 5650 4950 50  0001 C CNN
F 1 "+5V" V 5665 5228 50  0000 L CNN
F 2 "" H 5650 5100 50  0001 C CNN
F 3 "" H 5650 5100 50  0001 C CNN
	1    5650 5100
	0    1    1    0   
$EndComp
Text GLabel 4650 5200 0    50   Input ~ 0
Pot
Text GLabel 4650 5650 0    50   Input ~ 0
M1A
Text GLabel 4650 5750 0    50   Input ~ 0
M2A
Text GLabel 5650 5650 2    50   Input ~ 0
M1B
Text GLabel 5650 5750 2    50   Input ~ 0
M2B
Text GLabel 7850 1750 0    50   Input ~ 0
M2A
Text GLabel 7850 1650 0    50   Input ~ 0
M2B
Text GLabel 7850 1950 0    50   Input ~ 0
M1B
Text GLabel 7850 1850 0    50   Input ~ 0
M1A
Wire Wire Line
	7850 1950 8100 1950
Wire Wire Line
	8100 1850 7850 1850
Wire Wire Line
	7850 1750 8100 1750
Wire Wire Line
	8100 1650 7850 1650
Text GLabel 4650 6300 0    50   Input ~ 0
DIO1
Text GLabel 5650 6300 2    50   Input ~ 0
DIO2
$Comp
L Connector_Generic:Conn_02x03_Odd_Even General_IO1
U 1 1 606E8C37
P 5100 6300
F 0 "General_IO1" H 5150 6617 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5150 6526 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0612_2x03_P3.00mm_Vertical" H 5100 6300 50  0001 C CNN
F 3 "~" H 5100 6300 50  0001 C CNN
	1    5100 6300
	1    0    0    -1  
$EndComp
Text GLabel 4650 6400 0    50   Input ~ 0
DIO3
Text GLabel 5650 6400 2    50   Input ~ 0
DIO4
Text GLabel 4400 2150 0    50   Input ~ 0
DIO3
Text GLabel 4400 2250 0    50   Input ~ 0
DIO4
Wire Wire Line
	4600 2150 4400 2150
Wire Wire Line
	4400 2250 4600 2250
Wire Wire Line
	4950 4500 4700 4500
Wire Wire Line
	4700 4600 4950 4600
Wire Wire Line
	4900 5100 4650 5100
Wire Wire Line
	4650 5200 4900 5200
Wire Wire Line
	5400 5100 5650 5100
Wire Wire Line
	4650 5750 4900 5750
Wire Wire Line
	4900 5650 4650 5650
Wire Wire Line
	5400 5650 5650 5650
Wire Wire Line
	5650 5750 5400 5750
Wire Wire Line
	5650 6200 5400 6200
Wire Wire Line
	5650 6300 5400 6300
Wire Wire Line
	5650 6400 5400 6400
Wire Wire Line
	4900 6200 4650 6200
Wire Wire Line
	4900 6300 4650 6300
Wire Wire Line
	4900 6400 4650 6400
$Comp
L power:+5V #PWR012
U 1 1 606DF38F
P 5650 6200
F 0 "#PWR012" H 5650 6050 50  0001 C CNN
F 1 "+5V" V 5665 6328 50  0000 L CNN
F 2 "" H 5650 6200 50  0001 C CNN
F 3 "" H 5650 6200 50  0001 C CNN
	1    5650 6200
	0    1    1    0   
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A2
U 1 1 606E299D
P 8600 1850
F 0 "A2" H 8650 869 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 8650 960 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 8875 1100 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 8700 1550 50  0001 C CNN
	1    8600 1850
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 606F8537
P 8600 2850
F 0 "#PWR03" H 8600 2700 50  0001 C CNN
F 1 "+5V" H 8615 3023 50  0000 C CNN
F 2 "" H 8600 2850 50  0001 C CNN
F 3 "" H 8600 2850 50  0001 C CNN
	1    8600 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 2550 8600 2850
Wire Wire Line
	8750 2850 8600 2850
Connection ~ 8600 2850
$Comp
L power:GND #PWR017
U 1 1 6070FCF2
P 9250 2250
F 0 "#PWR017" H 9250 2000 50  0001 C CNN
F 1 "GND" V 9255 2122 50  0000 R CNN
F 2 "" H 9250 2250 50  0001 C CNN
F 3 "" H 9250 2250 50  0001 C CNN
	1    9250 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60710791
P 9250 2150
F 0 "#PWR016" H 9250 1900 50  0001 C CNN
F 1 "GND" V 9255 2022 50  0000 R CNN
F 2 "" H 9250 2150 50  0001 C CNN
F 3 "" H 9250 2150 50  0001 C CNN
	1    9250 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9250 2250 9000 2250
Wire Wire Line
	9250 2150 9000 2150
$Comp
L power:GND #PWR013
U 1 1 60712C42
P 8600 1050
F 0 "#PWR013" H 8600 800 50  0001 C CNN
F 1 "GND" V 8605 922 50  0000 R CNN
F 2 "" H 8600 1050 50  0001 C CNN
F 3 "" H 8600 1050 50  0001 C CNN
	1    8600 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60713483
P 8400 1050
F 0 "#PWR04" H 8400 800 50  0001 C CNN
F 1 "GND" V 8405 922 50  0000 R CNN
F 2 "" H 8400 1050 50  0001 C CNN
F 3 "" H 8400 1050 50  0001 C CNN
	1    8400 1050
	0    1    1    0   
$EndComp
Text GLabel 9250 1550 2    50   Input ~ 0
MS1
Text GLabel 9250 1450 2    50   Input ~ 0
MS2
Text GLabel 9250 1350 2    50   Input ~ 0
MS3
Wire Wire Line
	9250 1550 9000 1550
Wire Wire Line
	9000 1450 9250 1450
Wire Wire Line
	9250 1350 9000 1350
Text GLabel 4400 2350 0    50   Input ~ 0
MS1
Text GLabel 4400 2450 0    50   Input ~ 0
MS2
Text GLabel 4400 2550 0    50   Input ~ 0
MS3
Wire Wire Line
	4600 2350 4400 2350
Wire Wire Line
	4400 2450 4600 2450
Wire Wire Line
	4600 2550 4400 2550
$EndSCHEMATC
