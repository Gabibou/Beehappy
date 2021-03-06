EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:Barrel_Jack_Switch_Pin3Ring J1
U 1 1 61965B63
P 970 830
F 0 "J1" H 1027 1147 50  0000 C CNN
F 1 "Barrel_Jack_Switch_Pin3Ring" H 1027 1056 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002" H 1020 790 50  0001 C CNN
F 3 "~" H 1020 790 50  0001 C CNN
	1    970  830 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6196B6E2
P 1380 930
F 0 "#PWR0101" H 1380 680 50  0001 C CNN
F 1 "GND" H 1385 757 50  0000 C CNN
F 2 "" H 1380 930 50  0001 C CNN
F 3 "" H 1380 930 50  0001 C CNN
	1    1380 930 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1270 930  1380 930 
Wire Wire Line
	1270 830  1380 830 
Wire Wire Line
	1380 830  1380 930 
Connection ~ 1380 930 
Wire Notes Line
	1910 1230 480  1230
Wire Notes Line
	480  1230 480  480 
Wire Notes Line
	470  480  1910 480 
Text Notes 500  1200 0    50   ~ 0
Entree jack
Text Notes 2235 1535 0    50   ~ 0
Hacheur\n
Text GLabel 1385 1745 1    50   BiDi ~ 0
crystalout
$Comp
L Device:Crystal Y1
U 1 1 619B9C51
P 1115 2080
F 0 "Y1" H 1115 2348 50  0000 C CNN
F 1 "4.9152" H 1115 2257 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 1115 2080 50  0001 C CNN
F 3 "~" H 1115 2080 50  0001 C CNN
	1    1115 2080
	1    0    0    -1  
$EndComp
Wire Wire Line
	875  1715 875  2080
Wire Wire Line
	875  2080 965  2080
Wire Wire Line
	1385 1745 1385 2080
Wire Wire Line
	1385 2080 1265 2080
$Comp
L Device:C C5
U 1 1 619BC245
P 1385 2230
F 0 "C5" H 1530 2350 50  0000 R CNN
F 1 "15pF" V 1530 2305 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1423 2080 50  0001 C CNN
F 3 "~" H 1385 2230 50  0001 C CNN
	1    1385 2230
	1    0    0    -1  
$EndComp
Connection ~ 1385 2080
$Comp
L Device:C C6
U 1 1 619BE0D7
P 875 2230
F 0 "C6" H 980 2155 50  0000 R CNN
F 1 "15pF" V 1055 2295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 913 2080 50  0001 C CNN
F 3 "~" H 875 2230 50  0001 C CNN
	1    875  2230
	-1   0    0    1   
$EndComp
Connection ~ 875  2080
$Comp
L power:GND #PWR0103
U 1 1 619C1212
P 1120 2440
F 0 "#PWR0103" H 1120 2190 50  0001 C CNN
F 1 "GND" H 1125 2267 50  0000 C CNN
F 2 "" H 1120 2440 50  0001 C CNN
F 3 "" H 1120 2440 50  0001 C CNN
	1    1120 2440
	1    0    0    -1  
$EndComp
Wire Wire Line
	1120 2440 1385 2440
Wire Wire Line
	1385 2440 1385 2380
Wire Wire Line
	875  2380 875  2440
Wire Wire Line
	875  2440 1120 2440
Connection ~ 1120 2440
Wire Notes Line
	500  1255 1905 1255
Wire Notes Line
	1905 1255 1905 2760
Wire Notes Line
	1905 2760 495  2760
Wire Notes Line
	495  2760 495  1260
Text Notes 725  2735 0    50   ~ 0
Crystal pour ads1241
$Comp
L power:GND #PWR0104
U 1 1 61A02725
P 3240 3915
F 0 "#PWR0104" H 3240 3665 50  0001 C CNN
F 1 "GND" H 3245 3742 50  0000 C CNN
F 2 "" H 3240 3915 50  0001 C CNN
F 3 "" H 3240 3915 50  0001 C CNN
	1    3240 3915
	1    0    0    -1  
$EndComp
Wire Wire Line
	3240 3915 2395 3915
Wire Wire Line
	940  3215 1570 3215
Wire Wire Line
	940  3225 940  3215
$Comp
L power:GND #PWR0105
U 1 1 61A0411A
P 940 3225
F 0 "#PWR0105" H 940 2975 50  0001 C CNN
F 1 "GND" H 945 3052 50  0000 C CNN
F 2 "" H 940 3225 50  0001 C CNN
F 3 "" H 940 3225 50  0001 C CNN
	1    940  3225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61A1813E
P 925 4020
F 0 "#PWR0106" H 925 3770 50  0001 C CNN
F 1 "GND" H 930 3847 50  0000 C CNN
F 2 "" H 925 4020 50  0001 C CNN
F 3 "" H 925 4020 50  0001 C CNN
	1    925  4020
	1    0    0    -1  
$EndComp
Text GLabel 1570 3415 0    50   BiDi ~ 0
crystalout
Text GLabel 875  1715 1    50   BiDi ~ 0
crystalin
Text GLabel 1570 3315 0    50   BiDi ~ 0
crystalin
$Comp
L power:GND #PWR0107
U 1 1 61A1B68B
P 3090 4015
F 0 "#PWR0107" H 3090 3765 50  0001 C CNN
F 1 "GND" H 3095 3842 50  0000 C CNN
F 2 "" H 3090 4015 50  0001 C CNN
F 3 "" H 3090 4015 50  0001 C CNN
	1    3090 4015
	1    0    0    -1  
$EndComp
Wire Wire Line
	2395 4015 3090 4015
$Comp
L power:GND #PWR0108
U 1 1 61A1D0A3
P 3095 3715
F 0 "#PWR0108" H 3095 3465 50  0001 C CNN
F 1 "GND" H 3100 3565 50  0000 C CNN
F 2 "" H 3095 3715 50  0001 C CNN
F 3 "" H 3095 3715 50  0001 C CNN
	1    3095 3715
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61A1E739
P 3095 3115
F 0 "#PWR0109" H 3095 2865 50  0001 C CNN
F 1 "GND" H 3100 2942 50  0000 C CNN
F 2 "" H 3095 3115 50  0001 C CNN
F 3 "" H 3095 3115 50  0001 C CNN
	1    3095 3115
	1    0    0    -1  
$EndComp
Wire Wire Line
	3095 3715 2395 3715
Wire Wire Line
	925  4015 925  4020
$Comp
L power:GND #PWR0110
U 1 1 61A31A03
P 1085 3825
F 0 "#PWR0110" H 1085 3575 50  0001 C CNN
F 1 "GND" H 1090 3695 50  0000 C CNN
F 2 "" H 1085 3825 50  0001 C CNN
F 3 "" H 1085 3825 50  0001 C CNN
	1    1085 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	1570 3815 1085 3815
Wire Wire Line
	1085 3815 1085 3825
$Comp
L power:+3.3V #PWR0111
U 1 1 61A23469
P 2585 1910
F 0 "#PWR0111" H 2585 1760 50  0001 C CNN
F 1 "+3.3V" H 2600 2083 50  0000 C CNN
F 2 "" H 2585 1910 50  0001 C CNN
F 3 "" H 2585 1910 50  0001 C CNN
	1    2585 1910
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 61A2536B
P 2265 2110
F 0 "C7" H 2365 2190 50  0000 R CNN
F 1 "100nF" V 2390 2240 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2303 1960 50  0001 C CNN
F 3 "~" H 2265 2110 50  0001 C CNN
	1    2265 2110
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 61A297B5
P 2585 2110
F 0 "C8" H 2685 2190 50  0000 R CNN
F 1 "100nF" V 2710 2240 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2623 1960 50  0001 C CNN
F 3 "~" H 2585 2110 50  0001 C CNN
	1    2585 2110
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 61A29EE5
P 2885 2110
F 0 "C9" H 2985 2190 50  0000 R CNN
F 1 "100nF" V 3010 2240 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2923 1960 50  0001 C CNN
F 3 "~" H 2885 2110 50  0001 C CNN
	1    2885 2110
	-1   0    0    1   
$EndComp
Wire Wire Line
	2265 2260 2585 2260
Wire Wire Line
	2585 2260 2885 2260
Connection ~ 2585 2260
$Comp
L power:GND #PWR0112
U 1 1 61A2E051
P 2585 2365
F 0 "#PWR0112" H 2585 2115 50  0001 C CNN
F 1 "GND" H 2590 2192 50  0000 C CNN
F 2 "" H 2585 2365 50  0001 C CNN
F 3 "" H 2585 2365 50  0001 C CNN
	1    2585 2365
	1    0    0    -1  
$EndComp
Wire Wire Line
	2585 2260 2585 2365
Wire Wire Line
	2265 1960 2585 1960
Wire Wire Line
	2885 1960 2585 1960
Connection ~ 2585 1960
Wire Wire Line
	2585 1910 2585 1960
Text GLabel 2905 1960 2    50   BiDi ~ 0
Vref3.3
Wire Wire Line
	2885 1960 2905 1960
Connection ~ 2885 1960
Text GLabel 1570 3915 0    50   BiDi ~ 0
Vref+
Text GLabel 1570 3115 0    50   BiDi ~ 0
Vref3.3
Text GLabel 2395 3815 2    50   BiDi ~ 0
Vref3.3
Text GLabel 2395 3215 2    50   BiDi ~ 0
DataReady
Text GLabel 1570 3515 0    50   BiDi ~ 0
Vref3.3
Text GLabel 1570 3615 0    50   BiDi ~ 0
Vref3.3
Text GLabel 1570 3715 0    50   BiDi ~ 0
PowerDown
Wire Wire Line
	925  4015 1570 4015
Text GLabel 1570 4115 0    50   BiDi ~ 0
Ain0
Text GLabel 1570 4315 0    50   BiDi ~ 0
Ain4
Text GLabel 1570 4415 0    50   BiDi ~ 0
Ain5
Text GLabel 2395 4115 2    50   BiDi ~ 0
Ain2
Text GLabel 2395 4215 2    50   BiDi ~ 0
Ain3
Text GLabel 2395 4315 2    50   BiDi ~ 0
Ain7
Text GLabel 2395 4415 2    50   BiDi ~ 0
Ain6
Wire Notes Line
	1935 1585 1935 2760
Wire Notes Line
	1935 2760 3540 2760
Wire Notes Line
	3540 2760 3540 1580
Wire Notes Line
	3540 1580 1935 1580
Wire Notes Line
	495  2775 3540 2775
Wire Notes Line
	3540 2775 3540 4885
Wire Notes Line
	3540 4885 495  4885
Wire Notes Line
	495  4885 495  2775
Text Notes 3185 4875 0    50   ~ 0
ADS1241
Text Notes 2490 2750 0    50   ~ 0
Capa decouplage ADS1241
Text GLabel 1475 6420 0    50   Output ~ 0
SCLK
Text GLabel 1475 6320 0    50   Input ~ 0
Miso
Text GLabel 1475 6220 0    50   Output ~ 0
Mosi
$Comp
L Device:C C12
U 1 1 61AD4B48
P 3805 2135
F 0 "C12" H 3905 2215 50  0000 R CNN
F 1 "100nF" V 3930 2265 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3843 1985 50  0001 C CNN
F 3 "~" H 3805 2135 50  0001 C CNN
	1    3805 2135
	-1   0    0    1   
$EndComp
$Comp
L Device:C C13
U 1 1 61AD7E19
P 4090 2135
F 0 "C13" H 4190 2215 50  0000 R CNN
F 1 "100nF" V 4215 2265 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4128 1985 50  0001 C CNN
F 3 "~" H 4090 2135 50  0001 C CNN
	1    4090 2135
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61AD956E
P 4090 2440
F 0 "#PWR0114" H 4090 2190 50  0001 C CNN
F 1 "GND" H 4095 2267 50  0000 C CNN
F 2 "" H 4090 2440 50  0001 C CNN
F 3 "" H 4090 2440 50  0001 C CNN
	1    4090 2440
	1    0    0    -1  
$EndComp
Wire Wire Line
	3805 2285 4090 2285
Wire Wire Line
	4370 2285 4090 2285
Connection ~ 4090 2285
Wire Wire Line
	4090 2285 4090 2440
$Comp
L power:+3.3V #PWR0116
U 1 1 61AE6B87
P 4090 1810
F 0 "#PWR0116" H 4090 1660 50  0001 C CNN
F 1 "+3.3V" H 4105 1983 50  0000 C CNN
F 2 "" H 4090 1810 50  0001 C CNN
F 3 "" H 4090 1810 50  0001 C CNN
	1    4090 1810
	1    0    0    -1  
$EndComp
Wire Wire Line
	3805 1985 4090 1985
Wire Wire Line
	4370 1985 4090 1985
Connection ~ 4090 1985
Wire Wire Line
	4090 1985 4090 1810
$Comp
L Device:C C14
U 1 1 61AD8307
P 4370 2135
F 0 "C14" H 4470 2215 50  0000 R CNN
F 1 "100nF" V 4495 2265 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4408 1985 50  0001 C CNN
F 3 "~" H 4370 2135 50  0001 C CNN
	1    4370 2135
	-1   0    0    1   
$EndComp
Wire Notes Line
	4745 2765 3555 2765
Wire Notes Line
	3555 2765 3555 1580
Text Notes 3745 2745 0    50   ~ 0
Capa Decouplage ??C\n
$Comp
L power:GND #PWR0119
U 1 1 61B2AC02
P 3795 5125
F 0 "#PWR0119" H 3795 4875 50  0001 C CNN
F 1 "GND" H 3800 4952 50  0000 C CNN
F 2 "" H 3795 5125 50  0001 C CNN
F 3 "" H 3795 5125 50  0001 C CNN
	1    3795 5125
	-1   0    0    1   
$EndComp
Text GLabel 1475 6820 0    50   Output ~ 0
ControleurLed??C
Text GLabel 4050 4015 3    50   Output ~ 0
ControleurLed??C
$Comp
L Device:LED D1
U 1 1 61B3214E
P 4050 3565
F 0 "D1" H 4043 3310 50  0000 C CNN
F 1 "LED" H 4043 3401 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 4050 3565 50  0001 C CNN
F 3 "~" H 4050 3565 50  0001 C CNN
	1    4050 3565
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61B3A86F
P 4050 3865
F 0 "R3" V 3843 3865 50  0000 C CNN
F 1 "100" V 3934 3865 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3980 3865 50  0001 C CNN
F 3 "~" H 4050 3865 50  0001 C CNN
	1    4050 3865
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 61B3BC2F
P 4050 3415
F 0 "#PWR0120" H 4050 3165 50  0001 C CNN
F 1 "GND" H 4055 3242 50  0000 C CNN
F 2 "" H 4050 3415 50  0001 C CNN
F 3 "" H 4050 3415 50  0001 C CNN
	1    4050 3415
	0    -1   -1   0   
$EndComp
Wire Notes Line
	5065 2785 5065 4885
Wire Notes Line
	5065 4885 3555 4885
Wire Notes Line
	3555 4885 3555 2785
Wire Notes Line
	3555 2785 5065 2785
$Comp
L power:GND #PWR0124
U 1 1 61B6186F
P 8015 905
F 0 "#PWR0124" H 8015 655 50  0001 C CNN
F 1 "GND" H 8020 732 50  0000 C CNN
F 2 "" H 8015 905 50  0001 C CNN
F 3 "" H 8015 905 50  0001 C CNN
	1    8015 905 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 61B62E1B
P 9380 1380
F 0 "#PWR0125" H 9380 1130 50  0001 C CNN
F 1 "GND" H 9385 1207 50  0000 C CNN
F 2 "" H 9380 1380 50  0001 C CNN
F 3 "" H 9380 1380 50  0001 C CNN
	1    9380 1380
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0126
U 1 1 61B679B4
P 8665 1280
F 0 "#PWR0126" H 8665 1130 50  0001 C CNN
F 1 "+3.3V" H 8680 1453 50  0000 C CNN
F 2 "" H 8665 1280 50  0001 C CNN
F 3 "" H 8665 1280 50  0001 C CNN
	1    8665 1280
	1    0    0    -1  
$EndComp
Text GLabel 8665 1480 2    50   BiDi ~ 0
Signal_Reset
Text Notes 10700 3390 0    50   ~ 0
Module lora
Wire Notes Line
	495  4900 495  7780
Wire Notes Line
	3865 7780 3865 4900
Wire Notes Line
	3865 4900 495  4900
Text Notes 3650 7725 0    50   ~ 0
??C\n
Wire Notes Line
	5485 480  5485 3440
Wire Notes Line
	5485 3440 11215 3440
Wire Notes Line
	11215 480  11215 3500
Wire Notes Line
	5485 480  11215 480 
Wire Wire Line
	2780 960  2550 960 
Wire Wire Line
	2550 1260 2425 1260
$Comp
L Device:C C2
U 1 1 6197C4DB
P 2550 1110
F 0 "C2" H 2650 1190 50  0000 R CNN
F 1 "22uF/10V" V 2675 1240 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2588 960 50  0001 C CNN
F 3 "~" H 2550 1110 50  0001 C CNN
	1    2550 1110
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6197771C
P 2300 1110
F 0 "C1" H 2405 1035 50  0000 R CNN
F 1 "10uF/50V" V 2445 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2338 960 50  0001 C CNN
F 3 "~" H 2300 1110 50  0001 C CNN
	1    2300 1110
	-1   0    0    1   
$EndComp
Connection ~ 2425 1260
Wire Wire Line
	2300 1260 2425 1260
$Comp
L power:GND #PWR0129
U 1 1 61979DF2
P 2425 1260
F 0 "#PWR0129" H 2425 1010 50  0001 C CNN
F 1 "GND" H 2430 1087 50  0000 C CNN
F 2 "" H 2425 1260 50  0001 C CNN
F 3 "" H 2425 1260 50  0001 C CNN
	1    2425 1260
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 960  2035 960 
Wire Notes Line
	1920 485  2965 485 
Wire Notes Line
	2965 485  2965 1570
Wire Notes Line
	2965 1570 1920 1570
Text GLabel 1570 4215 0    50   BiDi ~ 0
Ain1
Text GLabel 2395 3315 2    50   Input ~ 0
SCLK
Text GLabel 2395 3415 2    50   Output ~ 0
Miso
Text GLabel 3100 3615 2    50   Input ~ 0
ChipSelect
Text GLabel 4370 1985 2    50   BiDi ~ 0
3.3VCapa
Wire Notes Line
	4745 2760 4865 2760
Wire Notes Line
	4865 2760 4865 1580
Wire Notes Line
	3560 1580 4865 1580
Wire Wire Line
	2035 960  2035 785 
$Comp
L power:+12V #PWR0130
U 1 1 619759F9
P 2035 785
F 0 "#PWR0130" H 2035 635 50  0001 C CNN
F 1 "+12V" H 2050 958 50  0000 C CNN
F 2 "" H 2035 785 50  0001 C CNN
F 3 "" H 2035 785 50  0001 C CNN
	1    2035 785 
	1    0    0    -1  
$EndComp
Wire Notes Line
	1920 485  1920 1570
Wire Notes Line
	1910 480  1910 1230
Wire Wire Line
	1270 730  1300 730 
$Comp
L power:+12V #PWR0102
U 1 1 61973469
P 1300 730
F 0 "#PWR0102" H 1300 580 50  0001 C CNN
F 1 "+12V" H 1315 903 50  0000 C CNN
F 2 "" H 1300 730 50  0001 C CNN
F 3 "" H 1300 730 50  0001 C CNN
	1    1300 730 
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U17
U 1 1 61D73EE7
P 3555 895
F 0 "U17" H 3555 1137 50  0000 C CNN
F 1 "AMS1117-3.3" H 3555 1046 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3555 1095 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3655 645 50  0001 C CNN
	1    3555 895 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 61D84A8C
P 3555 1195
F 0 "#PWR0141" H 3555 945 50  0001 C CNN
F 1 "GND" H 3560 1022 50  0000 C CNN
F 2 "" H 3555 1195 50  0001 C CNN
F 3 "" H 3555 1195 50  0001 C CNN
	1    3555 1195
	1    0    0    -1  
$EndComp
$Comp
L Device:C C183
U 1 1 61D87950
P 4015 1050
F 0 "C183" H 4130 1096 50  0000 L CNN
F 1 "22uF" H 4130 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4053 900 50  0001 C CNN
F 3 "~" H 4015 1050 50  0001 C CNN
	1    4015 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3855 895  4015 895 
Wire Wire Line
	4015 895  4015 900 
$Comp
L power:GND #PWR0142
U 1 1 61D8DF78
P 4015 1200
F 0 "#PWR0142" H 4015 950 50  0001 C CNN
F 1 "GND" H 4020 1027 50  0000 C CNN
F 2 "" H 4015 1200 50  0001 C CNN
F 3 "" H 4015 1200 50  0001 C CNN
	1    4015 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0143
U 1 1 61D8F46B
P 4015 895
F 0 "#PWR0143" H 4015 745 50  0001 C CNN
F 1 "+3.3V" H 4030 1068 50  0000 C CNN
F 2 "" H 4015 895 50  0001 C CNN
F 3 "" H 4015 895 50  0001 C CNN
	1    4015 895 
	1    0    0    -1  
$EndComp
Connection ~ 4015 895 
Wire Wire Line
	3110 895  3255 895 
Wire Wire Line
	10755 5450 10755 5445
Wire Wire Line
	10925 5450 10755 5450
Text GLabel 10655 5445 3    50   BiDi ~ 0
Ain7
Text GLabel 10555 5445 3    50   BiDi ~ 0
Ain6
Text GLabel 9785 5440 3    50   BiDi ~ 0
Ain5
Text GLabel 9685 5440 3    50   BiDi ~ 0
Ain4
Text GLabel 8785 5430 3    50   BiDi ~ 0
Ain3
Text GLabel 8685 5430 3    50   BiDi ~ 0
Ain2
Wire Wire Line
	8885 5430 9120 5430
$Comp
L Connector:Conn_01x04_Female J28
U 1 1 61AD7051
P 10555 5245
F 0 "J28" V 10660 5250 50  0000 R CNN
F 1 "Conn_01x04_Female" V 10595 5555 50  0000 R CNN
F 2 "Connector_Wago:Wago_734-134_1x04_P3.50mm_Vertical" H 10555 5245 50  0001 C CNN
F 3 "~" H 10555 5245 50  0001 C CNN
	1    10555 5245
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J30
U 1 1 61ACA372
P 8685 5230
F 0 "J30" V 8790 5235 50  0000 R CNN
F 1 "Conn_01x04_Female" V 8725 5540 50  0000 R CNN
F 2 "Connector_Wago:Wago_734-134_1x04_P3.50mm_Vertical" H 8685 5230 50  0001 C CNN
F 3 "~" H 8685 5230 50  0001 C CNN
	1    8685 5230
	0    -1   -1   0   
$EndComp
Text GLabel 7825 5410 3    50   BiDi ~ 0
Ain1
Text GLabel 7725 5410 3    50   BiDi ~ 0
Ain0
Wire Wire Line
	7925 5410 8115 5410
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 61A83ED7
P 7725 5210
F 0 "J4" V 7830 5215 50  0000 R CNN
F 1 "Conn_01x04_Female" V 7765 5520 50  0000 R CNN
F 2 "Connector_Wago:Wago_734-134_1x04_P3.50mm_Vertical" H 7725 5210 50  0001 C CNN
F 3 "~" H 7725 5210 50  0001 C CNN
	1    7725 5210
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 61A85F83
P 8385 6210
F 0 "#PWR0131" H 8385 5960 50  0001 C CNN
F 1 "GND" H 8340 6075 50  0000 C CNN
F 2 "" H 8385 6210 50  0001 C CNN
F 3 "" H 8385 6210 50  0001 C CNN
	1    8385 6210
	1    0    0    -1  
$EndComp
Wire Notes Line
	7290 5735 7290 4920
Wire Notes Line
	7290 4920 11075 4920
Text Notes 8875 5020 0    50   ~ 0
Cablage balance
Wire Notes Line
	4380 495  4380 1565
Wire Notes Line
	4380 1565 2985 1565
Wire Notes Line
	2985 1565 2985 495 
Wire Notes Line
	2985 495  4380 495 
Text Notes 3015 1530 0    50   ~ 0
LDO 5 vers 3.3\n
$Comp
L power:GND #PWR0145
U 1 1 61E331DC
P 6960 2280
F 0 "#PWR0145" H 6960 2030 50  0001 C CNN
F 1 "GND" H 6965 2107 50  0000 C CNN
F 2 "" H 6960 2280 50  0001 C CNN
F 3 "" H 6960 2280 50  0001 C CNN
	1    6960 2280
	1    0    0    -1  
$EndComp
Wire Wire Line
	6960 2280 6960 2180
Wire Wire Line
	6960 2180 7065 2180
Text Label 2780 960  0    50   ~ 0
+5V
Text Label 3110 895  2    50   ~ 0
+5V
$Comp
L Connector:Conn_01x04_Female J29
U 1 1 61ACE304
P 9685 5240
F 0 "J29" V 9790 5245 50  0000 R CNN
F 1 "Conn_01x04_Female" V 9725 5550 50  0000 R CNN
F 2 "Connector_Wago:Wago_734-134_1x04_P3.50mm_Vertical" H 9685 5240 50  0001 C CNN
F 3 "~" H 9685 5240 50  0001 C CNN
	1    9685 5240
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9885 5440 10005 5440
$Comp
L power:+3.3V #PWR0128
U 1 1 61FF9A66
P 8115 5410
F 0 "#PWR0128" H 8115 5260 50  0001 C CNN
F 1 "+3.3V" H 8130 5583 50  0000 C CNN
F 2 "" H 8115 5410 50  0001 C CNN
F 3 "" H 8115 5410 50  0001 C CNN
	1    8115 5410
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0132
U 1 1 61FFB08A
P 9120 5430
F 0 "#PWR0132" H 9120 5280 50  0001 C CNN
F 1 "+3.3V" H 9135 5603 50  0000 C CNN
F 2 "" H 9120 5430 50  0001 C CNN
F 3 "" H 9120 5430 50  0001 C CNN
	1    9120 5430
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0138
U 1 1 61FFBE1D
P 10005 5440
F 0 "#PWR0138" H 10005 5290 50  0001 C CNN
F 1 "+3.3V" H 10020 5613 50  0000 C CNN
F 2 "" H 10005 5440 50  0001 C CNN
F 3 "" H 10005 5440 50  0001 C CNN
	1    10005 5440
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0139
U 1 1 61FFC7FB
P 10925 5450
F 0 "#PWR0139" H 10925 5300 50  0001 C CNN
F 1 "+3.3V" H 10940 5623 50  0000 C CNN
F 2 "" H 10925 5450 50  0001 C CNN
F 3 "" H 10925 5450 50  0001 C CNN
	1    10925 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 622E9F01
P 3250 6620
F 0 "#PWR0117" H 3250 6370 50  0001 C CNN
F 1 "GND" H 3330 6600 50  0000 C CNN
F 2 "" H 3250 6620 50  0001 C CNN
F 3 "" H 3250 6620 50  0001 C CNN
	1    3250 6620
	1    0    0    -1  
$EndComp
Wire Wire Line
	3795 5125 3635 5125
$Comp
L power:+3.3V #PWR0118
U 1 1 61B29504
P 3170 5425
F 0 "#PWR0118" H 3170 5275 50  0001 C CNN
F 1 "+3.3V" H 3185 5598 50  0000 C CNN
F 2 "" H 3170 5425 50  0001 C CNN
F 3 "" H 3170 5425 50  0001 C CNN
	1    3170 5425
	-1   0    0    1   
$EndComp
Connection ~ 3170 5125
Wire Wire Line
	3170 5125 3105 5125
Wire Wire Line
	3235 5125 3170 5125
$Comp
L Device:R R1
U 1 1 61B23F83
P 3170 5275
F 0 "R1" H 3240 5321 50  0000 L CNN
F 1 "100k" H 3240 5230 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3100 5275 50  0001 C CNN
F 3 "~" H 3170 5275 50  0001 C CNN
	1    3170 5275
	-1   0    0    1   
$EndComp
Text GLabel 3120 5025 2    50   BiDi ~ 0
Signal_Reset
$Comp
L Switch:SW_Push SW1
U 1 1 61B1E2D9
P 3435 5125
F 0 "SW1" H 3435 5410 50  0000 C CNN
F 1 "SW_Push" H 3435 5319 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 3435 5325 50  0001 C CNN
F 3 "~" H 3435 5325 50  0001 C CNN
	1    3435 5125
	-1   0    0    1   
$EndComp
Wire Wire Line
	3105 5125 3105 5025
Wire Wire Line
	3105 5025 3120 5025
Connection ~ 3105 5125
Text GLabel 1925 5795 1    50   BiDi ~ 0
LoraRx
Text GLabel 3985 5175 3    50   BiDi ~ 0
3.3VCapa
Wire Wire Line
	3250 6620 2750 6620
Wire Wire Line
	2440 5580 2440 5125
Wire Wire Line
	2440 5125 3105 5125
$Comp
L power:GND #PWR0115
U 1 1 624E3393
P 735 5345
F 0 "#PWR0115" H 735 5095 50  0001 C CNN
F 1 "GND" H 740 5172 50  0000 C CNN
F 2 "" H 735 5345 50  0001 C CNN
F 3 "" H 735 5345 50  0001 C CNN
	1    735  5345
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J1918
U 1 1 624ED3CA
P 4085 4975
F 0 "J1918" V 4023 4787 50  0000 R CNN
F 1 "Conn_01x03_Female" V 3932 4787 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4085 4975 50  0001 C CNN
F 3 "~" H 4085 4975 50  0001 C CNN
	1    4085 4975
	0    -1   -1   0   
$EndComp
Text GLabel 4085 5175 3    50   BiDi ~ 0
AlimMicro
Text GLabel 2130 5605 1    50   BiDi ~ 0
AlimMicro
Text GLabel 2750 6720 2    50   BiDi ~ 0
AlimMicro
Text GLabel 4185 5175 3    50   BiDi ~ 0
AlimUdpi
$Comp
L Connector:Conn_01x03_Female J1919
U 1 1 6250C892
P 4080 5660
F 0 "J1919" V 4018 5472 50  0000 R CNN
F 1 "UDPI" V 3927 5472 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4080 5660 50  0001 C CNN
F 3 "~" H 4080 5660 50  0001 C CNN
	1    4080 5660
	0    -1   -1   0   
$EndComp
Text GLabel 3980 5860 3    50   BiDi ~ 0
AlimUdpi
$Comp
L power:GND #PWR0121
U 1 1 6250DE01
P 4180 5860
F 0 "#PWR0121" H 4180 5610 50  0001 C CNN
F 1 "GND" H 4260 5840 50  0000 C CNN
F 2 "" H 4180 5860 50  0001 C CNN
F 3 "" H 4180 5860 50  0001 C CNN
	1    4180 5860
	1    0    0    -1  
$EndComp
Text GLabel 4080 5860 3    50   BiDi ~ 0
UDPI
Text GLabel 2225 5795 1    50   BiDi ~ 0
UDPI
Wire Notes Line
	5100 4900 5100 6335
Wire Notes Line
	5100 6335 3880 6335
Wire Notes Line
	3880 6335 3880 4900
Wire Notes Line
	3880 4900 5100 4900
Text Notes 4895 6320 0    50   ~ 0
UDPI\n
Text Notes 6585 7770 0    50   ~ 0
Clock ??C\n
Wire Notes Line
	5855 6500 6960 6500
Wire Notes Line
	6960 7785 6960 6500
Wire Notes Line
	5855 7785 6960 7785
Wire Notes Line
	5855 6500 5855 7785
Wire Wire Line
	6710 7180 6710 6930
Wire Wire Line
	6120 7180 6120 6930
Text GLabel 6710 6930 1    50   BiDi ~ 0
CLKOUT
Text GLabel 6120 6930 1    50   BiDi ~ 0
CLKIN
Wire Wire Line
	6595 7480 6390 7480
Wire Wire Line
	6390 7480 6390 7545
Connection ~ 6390 7480
Wire Wire Line
	6185 7480 6390 7480
$Comp
L power:GND #PWR0113
U 1 1 61AB499E
P 6390 7545
F 0 "#PWR0113" H 6390 7295 50  0001 C CNN
F 1 "GND" H 6395 7372 50  0000 C CNN
F 2 "" H 6390 7545 50  0001 C CNN
F 3 "" H 6390 7545 50  0001 C CNN
	1    6390 7545
	1    0    0    -1  
$EndComp
Wire Wire Line
	6185 7180 6120 7180
Wire Wire Line
	6185 7180 6240 7180
Connection ~ 6185 7180
$Comp
L Device:C C11
U 1 1 61AB1ED2
P 6185 7330
F 0 "C11" V 6405 7385 50  0000 R CNN
F 1 "15pF" V 6330 7405 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6223 7180 50  0001 C CNN
F 3 "~" H 6185 7330 50  0001 C CNN
	1    6185 7330
	-1   0    0    1   
$EndComp
Wire Wire Line
	6595 7180 6710 7180
Wire Wire Line
	6540 7180 6595 7180
Connection ~ 6595 7180
$Comp
L Device:C C10
U 1 1 61AADB60
P 6595 7330
F 0 "C10" V 6815 7385 50  0000 R CNN
F 1 "15pF" V 6740 7405 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6633 7180 50  0001 C CNN
F 3 "~" H 6595 7330 50  0001 C CNN
	1    6595 7330
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y2
U 1 1 61AAB034
P 6390 7180
F 0 "Y2" H 6390 7448 50  0000 C CNN
F 1 " 32.768 Khz" H 6390 7357 50  0000 C CNN
F 2 "Crystal:Crystal_Round_D2.0mm_Vertical" H 6390 7180 50  0001 C CNN
F 3 "~" H 6390 7180 50  0001 C CNN
	1    6390 7180
	1    0    0    -1  
$EndComp
Text GLabel 2750 6520 2    50   BiDi ~ 0
CLKIN
Text GLabel 2750 6420 2    50   BiDi ~ 0
CLKOUT
$Comp
L Connector:Conn_01x03_Female J651616
U 1 1 6251E261
P 4070 6465
F 0 "J651616" V 4008 6277 50  0000 R CNN
F 1 "TEMP" V 3917 6277 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4070 6465 50  0001 C CNN
F 3 "~" H 4070 6465 50  0001 C CNN
	1    4070 6465
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 6251F3E4
P 4170 6665
F 0 "#PWR0134" H 4170 6415 50  0001 C CNN
F 1 "GND" H 4250 6645 50  0000 C CNN
F 2 "" H 4170 6665 50  0001 C CNN
F 3 "" H 4170 6665 50  0001 C CNN
	1    4170 6665
	1    0    0    -1  
$EndComp
Text GLabel 1750 7195 3    50   BiDi ~ 0
DH11
Text GLabel 3970 6665 3    50   BiDi ~ 0
DH11
$Comp
L power:+3.3V #PWR0140
U 1 1 62520F81
P 4070 6665
F 0 "#PWR0140" H 4070 6515 50  0001 C CNN
F 1 "+3.3V" H 4085 6838 50  0000 C CNN
F 2 "" H 4070 6665 50  0001 C CNN
F 3 "" H 4070 6665 50  0001 C CNN
	1    4070 6665
	-1   0    0    1   
$EndComp
Wire Notes Line
	3880 6360 5090 6360
Wire Notes Line
	5090 6360 5090 7010
Wire Notes Line
	5090 7010 3880 7010
Wire Notes Line
	3880 7010 3880 6360
Text Notes 4850 6995 0    50   ~ 0
temp\n
NoConn ~ 2425 5795
NoConn ~ 1725 5795
NoConn ~ 2450 7195
NoConn ~ 2750 6220
NoConn ~ 2750 6320
NoConn ~ 2750 6120
Text GLabel 6845 1385 0    50   BiDi ~ 0
LoraTx
Text GLabel 6845 1265 0    50   BiDi ~ 0
LoraRx
Wire Wire Line
	6885 1265 6885 1260
Wire Wire Line
	6845 1265 6885 1265
Wire Wire Line
	7065 1260 7065 1280
Wire Wire Line
	7065 1385 7065 1380
Wire Wire Line
	9105 2155 9105 2255
$Comp
L power:GND #PWR0123
U 1 1 61B58B4C
P 9105 2330
F 0 "#PWR0123" H 9105 2080 50  0001 C CNN
F 1 "GND" H 9110 2157 50  0000 C CNN
F 2 "" H 9105 2330 50  0001 C CNN
F 3 "" H 9105 2330 50  0001 C CNN
	1    9105 2330
	1    0    0    -1  
$EndComp
Connection ~ 9105 2255
Wire Wire Line
	9105 2255 9105 2330
NoConn ~ 8115 905 
NoConn ~ 8215 905 
NoConn ~ 8315 905 
NoConn ~ 7915 905 
NoConn ~ 7815 905 
NoConn ~ 7715 905 
NoConn ~ 7615 905 
NoConn ~ 7065 1480
NoConn ~ 7065 1680
NoConn ~ 7065 1580
NoConn ~ 7065 1780
NoConn ~ 7065 1880
NoConn ~ 7065 1980
NoConn ~ 7065 2080
NoConn ~ 7065 2280
NoConn ~ 7740 2530
NoConn ~ 7840 2530
NoConn ~ 7940 2530
NoConn ~ 8040 2530
NoConn ~ 8665 2055
NoConn ~ 8665 1680
NoConn ~ 8665 1580
Wire Wire Line
	2395 3115 3095 3115
$Comp
L beehappy1:ads1241 U2
U 1 1 629D735E
P 2045 2890
F 0 "U2" H 1982 2930 50  0000 C CNN
F 1 "ads1241" H 1982 2839 50  0000 C CNN
F 2 "Lib:ADS1241" H 2045 2890 50  0001 C CNN
F 3 "" H 2045 2890 50  0001 C CNN
	1    2045 2890
	1    0    0    -1  
$EndComp
Text GLabel 2395 3515 2    50   Input ~ 0
Mosi
Wire Wire Line
	2065 5045 2065 5580
Wire Wire Line
	735  5045 735  5345
Text GLabel 1475 6620 0    50   BiDi ~ 0
DataReady
$Comp
L beehappy1:Atmega3208 U3
U 1 1 62A27839
P 2525 5445
F 0 "U3" H 2090 4435 50  0000 L CNN
F 1 "Atmega3208" H 1930 4360 50  0000 L CNN
F 2 "Lib:Atmega3208" H 2525 5445 50  0001 C CNN
F 3 "" H 2525 5445 50  0001 C CNN
	1    2525 5445
	1    0    0    -1  
$EndComp
Text GLabel 1825 5795 1    50   BiDi ~ 0
LoraTx
NoConn ~ 1850 7195
NoConn ~ 1950 7195
NoConn ~ 2050 7195
NoConn ~ 2150 7195
NoConn ~ 2250 7195
NoConn ~ 2350 7195
NoConn ~ 2750 6820
Connection ~ 2750 6620
Wire Wire Line
	2750 6620 2745 6620
Text GLabel 1475 6720 0    50   BiDi ~ 0
PowerDown
Wire Wire Line
	735  5045 2065 5045
Wire Wire Line
	2025 5795 2025 5580
Wire Wire Line
	2025 5580 2065 5580
Wire Wire Line
	2125 5795 2125 5605
Wire Wire Line
	2125 5605 2130 5605
Wire Wire Line
	2325 5795 2325 5580
Wire Wire Line
	2325 5580 2440 5580
$Comp
L beehappy1:k7805 A1
U 1 1 62A6B413
P 2615 550
F 0 "A1" H 2618 438 50  0000 L CNN
F 1 "k7805" H 2618 347 50  0000 L CNN
F 2 "Lib:k7805" H 2465 625 50  0001 C CNN
F 3 "" H 2465 625 50  0001 C CNN
	1    2615 550 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2540 900  2550 900 
Wire Wire Line
	2550 900  2550 960 
Wire Wire Line
	2440 900  2425 900 
Wire Wire Line
	2425 900  2425 1260
Wire Wire Line
	2340 900  2300 900 
Wire Wire Line
	2300 900  2300 960 
$Comp
L Transistor_BJT:BC556 Q1
U 1 1 62A777EA
P 8285 6010
F 0 "Q1" H 8476 6056 50  0000 L CNN
F 1 "BC556" H 8476 5965 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8485 5935 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 8285 6010 50  0001 L CNN
	1    8285 6010
	1    0    0    -1  
$EndComp
$Comp
L Device:D D5
U 1 1 62A95384
P 7625 5680
F 0 "D5" V 7620 5850 50  0000 R CNN
F 1 "D" V 7580 5600 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 7625 5680 50  0001 C CNN
F 3 "~" H 7625 5680 50  0001 C CNN
	1    7625 5680
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7625 5410 7625 5530
Wire Wire Line
	8385 5810 7665 5810
Wire Wire Line
	7665 5810 7665 5830
Wire Wire Line
	7665 5830 7625 5830
$Comp
L Device:D D2
U 1 1 62A9EF1B
P 8385 5660
F 0 "D2" V 8380 5830 50  0000 R CNN
F 1 "D" V 8340 5580 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 8385 5660 50  0001 C CNN
F 3 "~" H 8385 5660 50  0001 C CNN
	1    8385 5660
	0    -1   -1   0   
$EndComp
Connection ~ 8385 5810
Wire Wire Line
	8585 5430 8385 5430
Wire Wire Line
	8385 5430 8385 5510
$Comp
L Device:D D3
U 1 1 62AA4658
P 9590 5650
F 0 "D3" V 9585 5820 50  0000 R CNN
F 1 "D" V 9475 5730 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 9590 5650 50  0001 C CNN
F 3 "~" H 9590 5650 50  0001 C CNN
	1    9590 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9590 5500 9590 5440
Wire Wire Line
	9590 5440 9585 5440
Wire Wire Line
	9590 5800 8480 5800
Wire Wire Line
	8480 5800 8480 5810
Wire Wire Line
	8480 5810 8385 5810
$Comp
L Device:D D4
U 1 1 62AADE49
P 10450 5595
F 0 "D4" V 10445 5765 50  0000 R CNN
F 1 "D" V 10335 5675 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 10450 5595 50  0001 C CNN
F 3 "~" H 10450 5595 50  0001 C CNN
	1    10450 5595
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10455 5445 10450 5445
Wire Wire Line
	10450 5745 9665 5745
Wire Wire Line
	9665 5745 9665 5800
Wire Wire Line
	9665 5800 9590 5800
Connection ~ 9590 5800
Text GLabel 8085 6010 0    50   Input ~ 0
ScalePower
Text GLabel 1435 6120 0    50   Input ~ 0
ScalePower
Wire Wire Line
	1435 6120 1475 6120
Wire Notes Line
	7290 5740 7290 6520
Wire Notes Line
	7290 6520 11090 6520
Wire Notes Line
	11090 4920 11090 6520
Text GLabel 6735 6000 2    50   BiDi ~ 0
Vref+
Text GLabel 6360 6000 0    50   BiDi ~ 0
Vref3.3
$Comp
L Device:R R17
U 1 1 62AC518B
P 6510 6000
F 0 "R17" V 6303 6000 50  0000 C CNN
F 1 "2000" V 6394 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6440 6000 50  0001 C CNN
F 3 "~" H 6510 6000 50  0001 C CNN
	1    6510 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 62AC5FC2
P 6660 6150
F 0 "R18" H 6590 6104 50  0000 R CNN
F 1 "2000" H 6590 6195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6590 6150 50  0001 C CNN
F 3 "~" H 6660 6150 50  0001 C CNN
	1    6660 6150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 62AC66E1
P 6660 6300
F 0 "#PWR0122" H 6660 6050 50  0001 C CNN
F 1 "GND" H 6615 6165 50  0000 C CNN
F 2 "" H 6660 6300 50  0001 C CNN
F 3 "" H 6660 6300 50  0001 C CNN
	1    6660 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6660 6000 6735 6000
Connection ~ 6660 6000
Wire Notes Line
	5855 6480 7265 6480
Wire Notes Line
	7265 6480 7265 5710
Wire Notes Line
	7265 5710 5855 5710
Wire Notes Line
	5855 5710 5855 6480
Text Notes 5955 5690 0    50   ~ 0
Vref lowering (could be better)\n
Text GLabel 1475 6520 0    50   Output ~ 0
ChipSelect
$Comp
L Device:R R19
U 1 1 62AE8660
P 3250 3515
F 0 "R19" V 3043 3515 50  0000 C CNN
F 1 "1M" V 3134 3515 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 3515 50  0001 C CNN
F 3 "~" H 3250 3515 50  0001 C CNN
	1    3250 3515
	0    1    1    0   
$EndComp
Wire Wire Line
	2395 3615 3065 3615
Wire Wire Line
	3065 3615 3065 3515
Wire Wire Line
	3065 3515 3100 3515
Connection ~ 3065 3615
Wire Wire Line
	3065 3615 3100 3615
$Comp
L power:GND #PWR0127
U 1 1 62AF330A
P 3400 3515
F 0 "#PWR0127" H 3400 3265 50  0001 C CNN
F 1 "GND" V 3470 3465 50  0000 C CNN
F 2 "" H 3400 3515 50  0001 C CNN
F 3 "" H 3400 3515 50  0001 C CNN
	1    3400 3515
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8665 2255 9105 2255
Wire Wire Line
	8665 2155 9105 2155
Wire Wire Line
	9380 1380 8665 1380
Wire Wire Line
	6885 1260 7065 1260
$Comp
L beehappy1:rak3172 U1
U 1 1 629332DF
P 7665 1055
F 0 "U1" H 7865 -508 50  0000 C CNN
F 1 "rak3172" H 7865 -599 50  0000 C CNN
F 2 "Lib:rak3172" H 7940 505 50  0001 C CNN
F 3 "" H 7940 505 50  0001 C CNN
	1    7665 1055
	1    0    0    -1  
$EndComp
Wire Wire Line
	6845 1385 7065 1385
$EndSCHEMATC
