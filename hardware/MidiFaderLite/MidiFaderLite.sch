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
P 3950 2350
F 0 "U1" H 3950 3987 60  0000 C CNN
F 1 "Teensy++2.0_(Arduino)" H 3950 3881 60  0000 C CNN
F 2 "KiCad_library:Teensy2.0++" H 3950 3881 60  0001 C CNN
F 3 "" H 4050 1700 60  0000 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D U2
U 1 1 615CEF23
P 7200 2100
F 0 "U2" H 7200 3281 50  0000 C CNN
F 1 "L293D" H 7200 3190 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7450 1350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 6900 2800 50  0001 C CNN
	1    7200 2100
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D U3
U 1 1 615D1087
P 7200 4800
F 0 "U3" H 7200 5981 50  0000 C CNN
F 1 "L293D" H 7200 5890 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7450 4050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 6900 5500 50  0001 C CNN
	1    7200 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0101
U 1 1 615D4084
P 7100 800
F 0 "#PWR0101" H 7100 650 50  0001 C CNN
F 1 "VDD" H 7117 973 50  0000 C CNN
F 2 "" H 7100 800 50  0001 C CNN
F 3 "" H 7100 800 50  0001 C CNN
	1    7100 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 615D61E4
P 7300 800
F 0 "#PWR0102" H 7300 650 50  0001 C CNN
F 1 "VCC" H 7317 973 50  0000 C CNN
F 2 "" H 7300 800 50  0001 C CNN
F 3 "" H 7300 800 50  0001 C CNN
	1    7300 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 800  7100 1100
Wire Wire Line
	7300 800  7300 1100
$Comp
L power:VDD #PWR0103
U 1 1 615D772E
P 7100 3500
F 0 "#PWR0103" H 7100 3350 50  0001 C CNN
F 1 "VDD" H 7117 3673 50  0000 C CNN
F 2 "" H 7100 3500 50  0001 C CNN
F 3 "" H 7100 3500 50  0001 C CNN
	1    7100 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 615D7738
P 7300 3500
F 0 "#PWR0104" H 7300 3350 50  0001 C CNN
F 1 "VCC" H 7317 3673 50  0000 C CNN
F 2 "" H 7300 3500 50  0001 C CNN
F 3 "" H 7300 3500 50  0001 C CNN
	1    7300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3500 7100 3800
Wire Wire Line
	7300 3500 7300 3800
$Comp
L power:GNDREF #PWR0105
U 1 1 615DC5CB
P 7200 3100
F 0 "#PWR0105" H 7200 2850 50  0001 C CNN
F 1 "GNDREF" H 7205 2927 50  0001 C CNN
F 2 "" H 7200 3100 50  0001 C CNN
F 3 "" H 7200 3100 50  0001 C CNN
	1    7200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2900 7000 3000
Wire Wire Line
	7000 3000 7100 3000
Wire Wire Line
	7400 3000 7400 2900
Wire Wire Line
	7300 2900 7300 3000
Connection ~ 7300 3000
Wire Wire Line
	7300 3000 7400 3000
Wire Wire Line
	7100 2900 7100 3000
Connection ~ 7100 3000
Wire Wire Line
	7100 3000 7200 3000
Wire Wire Line
	7200 3000 7200 3100
Connection ~ 7200 3000
Wire Wire Line
	7200 3000 7300 3000
$Comp
L power:GNDREF #PWR0106
U 1 1 615DFDB3
P 7200 5800
F 0 "#PWR0106" H 7200 5550 50  0001 C CNN
F 1 "GNDREF" H 7205 5627 50  0001 C CNN
F 2 "" H 7200 5800 50  0001 C CNN
F 3 "" H 7200 5800 50  0001 C CNN
	1    7200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5600 7000 5700
Wire Wire Line
	7000 5700 7100 5700
Wire Wire Line
	7400 5700 7400 5600
Wire Wire Line
	7300 5600 7300 5700
Connection ~ 7300 5700
Wire Wire Line
	7300 5700 7400 5700
Wire Wire Line
	7100 5600 7100 5700
Connection ~ 7100 5700
Wire Wire Line
	7100 5700 7200 5700
Wire Wire Line
	7200 5700 7200 5800
Connection ~ 7200 5700
Wire Wire Line
	7200 5700 7300 5700
$Comp
L Moving_fader:MFader MF1
U 1 1 615E9561
P 8150 800
F 0 "MF1" V 8089 -128 50  0000 R CNN
F 1 "MFader" V 7998 -128 50  0000 R CNN
F 2 "Moving_fader:MFader" H 8150 800 50  0001 C CNN
F 3 "" H 8150 800 50  0001 C CNN
	1    8150 800 
	0    -1   -1   0   
$EndComp
$Comp
L Moving_fader:MFader MF3
U 1 1 615ED868
P 9900 800
F 0 "MF3" V 9839 -128 50  0000 R CNN
F 1 "MFader" V 9748 -128 50  0000 R CNN
F 2 "Moving_fader:MFader" H 9900 800 50  0001 C CNN
F 3 "" H 9900 800 50  0001 C CNN
	1    9900 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 1500 7950 1500
Wire Wire Line
	7950 1500 7950 1200
Wire Wire Line
	7700 1700 8350 1700
Wire Wire Line
	8350 1700 8350 1200
Wire Wire Line
	7700 2100 9700 2100
Wire Wire Line
	9700 2100 9700 1200
Wire Wire Line
	7700 2300 10100 2300
Wire Wire Line
	10100 2300 10100 1200
$Comp
L power:VDD #PWR0107
U 1 1 615F949C
P 9300 1200
F 0 "#PWR0107" H 9300 1050 50  0001 C CNN
F 1 "VDD" H 9317 1373 50  0000 C CNN
F 2 "" H 9300 1200 50  0001 C CNN
F 3 "" H 9300 1200 50  0001 C CNN
	1    9300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0108
U 1 1 615FAC73
P 11050 1200
F 0 "#PWR0108" H 11050 1050 50  0001 C CNN
F 1 "VDD" H 11067 1373 50  0000 C CNN
F 2 "" H 11050 1200 50  0001 C CNN
F 3 "" H 11050 1200 50  0001 C CNN
	1    11050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1200 8900 1300
Wire Wire Line
	8900 1300 9300 1300
Wire Wire Line
	9300 1300 9300 1200
Wire Wire Line
	10650 1200 10650 1300
Wire Wire Line
	10650 1300 11050 1300
Wire Wire Line
	11050 1300 11050 1200
$Comp
L power:GNDREF #PWR0109
U 1 1 615FC777
P 8450 1400
F 0 "#PWR0109" H 8450 1150 50  0001 C CNN
F 1 "GNDREF" H 8455 1227 50  0001 C CNN
F 2 "" H 8450 1400 50  0001 C CNN
F 3 "" H 8450 1400 50  0001 C CNN
	1    8450 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0110
U 1 1 615FD83B
P 10200 1400
F 0 "#PWR0110" H 10200 1150 50  0001 C CNN
F 1 "GNDREF" H 10205 1227 50  0001 C CNN
F 2 "" H 10200 1400 50  0001 C CNN
F 3 "" H 10200 1400 50  0001 C CNN
	1    10200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1200 8450 1400
Wire Wire Line
	10200 1200 10200 1400
$Comp
L Moving_fader:MFader MF2
U 1 1 616017F5
P 8150 3500
F 0 "MF2" V 8089 2572 50  0000 R CNN
F 1 "MFader" V 7998 2572 50  0000 R CNN
F 2 "Moving_fader:MFader" H 8150 3500 50  0001 C CNN
F 3 "" H 8150 3500 50  0001 C CNN
	1    8150 3500
	0    -1   -1   0   
$EndComp
$Comp
L Moving_fader:MFader MF4
U 1 1 616017FF
P 9900 3500
F 0 "MF4" V 9839 2572 50  0000 R CNN
F 1 "MFader" V 9748 2572 50  0000 R CNN
F 2 "Moving_fader:MFader" H 9900 3500 50  0001 C CNN
F 3 "" H 9900 3500 50  0001 C CNN
	1    9900 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 4200 7950 4200
Wire Wire Line
	7950 4200 7950 3900
Wire Wire Line
	7700 4400 8350 4400
Wire Wire Line
	8350 4400 8350 3900
Wire Wire Line
	7700 4800 9700 4800
Wire Wire Line
	9700 4800 9700 3900
Wire Wire Line
	7700 5000 10100 5000
Wire Wire Line
	10100 5000 10100 3900
$Comp
L power:VDD #PWR0111
U 1 1 61601811
P 9300 3900
F 0 "#PWR0111" H 9300 3750 50  0001 C CNN
F 1 "VDD" H 9317 4073 50  0000 C CNN
F 2 "" H 9300 3900 50  0001 C CNN
F 3 "" H 9300 3900 50  0001 C CNN
	1    9300 3900
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0112
U 1 1 6160181B
P 11050 3900
F 0 "#PWR0112" H 11050 3750 50  0001 C CNN
F 1 "VDD" H 11067 4073 50  0000 C CNN
F 2 "" H 11050 3900 50  0001 C CNN
F 3 "" H 11050 3900 50  0001 C CNN
	1    11050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3900 8900 4000
Wire Wire Line
	8900 4000 9300 4000
Wire Wire Line
	9300 4000 9300 3900
Wire Wire Line
	10650 3900 10650 4000
Wire Wire Line
	10650 4000 11050 4000
Wire Wire Line
	11050 4000 11050 3900
$Comp
L power:GNDREF #PWR0113
U 1 1 6160182B
P 8450 4100
F 0 "#PWR0113" H 8450 3850 50  0001 C CNN
F 1 "GNDREF" H 8455 3927 50  0001 C CNN
F 2 "" H 8450 4100 50  0001 C CNN
F 3 "" H 8450 4100 50  0001 C CNN
	1    8450 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0114
U 1 1 61601835
P 10200 4100
F 0 "#PWR0114" H 10200 3850 50  0001 C CNN
F 1 "GNDREF" H 10205 3927 50  0001 C CNN
F 2 "" H 10200 4100 50  0001 C CNN
F 3 "" H 10200 4100 50  0001 C CNN
	1    10200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3900 8450 4100
Wire Wire Line
	10200 3900 10200 4100
Wire Wire Line
	8650 1200 8650 1400
Wire Wire Line
	8650 1400 8750 1400
Wire Wire Line
	10400 1200 10400 1400
Wire Wire Line
	10400 1400 10500 1400
Text GLabel 8750 1400 2    50   Input ~ 0
Slider1
Text GLabel 10500 1400 2    50   Input ~ 0
Slider2
Text GLabel 8750 4100 2    50   Input ~ 0
Slider3
Wire Wire Line
	8650 3900 8650 4100
Wire Wire Line
	8650 4100 8750 4100
Text GLabel 10500 4100 2    50   Input ~ 0
Slider4
Wire Wire Line
	10400 3900 10400 4100
Wire Wire Line
	10400 4100 10500 4100
Text GLabel 4850 3500 2    50   Input ~ 0
Slider1
Text GLabel 4850 3600 2    50   Input ~ 0
Slider2
Text GLabel 4850 3700 2    50   Input ~ 0
Slider3
Wire Wire Line
	4650 3500 4850 3500
Wire Wire Line
	4650 3600 4850 3600
Wire Wire Line
	4650 3700 4850 3700
Text GLabel 3050 3700 0    50   Input ~ 0
Slider4
Wire Wire Line
	3050 3700 3250 3700
Text GLabel 6500 1900 0    50   Input ~ 0
SpeedFadeur1
Wire Wire Line
	6500 1900 6700 1900
Text GLabel 3050 2600 0    50   Input ~ 0
SpeedFadeur1
Wire Wire Line
	4650 2400 4850 2400
Text GLabel 3050 2700 0    50   Input ~ 0
SpeedFadeur2
Text GLabel 3050 2800 0    50   Input ~ 0
SpeedFadeur3
Wire Wire Line
	4650 2500 4850 2500
Wire Wire Line
	4650 2600 4850 2600
Text GLabel 4850 2600 2    50   Input ~ 0
SpeedFadeur4
Wire Wire Line
	3250 2800 3050 2800
Text GLabel 6500 1500 0    50   Input ~ 0
DIRAFadeur1
Text GLabel 6500 1700 0    50   Input ~ 0
DIRBFadeur1
Wire Wire Line
	6700 1500 6500 1500
Wire Wire Line
	6700 1700 6500 1700
Text GLabel 6500 2500 0    50   Input ~ 0
SpeedFadeur2
Wire Wire Line
	6500 2500 6700 2500
Text GLabel 6500 2100 0    50   Input ~ 0
DIRAFadeur2
Text GLabel 6500 2300 0    50   Input ~ 0
DIRBFadeur2
Wire Wire Line
	6700 2100 6500 2100
Wire Wire Line
	6700 2300 6500 2300
Text GLabel 6500 4600 0    50   Input ~ 0
SpeedFadeur3
Wire Wire Line
	6500 4600 6700 4600
Text GLabel 6500 4200 0    50   Input ~ 0
DIRAFadeur3
Text GLabel 6500 4400 0    50   Input ~ 0
DIRBFadeur3
Wire Wire Line
	6700 4200 6500 4200
Wire Wire Line
	6700 4400 6500 4400
Text GLabel 6500 5200 0    50   Input ~ 0
SpeedFadeur4
Wire Wire Line
	6500 5200 6700 5200
Text GLabel 6500 4800 0    50   Input ~ 0
DIRAFadeur4
Text GLabel 6500 5000 0    50   Input ~ 0
DIRBFadeur4
Wire Wire Line
	6700 4800 6500 4800
Wire Wire Line
	6700 5000 6500 5000
Text GLabel 3050 2000 0    50   Input ~ 0
DIRAFadeur1
Text GLabel 3050 2100 0    50   Input ~ 0
DIRBFadeur1
Text GLabel 3050 2200 0    50   Input ~ 0
DIRAFadeur2
Text GLabel 3050 2300 0    50   Input ~ 0
DIRBFadeur2
Wire Wire Line
	4650 2700 4850 2700
Wire Wire Line
	4650 2800 4850 2800
Wire Wire Line
	4650 2900 4850 2900
Wire Wire Line
	4650 3000 4850 3000
Text GLabel 3050 2400 0    50   Input ~ 0
DIRAFadeur3
Text GLabel 3050 2500 0    50   Input ~ 0
DIRBFadeur3
Wire Wire Line
	3050 2000 3250 2000
Wire Wire Line
	3050 2100 3250 2100
Wire Wire Line
	3050 2200 3250 2200
Wire Wire Line
	3050 2300 3250 2300
Wire Wire Line
	3050 2400 3250 2400
Wire Wire Line
	3050 2500 3250 2500
Wire Wire Line
	3050 2600 3250 2600
Wire Wire Line
	3050 2700 3250 2700
Text GLabel 4850 2700 2    50   Input ~ 0
DIRAFadeur4
Text GLabel 4850 2800 2    50   Input ~ 0
DIRBFadeur4
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 6165B4B7
P 1150 950
F 0 "SW1" H 1150 1317 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 1150 1226 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 1000 1110 50  0001 C CNN
F 3 "~" H 1150 1210 50  0001 C CNN
	1    1150 950 
	1    0    0    -1  
$EndComp
Text GLabel 750  850  0    50   Input ~ 0
RA1
Text GLabel 750  1050 0    50   Input ~ 0
RB1
Wire Wire Line
	750  850  850  850 
Wire Wire Line
	750  1050 850  1050
$Comp
L power:GNDREF #PWR0115
U 1 1 616753C9
P 800 1100
F 0 "#PWR0115" H 800 850 50  0001 C CNN
F 1 "GNDREF" H 805 927 50  0001 C CNN
F 2 "" H 800 1100 50  0001 C CNN
F 3 "" H 800 1100 50  0001 C CNN
	1    800  1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1100 800  950 
Wire Wire Line
	800  950  850  950 
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 61679CD7
P 1150 1600
F 0 "SW2" H 1150 1967 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 1150 1876 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 1000 1760 50  0001 C CNN
F 3 "~" H 1150 1860 50  0001 C CNN
	1    1150 1600
	1    0    0    -1  
$EndComp
Text GLabel 750  1500 0    50   Input ~ 0
RA2
Text GLabel 750  1700 0    50   Input ~ 0
RB2
Wire Wire Line
	750  1500 850  1500
Wire Wire Line
	750  1700 850  1700
$Comp
L power:GNDREF #PWR0116
U 1 1 61679CE5
P 800 1750
F 0 "#PWR0116" H 800 1500 50  0001 C CNN
F 1 "GNDREF" H 805 1577 50  0001 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1750 800  1600
Wire Wire Line
	800  1600 850  1600
$Comp
L Device:Rotary_Encoder_Switch SW3
U 1 1 6167F014
P 1150 2250
F 0 "SW3" H 1150 2617 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 1150 2526 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 1000 2410 50  0001 C CNN
F 3 "~" H 1150 2510 50  0001 C CNN
	1    1150 2250
	1    0    0    -1  
$EndComp
Text GLabel 750  2150 0    50   Input ~ 0
RA3
Text GLabel 750  2350 0    50   Input ~ 0
RB3
Wire Wire Line
	750  2150 850  2150
Wire Wire Line
	750  2350 850  2350
$Comp
L power:GNDREF #PWR0117
U 1 1 6167F058
P 800 2400
F 0 "#PWR0117" H 800 2150 50  0001 C CNN
F 1 "GNDREF" H 805 2227 50  0001 C CNN
F 2 "" H 800 2400 50  0001 C CNN
F 3 "" H 800 2400 50  0001 C CNN
	1    800  2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2400 800  2250
Wire Wire Line
	800  2250 850  2250
$Comp
L Device:Rotary_Encoder_Switch SW4
U 1 1 6167F064
P 1150 2900
F 0 "SW4" H 1150 3267 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 1150 3176 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 1000 3060 50  0001 C CNN
F 3 "~" H 1150 3160 50  0001 C CNN
	1    1150 2900
	1    0    0    -1  
$EndComp
Text GLabel 750  2800 0    50   Input ~ 0
RA4
Text GLabel 750  3000 0    50   Input ~ 0
RB4
Wire Wire Line
	750  2800 850  2800
Wire Wire Line
	750  3000 850  3000
$Comp
L power:GNDREF #PWR0118
U 1 1 6167F072
P 800 3050
F 0 "#PWR0118" H 800 2800 50  0001 C CNN
F 1 "GNDREF" H 805 2877 50  0001 C CNN
F 2 "" H 800 3050 50  0001 C CNN
F 3 "" H 800 3050 50  0001 C CNN
	1    800  3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3050 800  2900
Wire Wire Line
	800  2900 850  2900
Text GLabel 3050 1200 0    50   Input ~ 0
RA1
Text GLabel 3050 1300 0    50   Input ~ 0
RB1
Text GLabel 3050 1400 0    50   Input ~ 0
RA4
Text GLabel 3050 1500 0    50   Input ~ 0
RB4
Text GLabel 4850 3200 2    50   Input ~ 0
RA2
Text GLabel 4850 3100 2    50   Input ~ 0
RB2
Wire Wire Line
	4850 3100 4650 3100
Wire Wire Line
	4850 3200 4650 3200
Text GLabel 4850 1100 2    50   Input ~ 0
RA4
Text GLabel 4850 1000 2    50   Input ~ 0
RB4
Wire Wire Line
	4650 1100 4850 1100
Wire Wire Line
	4650 1000 4850 1000
$Comp
L power:GNDREF #PWR0119
U 1 1 6169B187
P 1500 1100
F 0 "#PWR0119" H 1500 850 50  0001 C CNN
F 1 "GNDREF" H 1505 927 50  0001 C CNN
F 2 "" H 1500 1100 50  0001 C CNN
F 3 "" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0120
U 1 1 6169B84E
P 1500 1750
F 0 "#PWR0120" H 1500 1500 50  0001 C CNN
F 1 "GNDREF" H 1505 1577 50  0001 C CNN
F 2 "" H 1500 1750 50  0001 C CNN
F 3 "" H 1500 1750 50  0001 C CNN
	1    1500 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0121
U 1 1 6169BEF1
P 1500 2400
F 0 "#PWR0121" H 1500 2150 50  0001 C CNN
F 1 "GNDREF" H 1505 2227 50  0001 C CNN
F 2 "" H 1500 2400 50  0001 C CNN
F 3 "" H 1500 2400 50  0001 C CNN
	1    1500 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0122
U 1 1 6169C4B9
P 1500 3050
F 0 "#PWR0122" H 1500 2800 50  0001 C CNN
F 1 "GNDREF" H 1505 2877 50  0001 C CNN
F 2 "" H 1500 3050 50  0001 C CNN
F 3 "" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1050 1500 1050
Wire Wire Line
	1500 1050 1500 1100
Wire Wire Line
	1450 1700 1500 1700
Wire Wire Line
	1500 1700 1500 1750
Wire Wire Line
	1450 2350 1500 2350
Wire Wire Line
	1500 2350 1500 2400
Wire Wire Line
	1450 3000 1500 3000
Wire Wire Line
	1500 3000 1500 3050
Text GLabel 1550 850  2    50   Input ~ 0
RS1
Text GLabel 1550 1500 2    50   Input ~ 0
RS2
Text GLabel 1550 2150 2    50   Input ~ 0
RS3
Text GLabel 1550 2800 2    50   Input ~ 0
RS4
Wire Wire Line
	1450 850  1550 850 
Wire Wire Line
	1450 1500 1550 1500
Wire Wire Line
	1450 2150 1550 2150
Wire Wire Line
	1450 2800 1550 2800
Text GLabel 4850 1800 2    50   Input ~ 0
RS1
Text GLabel 4850 1700 2    50   Input ~ 0
RS2
Text GLabel 4850 1600 2    50   Input ~ 0
RS3
Text GLabel 4850 1500 2    50   Input ~ 0
RS4
Wire Wire Line
	4650 1500 4850 1500
Wire Wire Line
	4650 1600 4850 1600
Wire Wire Line
	4650 1700 4850 1700
Wire Wire Line
	4650 1800 4850 1800
$Comp
L Device:R_POT RV1
U 1 1 616DCE80
P 950 3500
F 0 "RV1" V 743 3500 50  0000 C CNN
F 1 "R_POT" V 834 3500 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 950 3500 50  0001 C CNN
F 3 "~" H 950 3500 50  0001 C CNN
	1    950  3500
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0123
U 1 1 616DF6E6
P 1150 3550
F 0 "#PWR0123" H 1150 3300 50  0001 C CNN
F 1 "GNDREF" H 1155 3377 50  0001 C CNN
F 2 "" H 1150 3550 50  0001 C CNN
F 3 "" H 1150 3550 50  0001 C CNN
	1    1150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0124
U 1 1 616DFD94
P 750 3450
F 0 "#PWR0124" H 750 3300 50  0001 C CNN
F 1 "VDD" H 767 3623 50  0000 C CNN
F 2 "" H 750 3450 50  0001 C CNN
F 3 "" H 750 3450 50  0001 C CNN
	1    750  3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  3450 750  3500
Wire Wire Line
	750  3500 800  3500
Wire Wire Line
	1100 3500 1150 3500
Wire Wire Line
	1150 3500 1150 3550
Text GLabel 950  3750 3    50   Input ~ 0
POT1
Wire Wire Line
	950  3650 950  3750
$Comp
L Device:R_POT RV3
U 1 1 616FAF07
P 1450 3500
F 0 "RV3" V 1243 3500 50  0000 C CNN
F 1 "R_POT" V 1334 3500 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 1450 3500 50  0001 C CNN
F 3 "~" H 1450 3500 50  0001 C CNN
	1    1450 3500
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0125
U 1 1 616FAF23
P 1650 3550
F 0 "#PWR0125" H 1650 3300 50  0001 C CNN
F 1 "GNDREF" H 1655 3377 50  0001 C CNN
F 2 "" H 1650 3550 50  0001 C CNN
F 3 "" H 1650 3550 50  0001 C CNN
	1    1650 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0126
U 1 1 616FAF2D
P 1250 3450
F 0 "#PWR0126" H 1250 3300 50  0001 C CNN
F 1 "VDD" H 1267 3623 50  0000 C CNN
F 2 "" H 1250 3450 50  0001 C CNN
F 3 "" H 1250 3450 50  0001 C CNN
	1    1250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3450 1250 3500
Wire Wire Line
	1250 3500 1300 3500
Wire Wire Line
	1600 3500 1650 3500
Wire Wire Line
	1650 3500 1650 3550
Wire Wire Line
	1450 3650 1450 3750
$Comp
L Device:R_POT RV2
U 1 1 61702880
P 950 4300
F 0 "RV2" V 743 4300 50  0000 C CNN
F 1 "R_POT" V 834 4300 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 950 4300 50  0001 C CNN
F 3 "~" H 950 4300 50  0001 C CNN
	1    950  4300
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0127
U 1 1 6170289C
P 1150 4350
F 0 "#PWR0127" H 1150 4100 50  0001 C CNN
F 1 "GNDREF" H 1155 4177 50  0001 C CNN
F 2 "" H 1150 4350 50  0001 C CNN
F 3 "" H 1150 4350 50  0001 C CNN
	1    1150 4350
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0128
U 1 1 617028A6
P 750 4250
F 0 "#PWR0128" H 750 4100 50  0001 C CNN
F 1 "VDD" H 767 4423 50  0000 C CNN
F 2 "" H 750 4250 50  0001 C CNN
F 3 "" H 750 4250 50  0001 C CNN
	1    750  4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  4250 750  4300
Wire Wire Line
	750  4300 800  4300
Wire Wire Line
	1100 4300 1150 4300
Wire Wire Line
	1150 4300 1150 4350
Text GLabel 950  4550 3    50   Input ~ 0
POT3
Wire Wire Line
	950  4450 950  4550
$Comp
L Device:R_POT RV4
U 1 1 617028B6
P 1450 4300
F 0 "RV4" V 1243 4300 50  0000 C CNN
F 1 "R_POT" V 1334 4300 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 1450 4300 50  0001 C CNN
F 3 "~" H 1450 4300 50  0001 C CNN
	1    1450 4300
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0129
U 1 1 617028C0
P 1650 4350
F 0 "#PWR0129" H 1650 4100 50  0001 C CNN
F 1 "GNDREF" H 1655 4177 50  0001 C CNN
F 2 "" H 1650 4350 50  0001 C CNN
F 3 "" H 1650 4350 50  0001 C CNN
	1    1650 4350
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0130
U 1 1 617028CA
P 1250 4250
F 0 "#PWR0130" H 1250 4100 50  0001 C CNN
F 1 "VDD" H 1267 4423 50  0000 C CNN
F 2 "" H 1250 4250 50  0001 C CNN
F 3 "" H 1250 4250 50  0001 C CNN
	1    1250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4250 1250 4300
Wire Wire Line
	1250 4300 1300 4300
Wire Wire Line
	1600 4300 1650 4300
Wire Wire Line
	1650 4300 1650 4350
Text GLabel 1450 4550 3    50   Input ~ 0
POT4
Wire Wire Line
	1450 4450 1450 4550
Text GLabel 3050 3600 0    50   Input ~ 0
POT1
Text GLabel 1450 3750 3    50   Input ~ 0
POT2
Text GLabel 3050 3500 0    50   Input ~ 0
POT2
Text GLabel 3050 3400 0    50   Input ~ 0
POT3
Text GLabel 3050 3300 0    50   Input ~ 0
POT4
Wire Wire Line
	3250 3300 3050 3300
Wire Wire Line
	3250 3400 3050 3400
Wire Wire Line
	3250 3500 3050 3500
Wire Wire Line
	3250 3600 3050 3600
Wire Wire Line
	3050 1200 3250 1200
Wire Wire Line
	3050 1300 3250 1300
Wire Wire Line
	3050 1400 3250 1400
Wire Wire Line
	3050 1500 3250 1500
$Comp
L power:GNDREF #PWR0131
U 1 1 61775D37
P 2750 1050
F 0 "#PWR0131" H 2750 800 50  0001 C CNN
F 1 "GNDREF" H 2755 877 50  0001 C CNN
F 2 "" H 2750 1050 50  0001 C CNN
F 3 "" H 2750 1050 50  0001 C CNN
	1    2750 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1050 2750 1000
Wire Wire Line
	2750 1000 3250 1000
$Comp
L power:GNDREF #PWR0132
U 1 1 6177F7EC
P 2500 3150
F 0 "#PWR0132" H 2500 2900 50  0001 C CNN
F 1 "GNDREF" H 2505 2977 50  0001 C CNN
F 2 "" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3100 2500 3100
Wire Wire Line
	2500 3100 2500 3150
$Comp
L power:GNDREF #PWR0133
U 1 1 6178AA32
P 5500 3350
F 0 "#PWR0133" H 5500 3100 50  0001 C CNN
F 1 "GNDREF" H 5505 3177 50  0001 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3300 5500 3300
Wire Wire Line
	5500 3300 5500 3350
$Comp
L power:VDD #PWR0134
U 1 1 61795046
P 5500 2250
F 0 "#PWR0134" H 5500 2100 50  0001 C CNN
F 1 "VDD" H 5517 2423 50  0000 C CNN
F 2 "" H 5500 2250 50  0001 C CNN
F 3 "" H 5500 2250 50  0001 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2300 5500 2300
Wire Wire Line
	5500 2300 5500 2250
$Comp
L Switch:SW_SPST SW5
U 1 1 617ACE97
P 8950 1850
F 0 "SW5" H 8950 2085 50  0000 C CNN
F 1 "SW_SPST" H 8950 1994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 8950 1850 50  0001 C CNN
F 3 "~" H 8950 1850 50  0001 C CNN
	1    8950 1850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW7
U 1 1 617AF374
P 10700 1850
F 0 "SW7" H 10700 2085 50  0000 C CNN
F 1 "SW_SPST" H 10700 1994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 10700 1850 50  0001 C CNN
F 3 "~" H 10700 1850 50  0001 C CNN
	1    10700 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0135
U 1 1 617B0B5E
P 9200 1900
F 0 "#PWR0135" H 9200 1650 50  0001 C CNN
F 1 "GNDREF" H 9205 1727 50  0001 C CNN
F 2 "" H 9200 1900 50  0001 C CNN
F 3 "" H 9200 1900 50  0001 C CNN
	1    9200 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0136
U 1 1 617B1841
P 10950 1900
F 0 "#PWR0136" H 10950 1650 50  0001 C CNN
F 1 "GNDREF" H 10955 1727 50  0001 C CNN
F 2 "" H 10950 1900 50  0001 C CNN
F 3 "" H 10950 1900 50  0001 C CNN
	1    10950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1850 10950 1850
Wire Wire Line
	10950 1850 10950 1900
Wire Wire Line
	9150 1850 9200 1850
Wire Wire Line
	9200 1850 9200 1900
Text GLabel 8700 1850 0    50   Input ~ 0
ControlSwitch1
Wire Wire Line
	8700 1850 8750 1850
Text GLabel 10450 1850 0    50   Input ~ 0
ControlSwitch2
Wire Wire Line
	10450 1850 10500 1850
$Comp
L Switch:SW_SPST SW6
U 1 1 617D913E
P 8950 4550
F 0 "SW6" H 8950 4785 50  0000 C CNN
F 1 "SW_SPST" H 8950 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 8950 4550 50  0001 C CNN
F 3 "~" H 8950 4550 50  0001 C CNN
	1    8950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0137
U 1 1 617D9148
P 9200 4600
F 0 "#PWR0137" H 9200 4350 50  0001 C CNN
F 1 "GNDREF" H 9205 4427 50  0001 C CNN
F 2 "" H 9200 4600 50  0001 C CNN
F 3 "" H 9200 4600 50  0001 C CNN
	1    9200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4550 9200 4550
Wire Wire Line
	9200 4550 9200 4600
Text GLabel 8700 4550 0    50   Input ~ 0
ControlSwitch3
Wire Wire Line
	8700 4550 8750 4550
$Comp
L Switch:SW_SPST SW8
U 1 1 617E8867
P 10700 4550
F 0 "SW8" H 10700 4785 50  0000 C CNN
F 1 "SW_SPST" H 10700 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 10700 4550 50  0001 C CNN
F 3 "~" H 10700 4550 50  0001 C CNN
	1    10700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0138
U 1 1 617E8871
P 10950 4600
F 0 "#PWR0138" H 10950 4350 50  0001 C CNN
F 1 "GNDREF" H 10955 4427 50  0001 C CNN
F 2 "" H 10950 4600 50  0001 C CNN
F 3 "" H 10950 4600 50  0001 C CNN
	1    10950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 4550 10950 4550
Wire Wire Line
	10950 4550 10950 4600
Text GLabel 10450 4550 0    50   Input ~ 0
ControlSwitch4
Wire Wire Line
	10450 4550 10500 4550
Text GLabel 4800 1900 2    50   Input ~ 0
ControlSwitch1
Text GLabel 4800 2000 2    50   Input ~ 0
ControlSwitch2
Text GLabel 4800 2100 2    50   Input ~ 0
ControlSwitch3
Text GLabel 4800 2200 2    50   Input ~ 0
ControlSwitch4
Wire Wire Line
	4650 1900 4800 1900
Wire Wire Line
	4650 2000 4800 2000
Wire Wire Line
	4650 2100 4800 2100
Wire Wire Line
	4650 2200 4800 2200
$EndSCHEMATC
