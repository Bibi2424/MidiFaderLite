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
L teensy:Teensy++2.0_(Arduino) U1
U 1 1 615CD11D
P 3700 2350
F 0 "U1" H 3700 3987 60  0000 C CNN
F 1 "Teensy++2.0_(Arduino)" H 3700 3881 60  0000 C CNN
F 2 "KiCad_library:Teensy2.0++" H 3700 3881 60  0001 C CNN
F 3 "" H 3800 1700 60  0000 C CNN
	1    3700 2350
	1    0    0    -1  
$EndComp
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
Text GLabel 4600 3500 2    50   Input ~ 0
Slider1
Text GLabel 4600 3600 2    50   Input ~ 0
Slider2
Text GLabel 4600 3700 2    50   Input ~ 0
Slider3
Wire Wire Line
	4400 3500 4600 3500
Wire Wire Line
	4400 3600 4600 3600
Wire Wire Line
	4400 3700 4600 3700
Text GLabel 6200 1900 0    50   Input ~ 0
SpeedFadeur1
Wire Wire Line
	6200 1900 6400 1900
Text GLabel 2800 2600 0    50   Input ~ 0
SpeedFadeur1
Text GLabel 2800 2700 0    50   Input ~ 0
SpeedFadeur2
Text GLabel 2800 2800 0    50   Input ~ 0
SpeedFadeur3
Wire Wire Line
	3000 2800 2800 2800
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
Text GLabel 6200 5200 0    50   Input ~ 0
SpeedFadeur4
Wire Wire Line
	6200 5200 6400 5200
Text GLabel 6200 4800 0    50   Input ~ 0
DIRAFadeur4
Text GLabel 6200 5000 0    50   Input ~ 0
DIRBFadeur4
Wire Wire Line
	6400 4800 6200 4800
Wire Wire Line
	6400 5000 6200 5000
Text GLabel 2800 2000 0    50   Input ~ 0
DIRAFadeur1
Text GLabel 2800 2100 0    50   Input ~ 0
DIRBFadeur1
Text GLabel 2800 2200 0    50   Input ~ 0
DIRAFadeur2
Text GLabel 2800 2300 0    50   Input ~ 0
DIRBFadeur2
Text GLabel 2800 2400 0    50   Input ~ 0
DIRAFadeur3
Text GLabel 2800 2500 0    50   Input ~ 0
DIRBFadeur3
Wire Wire Line
	2800 2000 3000 2000
Wire Wire Line
	2800 2100 3000 2100
Wire Wire Line
	2800 2200 3000 2200
Wire Wire Line
	2800 2300 3000 2300
Wire Wire Line
	2800 2400 3000 2400
Wire Wire Line
	2800 2500 3000 2500
Wire Wire Line
	2800 2600 3000 2600
Wire Wire Line
	2800 2700 3000 2700
$Comp
L Device:R_POT RV1
U 1 1 616DCE80
P 1150 5000
F 0 "RV1" V 943 5000 50  0000 C CNN
F 1 "R_POT" V 1034 5000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 1150 5000 50  0001 C CNN
F 3 "~" H 1150 5000 50  0001 C CNN
	1    1150 5000
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0123
U 1 1 616DF6E6
P 1350 5050
F 0 "#PWR0123" H 1350 4800 50  0001 C CNN
F 1 "GNDREF" H 1355 4877 50  0001 C CNN
F 2 "" H 1350 5050 50  0001 C CNN
F 3 "" H 1350 5050 50  0001 C CNN
	1    1350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4950 950  5000
Wire Wire Line
	950  5000 1000 5000
Wire Wire Line
	1300 5000 1350 5000
Wire Wire Line
	1350 5000 1350 5050
Text GLabel 1150 5250 3    50   Input ~ 0
POT1
Wire Wire Line
	1150 5150 1150 5250
$Comp
L Device:R_POT RV3
U 1 1 616FAF07
P 1150 5850
F 0 "RV3" V 943 5850 50  0000 C CNN
F 1 "R_POT" V 1034 5850 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 1150 5850 50  0001 C CNN
F 3 "~" H 1150 5850 50  0001 C CNN
	1    1150 5850
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0125
U 1 1 616FAF23
P 1350 5900
F 0 "#PWR0125" H 1350 5650 50  0001 C CNN
F 1 "GNDREF" H 1355 5727 50  0001 C CNN
F 2 "" H 1350 5900 50  0001 C CNN
F 3 "" H 1350 5900 50  0001 C CNN
	1    1350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5800 950  5850
Wire Wire Line
	950  5850 1000 5850
Wire Wire Line
	1300 5850 1350 5850
Wire Wire Line
	1350 5850 1350 5900
Wire Wire Line
	1150 6000 1150 6100
$Comp
L Device:R_POT RV2
U 1 1 61702880
P 1150 6700
F 0 "RV2" V 943 6700 50  0000 C CNN
F 1 "R_POT" V 1034 6700 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 1150 6700 50  0001 C CNN
F 3 "~" H 1150 6700 50  0001 C CNN
	1    1150 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	950  6650 950  6700
Wire Wire Line
	950  6700 1000 6700
Wire Wire Line
	1300 6700 1350 6700
Wire Wire Line
	1350 6700 1350 6750
Text GLabel 1150 6950 3    50   Input ~ 0
POT3
Wire Wire Line
	1150 6850 1150 6950
Text GLabel 2800 3300 0    50   Input ~ 0
POT1
Text GLabel 1150 6100 3    50   Input ~ 0
POT2
Text GLabel 2800 3400 0    50   Input ~ 0
POT2
Text GLabel 2800 3500 0    50   Input ~ 0
POT3
Wire Wire Line
	3000 3300 2800 3300
Wire Wire Line
	3000 3400 2800 3400
Wire Wire Line
	3000 3500 2800 3500
$Comp
L power:GNDREF #PWR0131
U 1 1 61775D37
P 2500 1050
F 0 "#PWR0131" H 2500 800 50  0001 C CNN
F 1 "GNDREF" H 2505 877 50  0001 C CNN
F 2 "" H 2500 1050 50  0001 C CNN
F 3 "" H 2500 1050 50  0001 C CNN
	1    2500 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1050 2500 1000
Wire Wire Line
	2500 1000 3000 1000
$Comp
L power:GNDREF #PWR0132
U 1 1 6177F7EC
P 2100 3150
F 0 "#PWR0132" H 2100 2900 50  0001 C CNN
F 1 "GNDREF" H 2105 2977 50  0001 C CNN
F 2 "" H 2100 3150 50  0001 C CNN
F 3 "" H 2100 3150 50  0001 C CNN
	1    2100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3100 2100 3150
$Comp
L power:GNDREF #PWR0133
U 1 1 6178AA32
P 5250 3350
F 0 "#PWR0133" H 5250 3100 50  0001 C CNN
F 1 "GNDREF" H 5255 3177 50  0001 C CNN
F 2 "" H 5250 3350 50  0001 C CNN
F 3 "" H 5250 3350 50  0001 C CNN
	1    5250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3300 5250 3300
Wire Wire Line
	5250 3300 5250 3350
Wire Wire Line
	4400 2300 5250 2300
Wire Wire Line
	5250 2300 5250 2250
Text GLabel 4600 2100 2    50   Input ~ 0
Touch2
Text GLabel 4600 2000 2    50   Input ~ 0
Touch3
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
Wire Wire Line
	8500 4250 8600 4250
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
$Comp
L Device:R_Small R2
U 1 1 61850B6E
P 8600 4100
F 0 "R2" H 8659 4146 50  0000 L CNN
F 1 "R_Small" H 8659 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8600 4100 50  0001 C CNN
F 3 "~" H 8600 4100 50  0001 C CNN
	1    8600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3900 8600 3950
Wire Wire Line
	8600 4200 8600 4250
Connection ~ 8600 4250
Wire Wire Line
	8600 4250 9050 4250
Text GLabel 9100 3950 2    50   Input ~ 0
Touch3
Connection ~ 8600 3950
Wire Wire Line
	8600 3950 8600 4000
Wire Wire Line
	9050 4200 9050 4250
Wire Wire Line
	7400 4400 7950 4400
$Comp
L teensy:Teensy3.2 U4
U 1 1 618D6ACC
P 4000 6000
F 0 "U4" H 4000 7637 60  0000 C CNN
F 1 "Teensy3.2" H 4000 7531 60  0000 C CNN
F 2 "KiCad_library:Teensy30_31_32_LC" H 4000 5250 60  0001 C CNN
F 3 "" H 4000 5250 60  0000 C CNN
	1    4000 6000
	1    0    0    -1  
$EndComp
Text GLabel 2850 5650 0    50   Input ~ 0
SpeedFadeur1
Text GLabel 2850 5450 0    50   Input ~ 0
DIRAFadeur1
Text GLabel 2850 5550 0    50   Input ~ 0
DIRBFadeur1
Text GLabel 2850 5750 0    50   Input ~ 0
SpeedFadeur2
Text GLabel 2850 5850 0    50   Input ~ 0
DIRAFadeur2
Text GLabel 2850 5950 0    50   Input ~ 0
DIRBFadeur2
Wire Wire Line
	2850 5450 3000 5450
Wire Wire Line
	2850 5550 3000 5550
Wire Wire Line
	2850 5650 3000 5650
Wire Wire Line
	2850 5750 3000 5750
Wire Wire Line
	2850 5850 3000 5850
Wire Wire Line
	2850 5950 3000 5950
Text GLabel 2850 5350 0    50   Input ~ 0
SpeedFadeur3
Text GLabel 2850 5150 0    50   Input ~ 0
DIRAFadeur3
Text GLabel 2850 5250 0    50   Input ~ 0
DIRBFadeur3
Wire Wire Line
	2850 5150 3000 5150
Wire Wire Line
	2850 5250 3000 5250
Wire Wire Line
	2850 5350 3000 5350
Text GLabel 4600 2200 2    50   Input ~ 0
Touch1
Text GLabel 2800 6950 0    50   Input ~ 0
Touch1
Wire Wire Line
	2800 6650 3000 6650
Text GLabel 2800 6650 0    50   Input ~ 0
POT1
Text GLabel 2800 6750 0    50   Input ~ 0
POT2
Text GLabel 2800 6850 0    50   Input ~ 0
POT3
Text GLabel 2800 7050 0    50   Input ~ 0
Touch2
Text GLabel 2800 7150 0    50   Input ~ 0
Touch3
Wire Wire Line
	2800 6750 3000 6750
Wire Wire Line
	2800 6850 3000 6850
Wire Wire Line
	2800 6950 3000 6950
Wire Wire Line
	2800 7050 3000 7050
Wire Wire Line
	2800 7150 3000 7150
$Comp
L power:GNDREF #PWR0127
U 1 1 6170289C
P 1350 6750
F 0 "#PWR0127" H 1350 6500 50  0001 C CNN
F 1 "GNDREF" H 1355 6577 50  0001 C CNN
F 2 "" H 1350 6750 50  0001 C CNN
F 3 "" H 1350 6750 50  0001 C CNN
	1    1350 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 61AB16AC
P 2800 4500
F 0 "#PWR0101" H 2800 4250 50  0001 C CNN
F 1 "GNDREF" H 2805 4327 50  0001 C CNN
F 2 "" H 2800 4500 50  0001 C CNN
F 3 "" H 2800 4500 50  0001 C CNN
	1    2800 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0103
U 1 1 61AB9A41
P 5150 7050
F 0 "#PWR0103" H 5150 6800 50  0001 C CNN
F 1 "GNDREF" H 5155 6877 50  0001 C CNN
F 2 "" H 5150 7050 50  0001 C CNN
F 3 "" H 5150 7050 50  0001 C CNN
	1    5150 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7050 5150 7050
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
P 9250 4200
F 0 "#PWR0113" H 9250 4050 50  0001 C CNN
F 1 "+3V3" H 9265 4373 50  0000 C CNN
F 2 "" H 9250 4200 50  0001 C CNN
F 3 "" H 9250 4200 50  0001 C CNN
	1    9250 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 61ACE53F
P 5250 2250
F 0 "#PWR0114" H 5250 2100 50  0001 C CNN
F 1 "+5V" H 5265 2423 50  0000 C CNN
F 2 "" H 5250 2250 50  0001 C CNN
F 3 "" H 5250 2250 50  0001 C CNN
	1    5250 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 61ACEDA0
P 2100 2950
F 0 "#PWR0115" H 2100 2800 50  0001 C CNN
F 1 "+5V" H 2115 3123 50  0000 C CNN
F 2 "" H 2100 2950 50  0001 C CNN
F 3 "" H 2100 2950 50  0001 C CNN
	1    2100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2950 2100 3000
Wire Wire Line
	2100 3000 3000 3000
Wire Wire Line
	3000 3100 2100 3100
$Comp
L power:+5V #PWR0117
U 1 1 61AE83ED
P 9050 4200
F 0 "#PWR0117" H 9050 4050 50  0001 C CNN
F 1 "+5V" H 9065 4373 50  0000 C CNN
F 2 "" H 9050 4200 50  0001 C CNN
F 3 "" H 9050 4200 50  0001 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 61AF3F72
P 950 6650
F 0 "#PWR0120" H 950 6500 50  0001 C CNN
F 1 "+5V" H 965 6823 50  0000 C CNN
F 2 "" H 950 6650 50  0001 C CNN
F 3 "" H 950 6650 50  0001 C CNN
	1    950  6650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 61AF4746
P 950 5800
F 0 "#PWR0121" H 950 5650 50  0001 C CNN
F 1 "+5V" H 965 5973 50  0000 C CNN
F 2 "" H 950 5800 50  0001 C CNN
F 3 "" H 950 5800 50  0001 C CNN
	1    950  5800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 61AF4EE5
P 950 4950
F 0 "#PWR0122" H 950 4800 50  0001 C CNN
F 1 "+5V" H 965 5123 50  0000 C CNN
F 2 "" H 950 4950 50  0001 C CNN
F 3 "" H 950 4950 50  0001 C CNN
	1    950  4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0124
U 1 1 61AF55F2
P 750 6650
F 0 "#PWR0124" H 750 6500 50  0001 C CNN
F 1 "+3V3" H 765 6823 50  0000 C CNN
F 2 "" H 750 6650 50  0001 C CNN
F 3 "" H 750 6650 50  0001 C CNN
	1    750  6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0126
U 1 1 61AF5E54
P 750 5800
F 0 "#PWR0126" H 750 5650 50  0001 C CNN
F 1 "+3V3" H 765 5973 50  0000 C CNN
F 2 "" H 750 5800 50  0001 C CNN
F 3 "" H 750 5800 50  0001 C CNN
	1    750  5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0128
U 1 1 61AF643A
P 750 4950
F 0 "#PWR0128" H 750 4800 50  0001 C CNN
F 1 "+3V3" H 765 5123 50  0000 C CNN
F 2 "" H 750 4950 50  0001 C CNN
F 3 "" H 750 4950 50  0001 C CNN
	1    750  4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 61AFE744
P 5600 6800
F 0 "#PWR0129" H 5600 6650 50  0001 C CNN
F 1 "+5V" H 5615 6973 50  0000 C CNN
F 2 "" H 5600 6800 50  0001 C CNN
F 3 "" H 5600 6800 50  0001 C CNN
	1    5600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6850 5600 6850
Wire Wire Line
	5600 6850 5600 6800
$Comp
L power:+3V3 #PWR0130
U 1 1 61B0E0A3
P 5300 7100
F 0 "#PWR0130" H 5300 6950 50  0001 C CNN
F 1 "+3V3" H 5315 7273 50  0000 C CNN
F 2 "" H 5300 7100 50  0001 C CNN
F 3 "" H 5300 7100 50  0001 C CNN
	1    5300 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7150 5050 7150
Wire Wire Line
	5050 7150 5050 7200
Wire Wire Line
	5050 7200 5300 7200
Wire Wire Line
	5300 7100 5300 7200
$Comp
L power:+3V3 #PWR0134
U 1 1 61B1DE83
P 2800 6150
F 0 "#PWR0134" H 2800 6000 50  0001 C CNN
F 1 "+3V3" H 2815 6323 50  0000 C CNN
F 2 "" H 2800 6150 50  0001 C CNN
F 3 "" H 2800 6150 50  0001 C CNN
	1    2800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6150 3000 6150
$Comp
L power:GNDREF #PWR0135
U 1 1 61B260B3
P 2800 6250
F 0 "#PWR0135" H 2800 6000 50  0001 C CNN
F 1 "GNDREF" H 2805 6077 50  0001 C CNN
F 2 "" H 2800 6250 50  0001 C CNN
F 3 "" H 2800 6250 50  0001 C CNN
	1    2800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6250 3000 6250
Wire Wire Line
	4400 2000 4600 2000
Wire Wire Line
	4600 2100 4400 2100
Wire Wire Line
	4400 2200 4600 2200
Text GLabel 4600 1900 2    50   Input ~ 0
Touch_master
Wire Wire Line
	4400 1900 4600 1900
$Comp
L Switch:SW_SPST SW2
U 1 1 6177916A
P 950 1100
F 0 "SW2" H 950 1335 50  0000 C CNN
F 1 "SW_SPST" H 950 1244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 950 1100 50  0001 C CNN
F 3 "~" H 950 1100 50  0001 C CNN
	1    950  1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0136
U 1 1 6178FE93
P 700 1150
F 0 "#PWR0136" H 700 900 50  0001 C CNN
F 1 "GNDREF" H 705 977 50  0001 C CNN
F 2 "" H 700 1150 50  0001 C CNN
F 3 "" H 700 1150 50  0001 C CNN
	1    700  1150
	1    0    0    -1  
$EndComp
Text GLabel 1350 1100 2    50   Input ~ 0
Button1
Wire Wire Line
	1250 1100 1150 1100
Wire Wire Line
	1350 1100 1250 1100
Connection ~ 1250 1100
Wire Wire Line
	1250 1050 1250 1100
$Comp
L Device:R_Small R4
U 1 1 61797591
P 1250 950
F 0 "R4" H 1309 996 50  0000 L CNN
F 1 "R_Small" H 1309 905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1250 950 50  0001 C CNN
F 3 "~" H 1250 950 50  0001 C CNN
	1    1250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 800  1250 850 
$Comp
L power:+5V #PWR0137
U 1 1 61799745
P 1250 800
F 0 "#PWR0137" H 1250 650 50  0001 C CNN
F 1 "+5V" H 1265 973 50  0000 C CNN
F 2 "" H 1250 800 50  0001 C CNN
F 3 "" H 1250 800 50  0001 C CNN
	1    1250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1150 700  1100
Wire Wire Line
	700  1100 750  1100
$Comp
L Switch:SW_SPST SW3
U 1 1 617CFF5E
P 950 1700
F 0 "SW3" H 950 1935 50  0000 C CNN
F 1 "SW_SPST" H 950 1844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 950 1700 50  0001 C CNN
F 3 "~" H 950 1700 50  0001 C CNN
	1    950  1700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0138
U 1 1 617CFF68
P 700 1750
F 0 "#PWR0138" H 700 1500 50  0001 C CNN
F 1 "GNDREF" H 705 1577 50  0001 C CNN
F 2 "" H 700 1750 50  0001 C CNN
F 3 "" H 700 1750 50  0001 C CNN
	1    700  1750
	1    0    0    -1  
$EndComp
Text GLabel 1350 1700 2    50   Input ~ 0
Button2
Wire Wire Line
	1250 1700 1150 1700
Wire Wire Line
	1350 1700 1250 1700
Connection ~ 1250 1700
Wire Wire Line
	1250 1650 1250 1700
$Comp
L Device:R_Small R5
U 1 1 617CFF77
P 1250 1550
F 0 "R5" H 1309 1596 50  0000 L CNN
F 1 "R_Small" H 1309 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1250 1550 50  0001 C CNN
F 3 "~" H 1250 1550 50  0001 C CNN
	1    1250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1400 1250 1450
$Comp
L power:+5V #PWR0139
U 1 1 617CFF82
P 1250 1400
F 0 "#PWR0139" H 1250 1250 50  0001 C CNN
F 1 "+5V" H 1265 1573 50  0000 C CNN
F 2 "" H 1250 1400 50  0001 C CNN
F 3 "" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1750 700  1700
Wire Wire Line
	700  1700 750  1700
$Comp
L Switch:SW_SPST SW4
U 1 1 617F2944
P 950 2300
F 0 "SW4" H 950 2535 50  0000 C CNN
F 1 "SW_SPST" H 950 2444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 950 2300 50  0001 C CNN
F 3 "~" H 950 2300 50  0001 C CNN
	1    950  2300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0140
U 1 1 617F294E
P 700 2350
F 0 "#PWR0140" H 700 2100 50  0001 C CNN
F 1 "GNDREF" H 705 2177 50  0001 C CNN
F 2 "" H 700 2350 50  0001 C CNN
F 3 "" H 700 2350 50  0001 C CNN
	1    700  2350
	1    0    0    -1  
$EndComp
Text GLabel 1350 2300 2    50   Input ~ 0
Button3
Wire Wire Line
	1250 2300 1150 2300
Wire Wire Line
	1350 2300 1250 2300
Connection ~ 1250 2300
Wire Wire Line
	1250 2250 1250 2300
$Comp
L Device:R_Small R6
U 1 1 617F295D
P 1250 2150
F 0 "R6" H 1309 2196 50  0000 L CNN
F 1 "R_Small" H 1309 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1250 2150 50  0001 C CNN
F 3 "~" H 1250 2150 50  0001 C CNN
	1    1250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2000 1250 2050
$Comp
L power:+5V #PWR0141
U 1 1 617F2968
P 1250 2000
F 0 "#PWR0141" H 1250 1850 50  0001 C CNN
F 1 "+5V" H 1265 2173 50  0000 C CNN
F 2 "" H 1250 2000 50  0001 C CNN
F 3 "" H 1250 2000 50  0001 C CNN
	1    1250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  2350 700  2300
Wire Wire Line
	700  2300 750  2300
$Comp
L Switch:SW_SPST SW5
U 1 1 617F2974
P 950 2900
F 0 "SW5" H 950 3135 50  0000 C CNN
F 1 "SW_SPST" H 950 3044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 950 2900 50  0001 C CNN
F 3 "~" H 950 2900 50  0001 C CNN
	1    950  2900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0142
U 1 1 617F297E
P 700 2950
F 0 "#PWR0142" H 700 2700 50  0001 C CNN
F 1 "GNDREF" H 705 2777 50  0001 C CNN
F 2 "" H 700 2950 50  0001 C CNN
F 3 "" H 700 2950 50  0001 C CNN
	1    700  2950
	1    0    0    -1  
$EndComp
Text GLabel 1350 2900 2    50   Input ~ 0
Button4
Wire Wire Line
	1250 2900 1150 2900
Wire Wire Line
	1350 2900 1250 2900
Connection ~ 1250 2900
Wire Wire Line
	1250 2850 1250 2900
$Comp
L Device:R_Small R7
U 1 1 617F298D
P 1250 2750
F 0 "R7" H 1309 2796 50  0000 L CNN
F 1 "R_Small" H 1309 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1250 2750 50  0001 C CNN
F 3 "~" H 1250 2750 50  0001 C CNN
	1    1250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2600 1250 2650
$Comp
L power:+5V #PWR0143
U 1 1 617F2998
P 1250 2600
F 0 "#PWR0143" H 1250 2450 50  0001 C CNN
F 1 "+5V" H 1265 2773 50  0000 C CNN
F 2 "" H 1250 2600 50  0001 C CNN
F 3 "" H 1250 2600 50  0001 C CNN
	1    1250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  2950 700  2900
Wire Wire Line
	700  2900 750  2900
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
P 900 3850
F 0 "SW1" H 843 3483 50  0000 C CNN
F 1 "Rotary_Encoder" H 843 3574 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E_Vertical_H20mm" H 750 4010 50  0001 C CNN
F 3 "~" H 900 4110 50  0001 C CNN
	1    900  3850
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0145
U 1 1 6184C024
P 1300 4050
F 0 "#PWR0145" H 1300 3800 50  0001 C CNN
F 1 "GNDREF" H 1305 3877 50  0001 C CNN
F 2 "" H 1300 4050 50  0001 C CNN
F 3 "" H 1300 4050 50  0001 C CNN
	1    1300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3850 1300 3850
Wire Wire Line
	1300 3850 1300 4050
Text GLabel 1400 3750 2    50   Input ~ 0
ROTB
Text GLabel 1400 3950 2    50   Input ~ 0
ROTA
Wire Wire Line
	1200 3750 1400 3750
Wire Wire Line
	1200 3950 1400 3950
Text GLabel 4600 2600 2    50   Input ~ 0
LED_BLUE
Text GLabel 4600 2500 2    50   Input ~ 0
LED_GREEN
Text GLabel 4600 2400 2    50   Input ~ 0
LED_RED
Wire Wire Line
	4400 2400 4600 2400
Wire Wire Line
	4400 2500 4600 2500
Wire Wire Line
	4400 2600 4600 2600
Text GLabel 2800 1200 0    50   Input ~ 0
ROTA
Text GLabel 2800 1300 0    50   Input ~ 0
ROTB
Wire Wire Line
	2800 1200 3000 1200
Wire Wire Line
	2800 1300 3000 1300
Text GLabel 4600 3000 2    50   Input ~ 0
Button1
Text GLabel 4600 2900 2    50   Input ~ 0
Button2
Text GLabel 4600 2800 2    50   Input ~ 0
Button3
Text GLabel 4600 2700 2    50   Input ~ 0
Button4
Wire Wire Line
	4400 2700 4600 2700
Wire Wire Line
	4400 2800 4600 2800
Wire Wire Line
	4400 2900 4600 2900
Wire Wire Line
	4400 3000 4600 3000
Text GLabel 5200 7250 2    50   Input ~ 0
LED_BLUE
Text GLabel 5200 7350 2    50   Input ~ 0
LED_GREEN
Wire Wire Line
	5000 7250 5200 7250
Wire Wire Line
	5000 7350 5200 7350
Text GLabel 2800 7350 0    50   Input ~ 0
LED_RED
Wire Wire Line
	2800 7350 3000 7350
Text GLabel 5200 6550 2    50   Input ~ 0
ROTB
Text GLabel 5200 6650 2    50   Input ~ 0
ROTA
Wire Wire Line
	5200 6550 5000 6550
Wire Wire Line
	5000 6650 5200 6650
Text GLabel 2850 4750 0    50   Input ~ 0
Button1
Text GLabel 2850 4850 0    50   Input ~ 0
Button2
Text GLabel 2850 4950 0    50   Input ~ 0
Button3
Text GLabel 2850 5050 0    50   Input ~ 0
Button4
Wire Wire Line
	3000 4650 3000 4450
Wire Wire Line
	3000 4450 2800 4450
Wire Wire Line
	2800 4450 2800 4500
Wire Wire Line
	2850 4750 3000 4750
Wire Wire Line
	2850 4850 3000 4850
Wire Wire Line
	2850 4950 3000 4950
Wire Wire Line
	2850 5050 3000 5050
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
L Device:R_Small R?
U 1 1 61AAFDB8
P 9450 5500
F 0 "R?" H 9509 5546 50  0000 L CNN
F 1 "R_Small" H 9509 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9450 5500 50  0001 C CNN
F 3 "~" H 9450 5500 50  0001 C CNN
	1    9450 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61AB03EC
P 9450 5700
F 0 "R?" H 9509 5746 50  0000 L CNN
F 1 "R_Small" H 9509 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9450 5700 50  0001 C CNN
F 3 "~" H 9450 5700 50  0001 C CNN
	1    9450 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61AB05A6
P 9450 5900
F 0 "R?" H 9509 5946 50  0000 L CNN
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
L Device:R_Small R?
U 1 1 61B1728F
P 8900 3950
F 0 "R?" H 8959 3996 50  0000 L CNN
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
	8500 1550 8600 1550
$Comp
L Device:R_Small R?
U 1 1 61B3676F
P 8600 1400
F 0 "R?" H 8659 1446 50  0000 L CNN
F 1 "R_Small" H 8659 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8600 1400 50  0001 C CNN
F 3 "~" H 8600 1400 50  0001 C CNN
	1    8600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1200 8600 1250
Wire Wire Line
	8600 1500 8600 1550
Connection ~ 8600 1550
Wire Wire Line
	8600 1550 9050 1550
Text GLabel 9100 1250 2    50   Input ~ 0
Touch1
Connection ~ 8600 1250
Wire Wire Line
	8600 1250 8600 1300
Wire Wire Line
	9050 1500 9050 1550
$Comp
L power:+3V3 #PWR?
U 1 1 61B36781
P 9250 1500
F 0 "#PWR?" H 9250 1350 50  0001 C CNN
F 1 "+3V3" H 9265 1673 50  0000 C CNN
F 2 "" H 9250 1500 50  0001 C CNN
F 3 "" H 9250 1500 50  0001 C CNN
	1    9250 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B3678B
P 9050 1500
F 0 "#PWR?" H 9050 1350 50  0001 C CNN
F 1 "+5V" H 9065 1673 50  0000 C CNN
F 2 "" H 9050 1500 50  0001 C CNN
F 3 "" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61B36795
P 8900 1250
F 0 "R?" H 8959 1296 50  0000 L CNN
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
	10250 1550 10350 1550
$Comp
L Device:R_Small R?
U 1 1 61B7A742
P 10350 1400
F 0 "R?" H 10409 1446 50  0000 L CNN
F 1 "R_Small" H 10409 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 10350 1400 50  0001 C CNN
F 3 "~" H 10350 1400 50  0001 C CNN
	1    10350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1200 10350 1250
Wire Wire Line
	10350 1500 10350 1550
Connection ~ 10350 1550
Wire Wire Line
	10350 1550 10800 1550
Text GLabel 10850 1250 2    50   Input ~ 0
Touch2
Connection ~ 10350 1250
Wire Wire Line
	10350 1250 10350 1300
Wire Wire Line
	10800 1500 10800 1550
$Comp
L power:+3V3 #PWR?
U 1 1 61B7A760
P 11000 1500
F 0 "#PWR?" H 11000 1350 50  0001 C CNN
F 1 "+3V3" H 11015 1673 50  0000 C CNN
F 2 "" H 11000 1500 50  0001 C CNN
F 3 "" H 11000 1500 50  0001 C CNN
	1    11000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61B7A76A
P 10800 1500
F 0 "#PWR?" H 10800 1350 50  0001 C CNN
F 1 "+5V" H 10815 1673 50  0000 C CNN
F 2 "" H 10800 1500 50  0001 C CNN
F 3 "" H 10800 1500 50  0001 C CNN
	1    10800 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61B7A774
P 10650 1250
F 0 "R?" H 10709 1296 50  0000 L CNN
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
$EndSCHEMATC
