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
L Driver_Motor:L293D U2
U 1 1 615CEF23
P 6900 2100
F 0 "U2" H 6900 3281 50  0000 C CNN
F 1 "L293D" H 6900 3190 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7150 1350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 6600 2800 50  0001 C CNN
	1    6900 2100
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D U3
U 1 1 615D1087
P 6900 4800
F 0 "U3" H 6900 5981 50  0000 C CNN
F 1 "L293D" H 6900 5890 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7150 4050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 6600 5500 50  0001 C CNN
	1    6900 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 615D61E4
P 7000 800
F 0 "#PWR0102" H 7000 650 50  0001 C CNN
F 1 "VCC" H 7017 973 50  0000 C CNN
F 2 "" H 7000 800 50  0001 C CNN
F 3 "" H 7000 800 50  0001 C CNN
	1    7000 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 800  6800 1100
Wire Wire Line
	7000 800  7000 1100
$Comp
L power:VCC #PWR0104
U 1 1 615D7738
P 7000 3500
F 0 "#PWR0104" H 7000 3350 50  0001 C CNN
F 1 "VCC" H 7017 3673 50  0000 C CNN
F 2 "" H 7000 3500 50  0001 C CNN
F 3 "" H 7000 3500 50  0001 C CNN
	1    7000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3500 6800 3800
Wire Wire Line
	7000 3500 7000 3800
$Comp
L power:GNDREF #PWR0105
U 1 1 615DC5CB
P 6900 3100
F 0 "#PWR0105" H 6900 2850 50  0001 C CNN
F 1 "GNDREF" H 6905 2927 50  0001 C CNN
F 2 "" H 6900 3100 50  0001 C CNN
F 3 "" H 6900 3100 50  0001 C CNN
	1    6900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2900 6700 3000
Wire Wire Line
	6700 3000 6800 3000
Wire Wire Line
	7100 3000 7100 2900
Wire Wire Line
	7000 2900 7000 3000
Connection ~ 7000 3000
Wire Wire Line
	7000 3000 7100 3000
Wire Wire Line
	6800 2900 6800 3000
Connection ~ 6800 3000
Wire Wire Line
	6800 3000 6900 3000
Wire Wire Line
	6900 3000 6900 3100
Connection ~ 6900 3000
Wire Wire Line
	6900 3000 7000 3000
$Comp
L power:GNDREF #PWR0106
U 1 1 615DFDB3
P 6900 5800
F 0 "#PWR0106" H 6900 5550 50  0001 C CNN
F 1 "GNDREF" H 6905 5627 50  0001 C CNN
F 2 "" H 6900 5800 50  0001 C CNN
F 3 "" H 6900 5800 50  0001 C CNN
	1    6900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5600 6700 5700
Wire Wire Line
	6700 5700 6800 5700
Wire Wire Line
	7100 5700 7100 5600
Wire Wire Line
	7000 5600 7000 5700
Connection ~ 7000 5700
Wire Wire Line
	7000 5700 7100 5700
Wire Wire Line
	6800 5600 6800 5700
Connection ~ 6800 5700
Wire Wire Line
	6800 5700 6900 5700
Wire Wire Line
	6900 5700 6900 5800
Connection ~ 6900 5700
Wire Wire Line
	6900 5700 7000 5700
$Comp
L Moving_fader:MFader MF1
U 1 1 615E9561
P 7750 800
F 0 "MF1" V 7689 -128 50  0000 R CNN
F 1 "MFader" V 7598 -128 50  0000 R CNN
F 2 "Moving_fader:MFader" H 7750 800 50  0001 C CNN
F 3 "" H 7750 800 50  0001 C CNN
	1    7750 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 1500 7550 1500
Wire Wire Line
	7550 1500 7550 1200
Wire Wire Line
	7400 1700 7950 1700
Wire Wire Line
	7950 1700 7950 1200
Wire Wire Line
	7400 2100 9300 2100
Wire Wire Line
	7400 2300 9700 2300
$Comp
L power:GNDREF #PWR0109
U 1 1 615FC777
P 8050 1400
F 0 "#PWR0109" H 8050 1150 50  0001 C CNN
F 1 "GNDREF" H 8055 1227 50  0001 C CNN
F 2 "" H 8050 1400 50  0001 C CNN
F 3 "" H 8050 1400 50  0001 C CNN
	1    8050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1200 8050 1400
Text GLabel 8250 1300 3    50   Input ~ 0
Slider1
Text GLabel 6200 1900 0    50   Input ~ 0
SpeedFadeur1
Wire Wire Line
	6200 1900 6400 1900
Text GLabel 6200 1500 0    50   Input ~ 0
DIRAFadeur1
Text GLabel 6200 1700 0    50   Input ~ 0
DIRBFadeur1
Wire Wire Line
	6400 1500 6200 1500
Wire Wire Line
	6400 1700 6200 1700
Text GLabel 6200 2500 0    50   Input ~ 0
SpeedFadeur2
Wire Wire Line
	6200 2500 6400 2500
Text GLabel 6200 2100 0    50   Input ~ 0
DIRAFadeur2
Text GLabel 6200 2300 0    50   Input ~ 0
DIRBFadeur2
Wire Wire Line
	6400 2100 6200 2100
Wire Wire Line
	6400 2300 6200 2300
Text GLabel 6200 4600 0    50   Input ~ 0
SpeedFadeur3
Wire Wire Line
	6200 4600 6400 4600
Text GLabel 6200 4200 0    50   Input ~ 0
DIRAFadeur3
Text GLabel 6200 4400 0    50   Input ~ 0
DIRBFadeur3
Wire Wire Line
	6400 4200 6200 4200
Wire Wire Line
	6400 4400 6200 4400
Wire Wire Line
	6200 5200 6400 5200
Wire Wire Line
	6400 4800 6200 4800
Wire Wire Line
	6400 5000 6200 5000
$Comp
L Device:R_POT RV1
U 1 1 616DCE80
P 3750 5950
F 0 "RV1" V 3543 5950 50  0000 C CNN
F 1 "R_POT" V 3634 5950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 3750 5950 50  0001 C CNN
F 3 "~" H 3750 5950 50  0001 C CNN
	1    3750 5950
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0123
U 1 1 616DF6E6
P 3950 6000
F 0 "#PWR0123" H 3950 5750 50  0001 C CNN
F 1 "GNDREF" H 3955 5827 50  0001 C CNN
F 2 "" H 3950 6000 50  0001 C CNN
F 3 "" H 3950 6000 50  0001 C CNN
	1    3950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5900 3550 5950
Wire Wire Line
	3550 5950 3600 5950
Wire Wire Line
	3900 5950 3950 5950
Wire Wire Line
	3950 5950 3950 6000
Text GLabel 3750 6200 3    50   Input ~ 0
POT1
Wire Wire Line
	3750 6100 3750 6200
$Comp
L Device:R_POT RV3
U 1 1 616FAF07
P 4400 5950
F 0 "RV3" V 4193 5950 50  0000 C CNN
F 1 "R_POT" V 4284 5950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 4400 5950 50  0001 C CNN
F 3 "~" H 4400 5950 50  0001 C CNN
	1    4400 5950
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0125
U 1 1 616FAF23
P 4600 6000
F 0 "#PWR0125" H 4600 5750 50  0001 C CNN
F 1 "GNDREF" H 4605 5827 50  0001 C CNN
F 2 "" H 4600 6000 50  0001 C CNN
F 3 "" H 4600 6000 50  0001 C CNN
	1    4600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5900 4200 5950
Wire Wire Line
	4200 5950 4250 5950
Wire Wire Line
	4550 5950 4600 5950
Wire Wire Line
	4600 5950 4600 6000
Wire Wire Line
	4400 6100 4400 6200
Text GLabel 4400 6200 3    50   Input ~ 0
POT2
Wire Wire Line
	8250 1300 8250 1200
$Comp
L Moving_fader:MFader MF3
U 1 1 61808A91
P 9500 800
F 0 "MF3" V 9439 -128 50  0000 R CNN
F 1 "MFader" V 9348 -128 50  0000 R CNN
F 2 "Moving_fader:MFader" H 9500 800 50  0001 C CNN
F 3 "" H 9500 800 50  0001 C CNN
	1    9500 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0110
U 1 1 61808ADB
P 9800 1400
F 0 "#PWR0110" H 9800 1150 50  0001 C CNN
F 1 "GNDREF" H 9805 1227 50  0001 C CNN
F 2 "" H 9800 1400 50  0001 C CNN
F 3 "" H 9800 1400 50  0001 C CNN
	1    9800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1200 9800 1400
Text GLabel 10000 1300 3    50   Input ~ 0
Slider2
Wire Wire Line
	10000 1300 10000 1200
Wire Wire Line
	9300 1200 9300 2100
Wire Wire Line
	9700 1200 9700 2300
$Comp
L Moving_fader:MFader MF2
U 1 1 61850B47
P 7750 3500
F 0 "MF2" V 7689 2572 50  0000 R CNN
F 1 "MFader" V 7598 2572 50  0000 R CNN
F 2 "Moving_fader:MFader" H 7750 3500 50  0001 C CNN
F 3 "" H 7750 3500 50  0001 C CNN
	1    7750 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4200 7550 4200
Wire Wire Line
	7550 4200 7550 3900
Wire Wire Line
	7950 4400 7950 3900
Wire Wire Line
	8500 3900 8500 4250
$Comp
L power:GNDREF #PWR0112
U 1 1 61850B61
P 8050 4100
F 0 "#PWR0112" H 8050 3850 50  0001 C CNN
F 1 "GNDREF" H 8055 3927 50  0001 C CNN
F 2 "" H 8050 4100 50  0001 C CNN
F 3 "" H 8050 4100 50  0001 C CNN
	1    8050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3900 8050 4100
Text GLabel 8250 4000 3    50   Input ~ 0
Slider3
Wire Wire Line
	8250 4000 8250 3900
Wire Wire Line
	8600 3900 8600 3950
Text GLabel 9100 3950 2    50   Input ~ 0
Touch3
Wire Wire Line
	9050 4200 9050 4250
Wire Wire Line
	7400 4400 7950 4400
$Comp
L teensy:Teensy3.2 U4
U 1 1 618D6ACC
P 3050 2650
F 0 "U4" H 3050 4287 60  0000 C CNN
F 1 "Teensy3.2" H 3050 4181 60  0000 C CNN
F 2 "KiCad_library:Teensy30_31_32_LC" H 3050 1900 60  0001 C CNN
F 3 "" H 3050 1900 60  0000 C CNN
	1    3050 2650
	1    0    0    -1  
$EndComp
Text GLabel -1150 1950 0    50   Input ~ 0
SpeedFadeur1
Text GLabel -1150 1750 0    50   Input ~ 0
DIRAFadeur1
Text GLabel -1150 1850 0    50   Input ~ 0
DIRBFadeur1
Text GLabel -1150 2350 0    50   Input ~ 0
SpeedFadeur2
Text GLabel -1150 2150 0    50   Input ~ 0
DIRAFadeur2
Text GLabel -1150 2250 0    50   Input ~ 0
DIRBFadeur2
Wire Wire Line
	1900 2100 2050 2100
Wire Wire Line
	1900 2200 2050 2200
Wire Wire Line
	1900 2300 2050 2300
Wire Wire Line
	1900 2400 2050 2400
Wire Wire Line
	1900 2500 2050 2500
Wire Wire Line
	1900 2600 2050 2600
Text GLabel -1150 2750 0    50   Input ~ 0
SpeedFadeur3
Text GLabel -1150 2550 0    50   Input ~ 0
DIRAFadeur3
Text GLabel -1150 2650 0    50   Input ~ 0
DIRBFadeur3
Wire Wire Line
	1900 1800 2050 1800
Wire Wire Line
	1900 1900 2050 1900
Wire Wire Line
	1900 2000 2050 2000
Text GLabel -1150 4250 0    50   Input ~ 0
Touch1
Wire Wire Line
	1850 3300 2050 3300
Text GLabel -1150 4700 0    50   Input ~ 0
POT1
Text GLabel -1150 4800 0    50   Input ~ 0
POT2
Text GLabel -1150 4900 0    50   Input ~ 0
POT3
Text GLabel -1150 4350 0    50   Input ~ 0
Touch2
Text GLabel -1150 4450 0    50   Input ~ 0
Touch3
Wire Wire Line
	1850 3400 2050 3400
Wire Wire Line
	1850 3500 2050 3500
Wire Wire Line
	1850 3600 2050 3600
Wire Wire Line
	1850 3700 2050 3700
Wire Wire Line
	1850 3800 2050 3800
$Comp
L power:GNDREF #PWR0101
U 1 1 61AB16AC
P 1850 1150
F 0 "#PWR0101" H 1850 900 50  0001 C CNN
F 1 "GNDREF" H 1855 977 50  0001 C CNN
F 2 "" H 1850 1150 50  0001 C CNN
F 3 "" H 1850 1150 50  0001 C CNN
	1    1850 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0103
U 1 1 61AB9A41
P 4700 3700
F 0 "#PWR0103" H 4700 3450 50  0001 C CNN
F 1 "GNDREF" H 4705 3527 50  0001 C CNN
F 2 "" H 4700 3700 50  0001 C CNN
F 3 "" H 4700 3700 50  0001 C CNN
	1    4700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3700 4700 3700
$Comp
L power:+5V #PWR0107
U 1 1 61AC408F
P 6800 800
F 0 "#PWR0107" H 6800 650 50  0001 C CNN
F 1 "+5V" H 6815 973 50  0000 C CNN
F 2 "" H 6800 800 50  0001 C CNN
F 3 "" H 6800 800 50  0001 C CNN
	1    6800 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 61AC44E4
P 6800 3500
F 0 "#PWR0108" H 6800 3350 50  0001 C CNN
F 1 "+5V" H 6815 3673 50  0000 C CNN
F 2 "" H 6800 3500 50  0001 C CNN
F 3 "" H 6800 3500 50  0001 C CNN
	1    6800 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 61AC5F01
P 9050 4200
F 0 "#PWR0113" H 9050 4050 50  0001 C CNN
F 1 "+3V3" H 9065 4373 50  0000 C CNN
F 2 "" H 9050 4200 50  0001 C CNN
F 3 "" H 9050 4200 50  0001 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0126
U 1 1 61AF5E54
P 4200 5900
F 0 "#PWR0126" H 4200 5750 50  0001 C CNN
F 1 "+3V3" H 4215 6073 50  0000 C CNN
F 2 "" H 4200 5900 50  0001 C CNN
F 3 "" H 4200 5900 50  0001 C CNN
	1    4200 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0128
U 1 1 61AF643A
P 3550 5900
F 0 "#PWR0128" H 3550 5750 50  0001 C CNN
F 1 "+3V3" H 3565 6073 50  0000 C CNN
F 2 "" H 3550 5900 50  0001 C CNN
F 3 "" H 3550 5900 50  0001 C CNN
	1    3550 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 61AFE744
P 4600 3450
F 0 "#PWR0129" H 4600 3300 50  0001 C CNN
F 1 "+5V" H 4615 3623 50  0000 C CNN
F 2 "" H 4600 3450 50  0001 C CNN
F 3 "" H 4600 3450 50  0001 C CNN
	1    4600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3500 4600 3500
Wire Wire Line
	4600 3500 4600 3450
$Comp
L power:+3V3 #PWR0130
U 1 1 61B0E0A3
P 4850 3750
F 0 "#PWR0130" H 4850 3600 50  0001 C CNN
F 1 "+3V3" H 4865 3923 50  0000 C CNN
F 2 "" H 4850 3750 50  0001 C CNN
F 3 "" H 4850 3750 50  0001 C CNN
	1    4850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3800 4600 3800
Wire Wire Line
	4600 3800 4600 3850
Wire Wire Line
	4600 3850 4850 3850
Wire Wire Line
	4850 3750 4850 3850
$Comp
L power:+3V3 #PWR0134
U 1 1 61B1DE83
P 1250 2800
F 0 "#PWR0134" H 1250 2650 50  0001 C CNN
F 1 "+3V3" H 1265 2973 50  0000 C CNN
F 2 "" H 1250 2800 50  0001 C CNN
F 3 "" H 1250 2800 50  0001 C CNN
	1    1250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2800 2050 2800
$Comp
L power:GNDREF #PWR0135
U 1 1 61B260B3
P 1250 2900
F 0 "#PWR0135" H 1250 2650 50  0001 C CNN
F 1 "GNDREF" H 1255 2727 50  0001 C CNN
F 2 "" H 1250 2900 50  0001 C CNN
F 3 "" H 1250 2900 50  0001 C CNN
	1    1250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2900 2050 2900
$Comp
L Switch:SW_SPST SW2
U 1 1 6177916A
P 950 5650
F 0 "SW2" H 950 5885 50  0000 C CNN
F 1 "SW_SPST" H 950 5794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 950 5650 50  0001 C CNN
F 3 "~" H 950 5650 50  0001 C CNN
	1    950  5650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0136
U 1 1 6178FE93
P 700 5700
F 0 "#PWR0136" H 700 5450 50  0001 C CNN
F 1 "GNDREF" H 705 5527 50  0001 C CNN
F 2 "" H 700 5700 50  0001 C CNN
F 3 "" H 700 5700 50  0001 C CNN
	1    700  5700
	1    0    0    -1  
$EndComp
Text GLabel 1350 5650 2    50   Input ~ 0
Button1
Wire Wire Line
	1250 5650 1150 5650
Wire Wire Line
	1350 5650 1250 5650
Connection ~ 1250 5650
Wire Wire Line
	1250 5600 1250 5650
$Comp
L Device:R_Small R4
U 1 1 61797591
P 1250 5500
F 0 "R4" H 1309 5546 50  0000 L CNN
F 1 "R_Small" H 1309 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1250 5500 50  0001 C CNN
F 3 "~" H 1250 5500 50  0001 C CNN
	1    1250 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5350 1250 5400
$Comp
L power:+5V #PWR0137
U 1 1 61799745
P 1250 5350
F 0 "#PWR0137" H 1250 5200 50  0001 C CNN
F 1 "+5V" H 1265 5523 50  0000 C CNN
F 2 "" H 1250 5350 50  0001 C CNN
F 3 "" H 1250 5350 50  0001 C CNN
	1    1250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  5700 700  5650
Wire Wire Line
	700  5650 750  5650
$Comp
L Switch:SW_SPST SW3
U 1 1 617CFF5E
P 950 6250
F 0 "SW3" H 950 6485 50  0000 C CNN
F 1 "SW_SPST" H 950 6394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 950 6250 50  0001 C CNN
F 3 "~" H 950 6250 50  0001 C CNN
	1    950  6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0138
U 1 1 617CFF68
P 700 6300
F 0 "#PWR0138" H 700 6050 50  0001 C CNN
F 1 "GNDREF" H 705 6127 50  0001 C CNN
F 2 "" H 700 6300 50  0001 C CNN
F 3 "" H 700 6300 50  0001 C CNN
	1    700  6300
	1    0    0    -1  
$EndComp
Text GLabel 1350 6250 2    50   Input ~ 0
Button2
Wire Wire Line
	1250 6250 1150 6250
Wire Wire Line
	1350 6250 1250 6250
Connection ~ 1250 6250
Wire Wire Line
	1250 6200 1250 6250
$Comp
L Device:R_Small R5
U 1 1 617CFF77
P 1250 6100
F 0 "R5" H 1309 6146 50  0000 L CNN
F 1 "R_Small" H 1309 6055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1250 6100 50  0001 C CNN
F 3 "~" H 1250 6100 50  0001 C CNN
	1    1250 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5950 1250 6000
$Comp
L power:+5V #PWR0139
U 1 1 617CFF82
P 1250 5950
F 0 "#PWR0139" H 1250 5800 50  0001 C CNN
F 1 "+5V" H 1265 6123 50  0000 C CNN
F 2 "" H 1250 5950 50  0001 C CNN
F 3 "" H 1250 5950 50  0001 C CNN
	1    1250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  6300 700  6250
Wire Wire Line
	700  6250 750  6250
$Comp
L Switch:SW_SPST SW4
U 1 1 617F2944
P 950 6850
F 0 "SW4" H 950 7085 50  0000 C CNN
F 1 "SW_SPST" H 950 6994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 950 6850 50  0001 C CNN
F 3 "~" H 950 6850 50  0001 C CNN
	1    950  6850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0140
U 1 1 617F294E
P 700 6900
F 0 "#PWR0140" H 700 6650 50  0001 C CNN
F 1 "GNDREF" H 705 6727 50  0001 C CNN
F 2 "" H 700 6900 50  0001 C CNN
F 3 "" H 700 6900 50  0001 C CNN
	1    700  6900
	1    0    0    -1  
$EndComp
Text GLabel 1350 6850 2    50   Input ~ 0
Button3
Wire Wire Line
	1250 6850 1150 6850
Wire Wire Line
	1350 6850 1250 6850
Connection ~ 1250 6850
Wire Wire Line
	1250 6800 1250 6850
$Comp
L Device:R_Small R6
U 1 1 617F295D
P 1250 6700
F 0 "R6" H 1309 6746 50  0000 L CNN
F 1 "R_Small" H 1309 6655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1250 6700 50  0001 C CNN
F 3 "~" H 1250 6700 50  0001 C CNN
	1    1250 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6550 1250 6600
$Comp
L power:+5V #PWR0141
U 1 1 617F2968
P 1250 6550
F 0 "#PWR0141" H 1250 6400 50  0001 C CNN
F 1 "+5V" H 1265 6723 50  0000 C CNN
F 2 "" H 1250 6550 50  0001 C CNN
F 3 "" H 1250 6550 50  0001 C CNN
	1    1250 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  6900 700  6850
Wire Wire Line
	700  6850 750  6850
$Comp
L Switch:SW_SPST SW5
U 1 1 617F2974
P 950 7450
F 0 "SW5" H 950 7685 50  0000 C CNN
F 1 "SW_SPST" H 950 7594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 950 7450 50  0001 C CNN
F 3 "~" H 950 7450 50  0001 C CNN
	1    950  7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0142
U 1 1 617F297E
P 700 7500
F 0 "#PWR0142" H 700 7250 50  0001 C CNN
F 1 "GNDREF" H 705 7327 50  0001 C CNN
F 2 "" H 700 7500 50  0001 C CNN
F 3 "" H 700 7500 50  0001 C CNN
	1    700  7500
	1    0    0    -1  
$EndComp
Text GLabel 1350 7450 2    50   Input ~ 0
Button4
Wire Wire Line
	1250 7450 1150 7450
Wire Wire Line
	1350 7450 1250 7450
Connection ~ 1250 7450
Wire Wire Line
	1250 7400 1250 7450
$Comp
L Device:R_Small R7
U 1 1 617F298D
P 1250 7300
F 0 "R7" H 1309 7346 50  0000 L CNN
F 1 "R_Small" H 1309 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1250 7300 50  0001 C CNN
F 3 "~" H 1250 7300 50  0001 C CNN
	1    1250 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7150 1250 7200
$Comp
L power:+5V #PWR0143
U 1 1 617F2998
P 1250 7150
F 0 "#PWR0143" H 1250 7000 50  0001 C CNN
F 1 "+5V" H 1265 7323 50  0000 C CNN
F 2 "" H 1250 7150 50  0001 C CNN
F 3 "" H 1250 7150 50  0001 C CNN
	1    1250 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  7500 700  7450
Wire Wire Line
	700  7450 750  7450
$Comp
L power:GNDREF #PWR0144
U 1 1 6180D632
P 10350 6000
F 0 "#PWR0144" H 10350 5750 50  0001 C CNN
F 1 "GNDREF" H 10355 5827 50  0001 C CNN
F 2 "" H 10350 6000 50  0001 C CNN
F 3 "" H 10350 6000 50  0001 C CNN
	1    10350 6000
	1    0    0    -1  
$EndComp
Text GLabel 9150 5500 0    50   Input ~ 0
LED_BLUE
Text GLabel 9150 5700 0    50   Input ~ 0
LED_GREEN
Text GLabel 9150 5900 0    50   Input ~ 0
LED_RED
$Comp
L Device:Rotary_Encoder SW1
U 1 1 6184A9A0
P 3750 7250
F 0 "SW1" H 3693 6883 50  0000 C CNN
F 1 "Rotary_Encoder" H 3693 6974 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E_Vertical_H20mm" H 3600 7410 50  0001 C CNN
F 3 "~" H 3750 7510 50  0001 C CNN
	1    3750 7250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0145
U 1 1 6184C024
P 4150 7450
F 0 "#PWR0145" H 4150 7200 50  0001 C CNN
F 1 "GNDREF" H 4155 7277 50  0001 C CNN
F 2 "" H 4150 7450 50  0001 C CNN
F 3 "" H 4150 7450 50  0001 C CNN
	1    4150 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 7250 4150 7250
Wire Wire Line
	4150 7250 4150 7450
Text GLabel 4250 7150 2    50   Input ~ 0
ROT1B
Text GLabel 4250 7350 2    50   Input ~ 0
ROT1A
Wire Wire Line
	4050 7150 4250 7150
Wire Wire Line
	4050 7350 4250 7350
Text GLabel -1150 4000 0    50   Input ~ 0
LED_BLUE
Text GLabel -1150 3900 0    50   Input ~ 0
LED_GREEN
Wire Wire Line
	4050 3900 4250 3900
Wire Wire Line
	4050 4000 4250 4000
Text GLabel -1150 3800 0    50   Input ~ 0
LED_RED
Wire Wire Line
	1850 4000 2050 4000
Text GLabel -1150 3150 0    50   Input ~ 0
ROT1B
Text GLabel -1150 3050 0    50   Input ~ 0
ROT1A
Wire Wire Line
	4250 3200 4050 3200
Wire Wire Line
	4050 3300 4250 3300
Text GLabel -1150 1150 0    50   Input ~ 0
Button5
Text GLabel -1150 1250 0    50   Input ~ 0
Button6
Text GLabel -1150 1350 0    50   Input ~ 0
Button7
Text GLabel -1150 1450 0    50   Input ~ 0
Button8
Wire Wire Line
	2050 1300 2050 1100
Wire Wire Line
	2050 1100 1850 1100
Wire Wire Line
	1850 1100 1850 1150
Wire Wire Line
	1900 1400 2050 1400
Wire Wire Line
	1900 1500 2050 1500
Wire Wire Line
	1900 1600 2050 1600
Wire Wire Line
	1900 1700 2050 1700
$Comp
L Device:LED_CRGB D1
U 1 1 61A6406F
P 10050 5700
F 0 "D1" H 10050 5233 50  0000 C CNN
F 1 "LED_CRGB" H 10050 5324 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10050 5650 50  0001 C CNN
F 3 "~" H 10050 5650 50  0001 C CNN
	1    10050 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 5700 10350 5700
Wire Wire Line
	10350 5700 10350 6000
$Comp
L Device:R_Small R9
U 1 1 61AAFDB8
P 9450 5500
F 0 "R9" H 9509 5546 50  0000 L CNN
F 1 "R_Small" H 9509 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9450 5500 50  0001 C CNN
F 3 "~" H 9450 5500 50  0001 C CNN
	1    9450 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 61AB03EC
P 9450 5700
F 0 "R10" H 9509 5746 50  0000 L CNN
F 1 "R_Small" H 9509 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9450 5700 50  0001 C CNN
F 3 "~" H 9450 5700 50  0001 C CNN
	1    9450 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 61AB05A6
P 9450 5900
F 0 "R11" H 9509 5946 50  0000 L CNN
F 1 "R_Small" H 9509 5855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9450 5900 50  0001 C CNN
F 3 "~" H 9450 5900 50  0001 C CNN
	1    9450 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 5500 9350 5500
Wire Wire Line
	9550 5500 9850 5500
Wire Wire Line
	9150 5700 9350 5700
Wire Wire Line
	9550 5700 9850 5700
Wire Wire Line
	9150 5900 9350 5900
Wire Wire Line
	9550 5900 9850 5900
$Comp
L Device:R_Small R8
U 1 1 61B1728F
P 8900 3950
F 0 "R8" H 8959 3996 50  0000 L CNN
F 1 "R_Small" H 8959 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8900 3950 50  0001 C CNN
F 3 "~" H 8900 3950 50  0001 C CNN
	1    8900 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 3950 8800 3950
Wire Wire Line
	9000 3950 9100 3950
Wire Wire Line
	8500 1200 8500 1550
Wire Wire Line
	8600 1200 8600 1250
Text GLabel 9100 1250 2    50   Input ~ 0
Touch1
Wire Wire Line
	9050 1500 9050 1550
$Comp
L power:+3V3 #PWR0111
U 1 1 61B36781
P 9050 1500
F 0 "#PWR0111" H 9050 1350 50  0001 C CNN
F 1 "+3V3" H 9065 1673 50  0000 C CNN
F 2 "" H 9050 1500 50  0001 C CNN
F 3 "" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 61B36795
P 8900 1250
F 0 "R3" H 8959 1296 50  0000 L CNN
F 1 "R_Small" H 8959 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8900 1250 50  0001 C CNN
F 3 "~" H 8900 1250 50  0001 C CNN
	1    8900 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 1250 8800 1250
Wire Wire Line
	9000 1250 9100 1250
Wire Wire Line
	10250 1200 10250 1550
Wire Wire Line
	10350 1200 10350 1250
Text GLabel 10850 1250 2    50   Input ~ 0
Touch2
Wire Wire Line
	10800 1500 10800 1550
$Comp
L power:+3V3 #PWR0118
U 1 1 61B7A760
P 10800 1500
F 0 "#PWR0118" H 10800 1350 50  0001 C CNN
F 1 "+3V3" H 10815 1673 50  0000 C CNN
F 2 "" H 10800 1500 50  0001 C CNN
F 3 "" H 10800 1500 50  0001 C CNN
	1    10800 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 61B7A774
P 10650 1250
F 0 "R13" H 10709 1296 50  0000 L CNN
F 1 "R_Small" H 10709 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 10650 1250 50  0001 C CNN
F 3 "~" H 10650 1250 50  0001 C CNN
	1    10650 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10350 1250 10550 1250
Wire Wire Line
	10750 1250 10850 1250
$Comp
L Switch:SW_SPST SW?
U 1 1 618E6047
P 2300 5650
F 0 "SW?" H 2300 5885 50  0000 C CNN
F 1 "SW_SPST" H 2300 5794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 2300 5650 50  0001 C CNN
F 3 "~" H 2300 5650 50  0001 C CNN
	1    2300 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 618E6061
P 2050 5700
F 0 "#PWR?" H 2050 5450 50  0001 C CNN
F 1 "GNDREF" H 2055 5527 50  0001 C CNN
F 2 "" H 2050 5700 50  0001 C CNN
F 3 "" H 2050 5700 50  0001 C CNN
	1    2050 5700
	1    0    0    -1  
$EndComp
Text GLabel 2700 5650 2    50   Input ~ 0
Button5
Wire Wire Line
	2600 5650 2500 5650
Wire Wire Line
	2700 5650 2600 5650
Connection ~ 2600 5650
Wire Wire Line
	2600 5600 2600 5650
$Comp
L Device:R_Small R?
U 1 1 618E6070
P 2600 5500
F 0 "R?" H 2659 5546 50  0000 L CNN
F 1 "R_Small" H 2659 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2600 5500 50  0001 C CNN
F 3 "~" H 2600 5500 50  0001 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5350 2600 5400
$Comp
L power:+5V #PWR?
U 1 1 618E607B
P 2600 5350
F 0 "#PWR?" H 2600 5200 50  0001 C CNN
F 1 "+5V" H 2615 5523 50  0000 C CNN
F 2 "" H 2600 5350 50  0001 C CNN
F 3 "" H 2600 5350 50  0001 C CNN
	1    2600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5700 2050 5650
Wire Wire Line
	2050 5650 2100 5650
$Comp
L Switch:SW_SPST SW?
U 1 1 618E6087
P 2300 6250
F 0 "SW?" H 2300 6485 50  0000 C CNN
F 1 "SW_SPST" H 2300 6394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 2300 6250 50  0001 C CNN
F 3 "~" H 2300 6250 50  0001 C CNN
	1    2300 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 618E6091
P 2050 6300
F 0 "#PWR?" H 2050 6050 50  0001 C CNN
F 1 "GNDREF" H 2055 6127 50  0001 C CNN
F 2 "" H 2050 6300 50  0001 C CNN
F 3 "" H 2050 6300 50  0001 C CNN
	1    2050 6300
	1    0    0    -1  
$EndComp
Text GLabel 2700 6250 2    50   Input ~ 0
Button6
Wire Wire Line
	2600 6250 2500 6250
Wire Wire Line
	2700 6250 2600 6250
Connection ~ 2600 6250
Wire Wire Line
	2600 6200 2600 6250
$Comp
L Device:R_Small R?
U 1 1 618E60A0
P 2600 6100
F 0 "R?" H 2659 6146 50  0000 L CNN
F 1 "R_Small" H 2659 6055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2600 6100 50  0001 C CNN
F 3 "~" H 2600 6100 50  0001 C CNN
	1    2600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5950 2600 6000
$Comp
L power:+5V #PWR?
U 1 1 618E60AB
P 2600 5950
F 0 "#PWR?" H 2600 5800 50  0001 C CNN
F 1 "+5V" H 2615 6123 50  0000 C CNN
F 2 "" H 2600 5950 50  0001 C CNN
F 3 "" H 2600 5950 50  0001 C CNN
	1    2600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6300 2050 6250
Wire Wire Line
	2050 6250 2100 6250
$Comp
L Switch:SW_SPST SW?
U 1 1 618E60B7
P 2300 6850
F 0 "SW?" H 2300 7085 50  0000 C CNN
F 1 "SW_SPST" H 2300 6994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 2300 6850 50  0001 C CNN
F 3 "~" H 2300 6850 50  0001 C CNN
	1    2300 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 618E60C1
P 2050 6900
F 0 "#PWR?" H 2050 6650 50  0001 C CNN
F 1 "GNDREF" H 2055 6727 50  0001 C CNN
F 2 "" H 2050 6900 50  0001 C CNN
F 3 "" H 2050 6900 50  0001 C CNN
	1    2050 6900
	1    0    0    -1  
$EndComp
Text GLabel 2700 6850 2    50   Input ~ 0
Button7
Wire Wire Line
	2600 6850 2500 6850
Wire Wire Line
	2700 6850 2600 6850
Connection ~ 2600 6850
Wire Wire Line
	2600 6800 2600 6850
$Comp
L Device:R_Small R?
U 1 1 618E614A
P 2600 6700
F 0 "R?" H 2659 6746 50  0000 L CNN
F 1 "R_Small" H 2659 6655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2600 6700 50  0001 C CNN
F 3 "~" H 2600 6700 50  0001 C CNN
	1    2600 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6550 2600 6600
$Comp
L power:+5V #PWR?
U 1 1 618E6155
P 2600 6550
F 0 "#PWR?" H 2600 6400 50  0001 C CNN
F 1 "+5V" H 2615 6723 50  0000 C CNN
F 2 "" H 2600 6550 50  0001 C CNN
F 3 "" H 2600 6550 50  0001 C CNN
	1    2600 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6900 2050 6850
Wire Wire Line
	2050 6850 2100 6850
$Comp
L Switch:SW_SPST SW?
U 1 1 618E6161
P 2300 7450
F 0 "SW?" H 2300 7685 50  0000 C CNN
F 1 "SW_SPST" H 2300 7594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 2300 7450 50  0001 C CNN
F 3 "~" H 2300 7450 50  0001 C CNN
	1    2300 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 618E616B
P 2050 7500
F 0 "#PWR?" H 2050 7250 50  0001 C CNN
F 1 "GNDREF" H 2055 7327 50  0001 C CNN
F 2 "" H 2050 7500 50  0001 C CNN
F 3 "" H 2050 7500 50  0001 C CNN
	1    2050 7500
	1    0    0    -1  
$EndComp
Text GLabel 2700 7450 2    50   Input ~ 0
Button8
Wire Wire Line
	2600 7450 2500 7450
Wire Wire Line
	2700 7450 2600 7450
Connection ~ 2600 7450
Wire Wire Line
	2600 7400 2600 7450
$Comp
L Device:R_Small R?
U 1 1 618E617A
P 2600 7300
F 0 "R?" H 2659 7346 50  0000 L CNN
F 1 "R_Small" H 2659 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2600 7300 50  0001 C CNN
F 3 "~" H 2600 7300 50  0001 C CNN
	1    2600 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7150 2600 7200
$Comp
L power:+5V #PWR?
U 1 1 618E6185
P 2600 7150
F 0 "#PWR?" H 2600 7000 50  0001 C CNN
F 1 "+5V" H 2615 7323 50  0000 C CNN
F 2 "" H 2600 7150 50  0001 C CNN
F 3 "" H 2600 7150 50  0001 C CNN
	1    2600 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 7500 2050 7450
Wire Wire Line
	2050 7450 2100 7450
$Comp
L Device:Rotary_Encoder SW?
U 1 1 6190E32D
P 4900 7250
F 0 "SW?" H 4843 6883 50  0000 C CNN
F 1 "Rotary_Encoder" H 4843 6974 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E_Vertical_H20mm" H 4750 7410 50  0001 C CNN
F 3 "~" H 4900 7510 50  0001 C CNN
	1    4900 7250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 6190E337
P 5300 7450
F 0 "#PWR?" H 5300 7200 50  0001 C CNN
F 1 "GNDREF" H 5305 7277 50  0001 C CNN
F 2 "" H 5300 7450 50  0001 C CNN
F 3 "" H 5300 7450 50  0001 C CNN
	1    5300 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7250 5300 7250
Wire Wire Line
	5300 7250 5300 7450
Text GLabel 5400 7150 2    50   Input ~ 0
ROT2B
Text GLabel 5400 7350 2    50   Input ~ 0
ROT2A
Wire Wire Line
	5200 7150 5400 7150
Wire Wire Line
	5200 7350 5400 7350
$Comp
L Device:R_POT RV?
U 1 1 61954BAD
P 5050 5950
F 0 "RV?" V 4843 5950 50  0000 C CNN
F 1 "R_POT" V 4934 5950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 5050 5950 50  0001 C CNN
F 3 "~" H 5050 5950 50  0001 C CNN
	1    5050 5950
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 61954BB7
P 5250 6000
F 0 "#PWR?" H 5250 5750 50  0001 C CNN
F 1 "GNDREF" H 5255 5827 50  0001 C CNN
F 2 "" H 5250 6000 50  0001 C CNN
F 3 "" H 5250 6000 50  0001 C CNN
	1    5250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5900 4850 5950
Wire Wire Line
	4850 5950 4900 5950
Wire Wire Line
	5200 5950 5250 5950
Wire Wire Line
	5250 5950 5250 6000
Wire Wire Line
	5050 6100 5050 6200
Text GLabel 5050 6200 3    50   Input ~ 0
POT3
$Comp
L power:+3V3 #PWR?
U 1 1 61954BC7
P 4850 5900
F 0 "#PWR?" H 4850 5750 50  0001 C CNN
F 1 "+3V3" H 4865 6073 50  0000 C CNN
F 2 "" H 4850 5900 50  0001 C CNN
F 3 "" H 4850 5900 50  0001 C CNN
	1    4850 5900
	1    0    0    -1  
$EndComp
Text GLabel -1150 750  0    50   Input ~ 0
Button1
Text GLabel -1150 850  0    50   Input ~ 0
Button2
Text GLabel -1150 950  0    50   Input ~ 0
Button3
Text GLabel -1150 1050 0    50   Input ~ 0
Button4
Text GLabel -1150 3450 0    50   Input ~ 0
ROT2B
Text GLabel -1150 3350 0    50   Input ~ 0
ROT2A
$Comp
L Connector:USB_B J?
U 1 1 619F4D80
P 4550 750
F 0 "J?" V 4561 1080 50  0000 L CNN
F 1 "USB_B" V 4652 1080 50  0000 L CNN
F 2 "" H 4700 700 50  0001 C CNN
F 3 " ~" H 4700 700 50  0001 C CNN
	1    4550 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1400 4450 1400
Wire Wire Line
	4450 1400 4450 1050
Wire Wire Line
	4050 1500 4550 1500
Wire Wire Line
	4550 1500 4550 1050
$Comp
L power:+5V #PWR?
U 1 1 61A0E3EC
P 5200 1050
F 0 "#PWR?" H 5200 900 50  0001 C CNN
F 1 "+5V" H 5215 1223 50  0000 C CNN
F 2 "" H 5200 1050 50  0001 C CNN
F 3 "" H 5200 1050 50  0001 C CNN
	1    5200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1050 4750 1150
Wire Wire Line
	4750 1150 5200 1150
Wire Wire Line
	5200 1150 5200 1050
$Comp
L power:GNDREF #PWR?
U 1 1 61A1B964
P 4050 850
F 0 "#PWR?" H 4050 600 50  0001 C CNN
F 1 "GNDREF" H 4055 677 50  0001 C CNN
F 2 "" H 4050 850 50  0001 C CNN
F 3 "" H 4050 850 50  0001 C CNN
	1    4050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 750  4050 750 
Wire Wire Line
	4050 750  4050 850 
Wire Wire Line
	8500 1550 9050 1550
Wire Wire Line
	10250 1550 10800 1550
Wire Wire Line
	8500 4250 9050 4250
Text Label 1900 2600 2    50   ~ 0
DIRAFadeur3
Text Label 1900 2500 2    50   ~ 0
DIRBFadeur3
Text Label 1900 2400 2    50   ~ 0
SpeedFadeur3
Text Label 1900 1400 2    50   ~ 0
ROT1A
Text Label 4250 4000 0    50   ~ 0
ROT1B
Text Label 1850 3900 2    50   ~ 0
ROT2A
Text Label 1850 4000 2    50   ~ 0
ROT2A
Text Label 1900 1800 2    50   ~ 0
LED_RED
Text Label 1900 1900 2    50   ~ 0
LED_GREEN
Text Label 1900 2000 2    50   ~ 0
LED_BLUE
Text Label 1850 3400 2    50   ~ 0
Touch1
Text Label 1850 3600 2    50   ~ 0
Touch2
Text Label 1850 3800 2    50   ~ 0
Touch3
Text Label 4250 3200 0    50   ~ 0
POT1
Text Label 4250 3300 0    50   ~ 0
POT2
Text Label 4250 3900 0    50   ~ 0
POT3
Wire Wire Line
	2050 3100 1850 3100
Wire Wire Line
	2050 3200 1850 3200
Wire Wire Line
	2050 3900 1850 3900
Wire Wire Line
	4050 2700 4250 2700
Wire Wire Line
	4050 2600 4250 2600
Wire Wire Line
	4050 2500 4250 2500
Wire Wire Line
	4050 2400 4250 2400
Wire Wire Line
	4050 2300 4250 2300
Wire Wire Line
	4050 2200 4250 2200
Wire Wire Line
	4050 2100 4250 2100
Wire Wire Line
	4050 2000 4250 2000
Wire Wire Line
	4050 1900 4250 1900
Wire Wire Line
	4050 1800 4250 1800
Wire Wire Line
	4050 1700 4250 1700
Wire Wire Line
	4050 1600 4250 1600
Text Label 4250 1900 0    50   ~ 0
Button8
Text Label 4250 2000 0    50   ~ 0
Button7
Text Label 4250 2100 0    50   ~ 0
Button6
Text Label 4250 2200 0    50   ~ 0
Button5
Text Label 4250 2300 0    50   ~ 0
Button4
Text Label 4250 2400 0    50   ~ 0
Button3
Text Label 4250 2500 0    50   ~ 0
Button2
Text Label 4250 2600 0    50   ~ 0
Button1
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 61B72908
P 2700 -800
F 0 "J?" H 2808 -419 50  0000 C CNN
F 1 "Conn_01x05_Male" H 2808 -510 50  0000 C CNN
F 2 "" H 2700 -800 50  0001 C CNN
F 3 "~" H 2700 -800 50  0001 C CNN
	1    2700 -800
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 61B75949
P 3200 -800
F 0 "J?" H 3308 -419 50  0000 C CNN
F 1 "Conn_01x05_Male" H 3308 -510 50  0000 C CNN
F 2 "" H 3200 -800 50  0001 C CNN
F 3 "~" H 3200 -800 50  0001 C CNN
	1    3200 -800
	1    0    0    -1  
$EndComp
Text Label 3550 -700 0    50   ~ 0
Button8
Text Label 3550 -800 0    50   ~ 0
Button7
Text Label 3550 -900 0    50   ~ 0
Button6
Text Label 3550 -1000 0    50   ~ 0
Button5
Text Label 2350 -700 2    50   ~ 0
Button4
Text Label 2350 -800 2    50   ~ 0
Button3
Text Label 2350 -900 2    50   ~ 0
Button2
Text Label 2350 -1000 2    50   ~ 0
Button1
Wire Wire Line
	2350 -1000 2500 -1000
Wire Wire Line
	2350 -900 2500 -900
Wire Wire Line
	2350 -800 2500 -800
Wire Wire Line
	2350 -700 2500 -700
Wire Wire Line
	3550 -1000 3400 -1000
Wire Wire Line
	3550 -900 3400 -900
Wire Wire Line
	3550 -800 3400 -800
Wire Wire Line
	3550 -700 3400 -700
$Comp
L power:GNDREF #PWR?
U 1 1 61C57769
P 2400 -550
F 0 "#PWR?" H 2400 -800 50  0001 C CNN
F 1 "GNDREF" H 2405 -723 50  0001 C CNN
F 2 "" H 2400 -550 50  0001 C CNN
F 3 "" H 2400 -550 50  0001 C CNN
	1    2400 -550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 61C58C60
P 3500 -550
F 0 "#PWR?" H 3500 -800 50  0001 C CNN
F 1 "GNDREF" H 3505 -723 50  0001 C CNN
F 2 "" H 3500 -550 50  0001 C CNN
F 3 "" H 3500 -550 50  0001 C CNN
	1    3500 -550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 -600 2400 -600
Wire Wire Line
	2400 -600 2400 -550
Wire Wire Line
	3400 -600 3500 -600
Wire Wire Line
	3500 -600 3500 -550
Text Label 1900 2300 2    50   ~ 0
SpeedFadeur2
Text Label 1900 2200 2    50   ~ 0
DIRBFadeur2
Text Label 1900 2100 2    50   ~ 0
DIRAFadeur2
Text Label 1900 1700 2    50   ~ 0
SpeedFadeur1
Text Label 1900 1600 2    50   ~ 0
DIRBFadeur1
Text Label 1900 1500 2    50   ~ 0
DIRAFadeur1
Text GLabel -1150 5150 0    50   Input ~ 0
Slider1
Text GLabel -1150 5250 0    50   Input ~ 0
Slider2
Text GLabel -1150 5350 0    50   Input ~ 0
Slider3
Text Label 1850 3300 2    50   ~ 0
Slider1
Text Label 1850 3500 2    50   ~ 0
Slider2
Text Label 1850 3700 2    50   ~ 0
Slider3
$EndSCHEMATC
