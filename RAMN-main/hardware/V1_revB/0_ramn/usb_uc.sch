EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title "RAMN: Resistant Automotive Miniature Network V1.0"
Date "2024-02-20"
Rev "B2L"
Comp "Copyright (c) 2024 TOYOTA MOTOR CORPORATION. ALL RIGHTS RESERVED."
Comment1 ""
Comment2 ""
Comment3 "License: CC BY-SA 4.0"
Comment4 "https://github.com/toyotainfotech/ramn"
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5D99D3E9
P 2350 2100
AR Path="/5D99D3E9" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D99D3E9" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 2350 1850 50  0001 C CNN
F 1 "GND" H 2355 1927 50  0000 C CNN
F 2 "" H 2350 2100 50  0001 C CNN
F 3 "" H 2350 2100 50  0001 C CNN
	1    2350 2100
	1    0    0    -1  
$EndComp
Text Notes 2550 2200 0    50   ~ 0
internal pull-ups\nSTBY high -> transceiver OFF
Wire Wire Line
	1850 1900 1600 1900
Wire Wire Line
	800  1800 1850 1800
Wire Wire Line
	1750 1600 1850 1600
Wire Wire Line
	1750 1500 1850 1500
Text Label 1750 1500 2    50   ~ 0
CAN1_TX
Text Label 1750 1600 2    50   ~ 0
CAN1_RX
Text Label 1600 1900 2    50   ~ 0
CAN_STB
Wire Wire Line
	3400 1800 3800 1800
Connection ~ 3400 1800
Wire Wire Line
	3400 1900 3400 1800
Wire Wire Line
	2850 1800 3400 1800
Wire Wire Line
	3400 1900 3800 1900
Text HLabel 3800 1900 2    50   Output ~ 0
CANL_OUT
Text HLabel 3800 1800 2    50   Input ~ 0
CANL_IN
Wire Wire Line
	3400 1600 3800 1600
Wire Wire Line
	3400 1500 3800 1500
Text HLabel 3800 1600 2    50   Output ~ 0
CANH_OUT
Text HLabel 3800 1500 2    50   Input ~ 0
CANH_IN
Connection ~ 3400 1600
Wire Wire Line
	3400 1600 3400 1500
Wire Wire Line
	2850 1600 3400 1600
Connection ~ 800  1800
Wire Wire Line
	800  1750 800  1800
$Comp
L power:+5V #PWR08
U 1 1 5D95FBAC
P 2350 800
F 0 "#PWR08" H 2350 650 50  0001 C CNN
F 1 "+5V" H 2365 973 50  0000 C CNN
F 2 "" H 2350 800 50  0001 C CNN
F 3 "" H 2350 800 50  0001 C CNN
	1    2350 800 
	1    0    0    -1  
$EndComp
Connection ~ 2350 900 
Wire Wire Line
	2350 800  2350 900 
Wire Wire Line
	2350 900  2350 1300
Wire Wire Line
	2600 900  2350 900 
Wire Wire Line
	2600 1100 2600 1150
$Comp
L power:GND #PWR?
U 1 1 5D956862
P 2600 1150
AR Path="/5D956862" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D956862" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 2600 900 50  0001 C CNN
F 1 "GND" H 2605 977 50  0000 C CNN
F 2 "" H 2600 1150 50  0001 C CNN
F 3 "" H 2600 1150 50  0001 C CNN
	1    2600 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D95685C
P 2600 1000
AR Path="/5D95685C" Ref="C?"  Part="1" 
AR Path="/5D80E812/5D95685C" Ref="C?"  Part="1" 
AR Path="/5D8BFFCE/5D95685C" Ref="C4"  Part="1" 
F 0 "C4" H 2692 1046 50  0000 L CNN
F 1 "100nF" H 2692 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2600 1000 50  0001 C CNN
F 3 "~" H 2600 1000 50  0001 C CNN
F 4 "" H 2600 1000 50  0001 C CNN "not mounted"
	1    2600 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2000 800  2050
$Comp
L power:GND #PWR?
U 1 1 5D9525C9
P 800 2050
AR Path="/5D9525C9" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D9525C9" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 800 1800 50  0001 C CNN
F 1 "GND" H 805 1877 50  0000 C CNN
F 2 "" H 800 2050 50  0001 C CNN
F 3 "" H 800 2050 50  0001 C CNN
	1    800  2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D94DE76
P 800 1900
AR Path="/5D94DE76" Ref="C?"  Part="1" 
AR Path="/5D80E812/5D94DE76" Ref="C?"  Part="1" 
AR Path="/5D8BFFCE/5D94DE76" Ref="C3"  Part="1" 
F 0 "C3" H 892 1946 50  0000 L CNN
F 1 "100nF" H 892 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 800 1900 50  0001 C CNN
F 3 "~" H 800 1900 50  0001 C CNN
F 4 "" H 800 1900 50  0001 C CNN "not mounted"
	1    800  1900
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2562-E-SN U1
U 1 1 5D94DB05
P 2350 1700
F 0 "U1" H 1850 2200 50  0000 C CNN
F 1 "ATA6561-GAQW-N" H 1900 2100 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2350 1200 50  0001 C CIN
F 3 "" H 2350 1700 50  0001 C CNN
	1    2350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4000 8300 4000
Wire Wire Line
	8150 3900 8300 3900
Wire Wire Line
	8150 3800 8300 3800
Wire Wire Line
	8100 5300 8300 5300
Wire Wire Line
	8100 5200 8300 5200
Wire Wire Line
	8100 5100 8300 5100
Wire Wire Line
	8100 5000 8300 5000
Wire Wire Line
	8100 4900 8300 4900
Wire Wire Line
	8100 4800 8300 4800
Wire Wire Line
	9500 4600 9650 4600
Wire Wire Line
	9500 4500 9650 4500
Wire Wire Line
	9500 4400 9650 4400
Wire Wire Line
	9500 4300 9650 4300
Wire Wire Line
	9500 4200 9650 4200
Wire Wire Line
	9500 4100 9650 4100
Wire Wire Line
	9500 4000 9650 4000
Text Label 9650 4600 0    50   ~ 0
PA8
Text Label 8100 5300 2    50   ~ 0
PB15
Text Label 8100 5200 2    50   ~ 0
PB14
Text Label 8100 5100 2    50   ~ 0
PB13
Text Label 8100 5000 2    50   ~ 0
PB12
Text Label 8100 4900 2    50   ~ 0
PB11
Text Label 8100 4800 2    50   ~ 0
PB10
Text Label 8150 4000 2    50   ~ 0
PB2
Text Label 8150 3900 2    50   ~ 0
PB1
Text Label 8150 3800 2    50   ~ 0
PB0
Text Label 9650 4500 0    50   ~ 0
PA7
Text Label 9650 4400 0    50   ~ 0
PA6
Text Label 9650 4300 0    50   ~ 0
PA5
Text Label 9650 4200 0    50   ~ 0
PA4
Text Label 9650 4100 0    50   ~ 0
PA3
Text Label 9650 4000 0    50   ~ 0
PA2
Text Label 9650 3900 0    50   ~ 0
PA1
Wire Wire Line
	9500 3900 9650 3900
$Comp
L Connector:TestPoint BOOT?
U 1 1 5D8FB37A
P 6900 3750
AR Path="/5D8FB37A" Ref="BOOT?"  Part="1" 
AR Path="/5D80E812/5D8FB37A" Ref="BOOT?"  Part="1" 
AR Path="/5D8BFFCE/5D8FB37A" Ref="BOOT0"  Part="1" 
F 0 "BOOT0" V 6900 3950 50  0000 L CNN
F 1 " " H 6958 3777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7100 3750 50  0001 C CNN
F 3 "~" H 7100 3750 50  0001 C CNN
	1    6900 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 4900 9500 4900
Wire Wire Line
	9500 5000 9650 5000
Text HLabel 9650 4900 2    50   BiDi ~ 0
USB_D-
Text HLabel 9650 3800 2    50   Output ~ 0
ECU_3_EN
Text HLabel 8150 3400 0    50   Output ~ 0
ECU_2_EN
Text HLabel 8100 4300 0    50   Output ~ 0
ECU_1_EN
Wire Wire Line
	8300 4500 8100 4500
Wire Wire Line
	8100 4400 8300 4400
Wire Wire Line
	8100 4300 8300 4300
Text Label 8250 3200 2    50   ~ 0
BOOT0
Text Label 8100 4400 2    50   ~ 0
CAN_STB
Wire Wire Line
	8100 4600 8300 4600
Text Label 8100 4600 2    50   ~ 0
CAN1_RX
Wire Wire Line
	8100 4700 8300 4700
Text Label 8100 4700 2    50   ~ 0
CAN1_TX
Wire Wire Line
	6250 3100 8300 3100
Wire Wire Line
	6050 3100 6250 3100
Wire Wire Line
	5600 3100 5850 3100
$Comp
L power:GND #PWR?
U 1 1 5D8CC178
P 5600 3400
AR Path="/5D8CC178" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC178" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 5600 3150 50  0001 C CNN
F 1 "GND" H 5605 3227 50  0000 C CNN
F 2 "" H 5600 3400 50  0001 C CNN
F 3 "" H 5600 3400 50  0001 C CNN
	1    5600 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8CC172
P 6250 3400
AR Path="/5D8CC172" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC172" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 6250 3150 50  0001 C CNN
F 1 "GND" H 6255 3227 50  0000 C CNN
F 2 "" H 6250 3400 50  0001 C CNN
F 3 "" H 6250 3400 50  0001 C CNN
	1    6250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3100 5600 3200
$Comp
L Device:C_Small C?
U 1 1 5D8CC16A
P 6250 3300
AR Path="/5D8CC16A" Ref="C?"  Part="1" 
AR Path="/5D80E812/5D8CC16A" Ref="C?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC16A" Ref="C6"  Part="1" 
F 0 "C6" H 6350 3350 50  0000 L CNN
F 1 "10pF" H 6350 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6250 3300 50  0001 C CNN
F 3 "~" H 6250 3300 50  0001 C CNN
F 4 "" H 6250 3300 50  0001 C CNN "not mounted"
	1    6250 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D8CC163
P 5600 3300
AR Path="/5D8CC163" Ref="C?"  Part="1" 
AR Path="/5D80E812/5D8CC163" Ref="C?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC163" Ref="C5"  Part="1" 
F 0 "C5" H 5700 3350 50  0000 L CNN
F 1 "10pF" H 5700 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5600 3300 50  0001 C CNN
F 3 "~" H 5600 3300 50  0001 C CNN
F 4 "" H 5600 3300 50  0001 C CNN "not mounted"
	1    5600 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y?
U 1 1 5D8CC15C
P 5950 3100
AR Path="/5D8CC15C" Ref="Y?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC15C" Ref="Y1"  Part="1" 
F 0 "Y1" H 6000 2950 50  0000 C CNN
F 1 "NX3225GD-8MHZ-STD-CRA-3" H 6300 3250 50  0001 C CNN
F 2 "digikey-footprints:SMD-2_3.2x2.5mm" H 5950 3100 50  0001 C CNN
F 3 "~" H 5950 3100 50  0001 C CNN
	1    5950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5300 9500 5300
Wire Wire Line
	9650 5200 9500 5200
Connection ~ 8900 5550
Wire Wire Line
	9000 5550 8900 5550
Wire Wire Line
	9000 5500 9000 5550
Connection ~ 8800 5550
Wire Wire Line
	8900 5550 8800 5550
Wire Wire Line
	8900 5500 8900 5550
Wire Wire Line
	8700 5550 8700 5600
Connection ~ 8700 5550
Wire Wire Line
	8800 5550 8700 5550
Wire Wire Line
	8800 5500 8800 5550
Wire Wire Line
	8700 5500 8700 5550
$Comp
L power:GND #PWR?
U 1 1 5D8CC13F
P 8700 5600
AR Path="/5D8CC13F" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC13F" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 8700 5350 50  0001 C CNN
F 1 "GND" H 8705 5427 50  0000 C CNN
F 2 "" H 8700 5600 50  0001 C CNN
F 3 "" H 8700 5600 50  0001 C CNN
	1    8700 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4100 8100 4100
Wire Wire Line
	8300 4200 8100 4200
Text Label 8100 4200 2    50   ~ 0
SYS_JTRST
Text Label 8100 4100 2    50   ~ 0
SYS_JTDO-SWO
Text Label 9650 5300 0    50   ~ 0
SYS_JTDI
Text Label 9650 5200 0    50   ~ 0
SYS_JTCK-SWCLK
Text Label 9650 5100 0    50   ~ 0
SYS_JTMS-SWDIO
Wire Wire Line
	9500 5100 9650 5100
$Comp
L power:GND #PWR?
U 1 1 5D8CC114
P 7350 2600
AR Path="/5D8CC114" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC114" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 7350 2350 50  0001 C CNN
F 1 "GND" H 7355 2427 50  0000 C CNN
F 2 "" H 7350 2600 50  0001 C CNN
F 3 "" H 7350 2600 50  0001 C CNN
	1    7350 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D8CC10E
P 7350 2500
AR Path="/5D8CC10E" Ref="C?"  Part="1" 
AR Path="/5D80E812/5D8CC10E" Ref="C?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC10E" Ref="C8"  Part="1" 
F 0 "C8" H 7150 2500 50  0000 L CNN
F 1 "100nF" H 7100 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7350 2500 50  0001 C CNN
F 3 "~" H 7350 2500 50  0001 C CNN
F 4 "" H 7350 2500 50  0001 C CNN "not mounted"
	1    7350 2500
	1    0    0    -1  
$EndComp
Connection ~ 7350 1600
Wire Wire Line
	7350 1600 7150 1600
$Comp
L Device:CP1_Small C?
U 1 1 5D8CC0FE
P 7350 1700
AR Path="/5D8CC0FE" Ref="C?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC0FE" Ref="C7"  Part="1" 
F 0 "C7" H 7441 1746 50  0000 L CNN
F 1 "10uF" H 7441 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7350 1700 50  0001 C CNN
F 3 "" H 7350 1700 50  0001 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1800 7350 1900
$Comp
L power:GND #PWR?
U 1 1 5D8CC0F7
P 7350 1900
AR Path="/5D8CC0F7" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC0F7" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 7350 1650 50  0001 C CNN
F 1 "GND" H 7355 1727 50  0000 C CNN
F 2 "" H 7350 1900 50  0001 C CNN
F 3 "" H 7350 1900 50  0001 C CNN
	1    7350 1900
	1    0    0    -1  
$EndComp
Connection ~ 8250 1600
Wire Wire Line
	7350 1600 8250 1600
Connection ~ 9000 2500
Wire Wire Line
	9100 2500 9100 2600
Wire Wire Line
	9000 2500 9100 2500
Wire Wire Line
	8900 2500 8900 1600
Connection ~ 8900 2500
Wire Wire Line
	9000 2500 8900 2500
Wire Wire Line
	9000 2600 9000 2500
Wire Wire Line
	8700 2200 8700 2600
Wire Wire Line
	8800 1600 8900 1600
Wire Wire Line
	8900 2600 8900 2500
$Comp
L power:GND #PWR?
U 1 1 5D8CC0CF
P 8250 1900
AR Path="/5D8CC0CF" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC0CF" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 8250 1650 50  0001 C CNN
F 1 "GND" H 8255 1727 50  0000 C CNN
F 2 "" H 8250 1900 50  0001 C CNN
F 3 "" H 8250 1900 50  0001 C CNN
	1    8250 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8CC0C9
P 8400 1900
AR Path="/5D8CC0C9" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC0C9" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 8400 1650 50  0001 C CNN
F 1 "GND" H 8405 1727 50  0000 C CNN
F 2 "" H 8400 1900 50  0001 C CNN
F 3 "" H 8400 1900 50  0001 C CNN
	1    8400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1850 8250 1900
Wire Wire Line
	8400 1850 8400 1900
Wire Wire Line
	8400 1600 8800 1600
Connection ~ 8400 1600
Wire Wire Line
	8400 1600 8400 1650
Wire Wire Line
	8250 1600 8250 1650
Wire Wire Line
	8250 1600 8400 1600
Connection ~ 8800 1600
Wire Wire Line
	8800 2600 8800 1600
$Comp
L Device:C_Small C?
U 1 1 5D8CC0BA
P 8400 1750
AR Path="/5D8CC0BA" Ref="C?"  Part="1" 
AR Path="/5D80E812/5D8CC0BA" Ref="C?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC0BA" Ref="C10"  Part="1" 
F 0 "C10" H 8500 1750 50  0000 L CNN
F 1 "100nF" H 8500 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8400 1750 50  0001 C CNN
F 3 "~" H 8400 1750 50  0001 C CNN
F 4 "" H 8400 1750 50  0001 C CNN "not mounted"
	1    8400 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D8CC0B3
P 8250 1750
AR Path="/5D8CC0B3" Ref="C?"  Part="1" 
AR Path="/5D80E812/5D8CC0B3" Ref="C?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC0B3" Ref="C9"  Part="1" 
F 0 "C9" H 8050 1750 50  0000 L CNN
F 1 "100nF" H 7950 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8250 1750 50  0001 C CNN
F 3 "~" H 8250 1750 50  0001 C CNN
F 4 "" H 8250 1750 50  0001 C CNN "not mounted"
	1    8250 1750
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32L4:STM32L443CCTx U?
U 1 1 5D8CC0AC
P 8900 4000
AR Path="/5D8CC0AC" Ref="U?"  Part="1" 
AR Path="/5D8BFFCE/5D8CC0AC" Ref="U2"  Part="1" 
F 0 "U2" H 9250 2500 50  0000 C CNN
F 1 "STM32L552/STM32L562" H 9350 2400 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 8400 2600 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00254865.pdf" H 8900 4000 50  0001 C CNN
	1    8900 4000
	1    0    0    -1  
$EndComp
Text HLabel 9650 5000 2    50   BiDi ~ 0
USB_D+
Text Notes 6900 2900 0    50   ~ 0
internal pull-up. LOW = RESET
Wire Wire Line
	7350 2400 7350 2350
Wire Wire Line
	7350 2350 7900 2350
Wire Wire Line
	7900 2350 7900 2800
Wire Wire Line
	7900 2800 8300 2800
Connection ~ 6250 3100
Wire Wire Line
	6250 3100 6250 3200
$Sheet
S 1800 2750 800  300 
U 5D7D0A92
F0 "sheet5D7D0A8E" 50
F1 "LDO.sch" 50
F2 "3.3V" O R 2600 2950 50 
F3 "5V" I L 1800 2950 50 
F4 "ENABLE" I L 1800 2850 50 
$EndSheet
$Comp
L power:+5V #PWR07
U 1 1 5D7D395A
P 1600 2800
F 0 "#PWR07" H 1600 2650 50  0001 C CNN
F 1 "+5V" H 1615 2973 50  0000 C CNN
F 2 "" H 1600 2800 50  0001 C CNN
F 3 "" H 1600 2800 50  0001 C CNN
	1    1600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2800 1600 2850
Wire Wire Line
	1600 2950 1800 2950
Wire Wire Line
	2600 2950 2850 2950
Text Label 2850 2950 0    50   ~ 0
3V3_ECU
Text Label 7150 1600 2    50   ~ 0
3V3_ECU
Text Label 800  1750 0    50   ~ 0
3V3_ECU
Text Label 8250 2200 2    50   ~ 0
3V3_ECU
Wire Wire Line
	8250 2200 8700 2200
Wire Wire Line
	1800 2850 1600 2850
Connection ~ 1600 2850
Wire Wire Line
	1600 2850 1600 2950
Connection ~ 5600 3100
Wire Wire Line
	5600 3000 5600 3100
Wire Wire Line
	5600 3000 8300 3000
Text Label 7250 2350 2    50   ~ 0
nRST
Text Label 5000 5050 0    50   ~ 0
PA7
Text Label 5000 4950 0    50   ~ 0
PA5
Text Label 5000 4850 0    50   ~ 0
PA3
Text Label 5000 5150 0    50   ~ 0
PB1
Text Label 5000 5250 0    50   ~ 0
PB10
Wire Wire Line
	5000 4750 5350 4750
$Comp
L power:GND #PWR?
U 1 1 5D849FF3
P 5350 4750
AR Path="/5D849FF3" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5D849FF3" Ref="#PWR012"  Part="1" 
AR Path="/5D815E09/5D849FF3" Ref="#PWR?"  Part="1" 
AR Path="/5D8EDE42/5D849FF3" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 5350 4500 50  0001 C CNN
F 1 "GND" H 5355 4577 50  0000 C CNN
F 2 "" H 5350 4750 50  0001 C CNN
F 3 "" H 5350 4750 50  0001 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5D849FF9
P 5000 4650
AR Path="/5D8BFFCE/5D849FF9" Ref="#PWR011"  Part="1" 
AR Path="/5D815E09/5D849FF9" Ref="#PWR?"  Part="1" 
AR Path="/5D8EDE42/5D849FF9" Ref="#PWR?"  Part="1" 
AR Path="/5D7DEA89/5D849FF9" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 5000 4500 50  0001 C CNN
F 1 "+5V" H 5015 4823 50  0000 C CNN
F 2 "" H 5000 4650 50  0001 C CNN
F 3 "" H 5000 4650 50  0001 C CNN
	1    5000 4650
	1    0    0    -1  
$EndComp
Text Label 5000 5550 0    50   ~ 0
PA8
Text Label 5000 5350 0    50   ~ 0
PB12
Text Label 5000 5450 0    50   ~ 0
PB14
NoConn ~ 9500 4700
NoConn ~ 9500 4800
Text Label 4500 4750 2    50   ~ 0
PA1
Text Label 4500 4950 2    50   ~ 0
PA4
Text Label 4500 5050 2    50   ~ 0
PA6
Text Label 4500 4850 2    50   ~ 0
PA2
Text Label 4500 5450 2    50   ~ 0
PB13
Text Label 4500 5350 2    50   ~ 0
PB11
Text Label 4500 5550 2    50   ~ 0
PB15
Text Label 4500 5250 2    50   ~ 0
PB2
Text Label 4500 5150 2    50   ~ 0
PB0
Text Label 4500 4650 2    50   ~ 0
3V3_ECU
$Comp
L Connector_Generic:Conn_02x13_Odd_Even J3
U 1 1 5D9036FE
P 4700 5250
AR Path="/5D8BFFCE/5D9036FE" Ref="J3"  Part="1" 
AR Path="/5D815E09/5D9036FE" Ref="J?"  Part="1" 
AR Path="/5D8EDE42/5D9036FE" Ref="J?"  Part="1" 
F 0 "J3" H 4750 4550 50  0000 C CNN
F 1 " " H 4750 5976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x13_P2.54mm_Vertical" H 4700 5250 50  0001 C CNN
F 3 "~" H 4700 5250 50  0001 C CNN
	1    4700 5250
	1    0    0    -1  
$EndComp
Text Label 5000 5850 0    50   ~ 0
SYS_JTRST
Text Label 4500 5750 2    50   ~ 0
SYS_JTDI
Text Label 5000 5650 0    50   ~ 0
SYS_JTMS-SWDIO
Text Label 4500 5850 2    50   ~ 0
SYS_JTDO-SWO
Text Label 5000 5750 0    50   ~ 0
SYS_JTCK-SWCLK
Text Label 4500 5650 2    50   ~ 0
nRST
Text HLabel 8150 3500 0    50   Output ~ 0
ECU_2_BOOT0
Text HLabel 8150 3600 0    50   Output ~ 0
ECU_3_BOOT0
Wire Wire Line
	8300 3600 8150 3600
Text HLabel 8100 4500 0    50   Output ~ 0
ECU_1_BOOT0
Wire Wire Line
	9500 3800 9650 3800
Wire Wire Line
	8150 3500 8300 3500
Wire Wire Line
	8150 3400 8300 3400
$Comp
L Device:R_Small_US R?
U 1 1 5FC52C89
P 6950 3950
AR Path="/5FC52C89" Ref="R?"  Part="1" 
AR Path="/5D80E812/5FC52C89" Ref="R?"  Part="1" 
AR Path="/5D815E09/5FC52C89" Ref="R?"  Part="1" 
AR Path="/5D8EDE42/5FC52C89" Ref="R?"  Part="1" 
AR Path="/5D8BFFCE/5FC52C89" Ref="R9"  Part="1" 
F 0 "R9" H 6850 3950 50  0000 C CNN
F 1 "DNM" H 6850 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6950 3950 50  0001 C CNN
F 3 "~" H 6950 3950 50  0001 C CNN
	1    6950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3750 6900 3750
$Comp
L power:GND #PWR?
U 1 1 5FC5BF10
P 6950 4050
AR Path="/5FC5BF10" Ref="#PWR?"  Part="1" 
AR Path="/5D8BFFCE/5FC5BF10" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 6950 3800 50  0001 C CNN
F 1 "GND" H 6955 3877 50  0000 C CNN
F 2 "" H 6950 4050 50  0001 C CNN
F 3 "" H 6950 4050 50  0001 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2350 7250 2350
Connection ~ 7350 2350
$Comp
L Device:R_Small_US R?
U 1 1 5FC99F6B
P 6950 3550
AR Path="/5FC99F6B" Ref="R?"  Part="1" 
AR Path="/5D80E812/5FC99F6B" Ref="R?"  Part="1" 
AR Path="/5D815E09/5FC99F6B" Ref="R?"  Part="1" 
AR Path="/5D8EDE42/5FC99F6B" Ref="R?"  Part="1" 
AR Path="/5D8BFFCE/5FC99F6B" Ref="R8"  Part="1" 
F 0 "R8" H 6800 3550 50  0000 C CNN
F 1 "10k" H 6800 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6950 3550 50  0001 C CNN
F 3 "~" H 6950 3550 50  0001 C CNN
	1    6950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3650 6950 3750
Wire Wire Line
	6950 3750 6950 3850
Connection ~ 6950 3750
Wire Wire Line
	7150 3200 7150 3750
Wire Wire Line
	7150 3750 6950 3750
Wire Wire Line
	7150 3200 8300 3200
Text Label 6950 3400 2    50   ~ 0
3V3_ECU
Wire Wire Line
	6950 3400 6950 3450
$EndSCHEMATC
