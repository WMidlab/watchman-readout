# PINOUT Constraint File  
# 6U VME WATCHMAN BOARD  
# Authors: Blaine Furman, Salvador Ventura 
# 2020-08-28 
#REG_CLR 
#ISEL

set_property PULLUP true [get_ports SDA] 
set_property PULLUP true [get_ports SCL]  
#### #### #### #### #### #### #### #### #### #### #### #### 
# PACKAGE_PIN 
#### #### #### #### #### #### #### #### #### #### #### #### 
# JX1 odd pins 
set_property PACKAGE_PIN R19 [get_ports A_TRIG1]	# 9
set_property PACKAGE_PIN T11 [get_ports MONTIMING_P]	# 11
set_property PACKAGE_PIN T10 [get_ports MONTIMING_N]	# 13
set_property PACKAGE_PIN U13 [get_ports A_RAMP]	# 17
set_property PACKAGE_PIN V13 [get_ports A_SS_LD_DIR]	# 19
set_property PACKAGE_PIN T14 [get_ports A_SS_LD_SIN]	# 23
set_property PACKAGE_PIN T15 [get_ports A_SS_RESET]	# 25
set_property PACKAGE_PIN Y16 [get_ports A_DONE]	# 29
set_property PACKAGE_PIN Y17 [get_ports A_DO_1]	# 31
set_property PACKAGE_PIN T16 [get_ports A_DO_2]	# 35
set_property PACKAGE_PIN U17 [get_ports A_DO_3]	# 37
set_property PACKAGE_PIN U14 [get_ports A_DO_4]	# 41
set_property PACKAGE_PIN U15 [get_ports A_DO_5]	# 43
set_property PACKAGE_PIN N18 [get_ports A_DO_6]	# 47
set_property PACKAGE_PIN P19 [get_ports A_DO_7]	# 49
set_property PACKAGE_PIN T20 [get_ports A_DO_8]	# 53
set_property PACKAGE_PIN U20 [get_ports A_SS_INCR]	# 55
set_property PACKAGE_PIN Y18 [get_ports A_DO_9]	# 61
set_property PACKAGE_PIN Y19 [get_ports A_DO_10]	# 63
set_property PACKAGE_PIN R16 [get_ports A_DO_11]	# 67
set_property PACKAGE_PIN R17 [get_ports A_DO_12]	# 69
set_property PACKAGE_PIN V17 [get_ports A_DO_13]	# 73
set_property PACKAGE_PIN V18 [get_ports A_DO_14]	# 75
set_property PACKAGE_PIN N17 [get_ports A_DO_15]	# 81
set_property PACKAGE_PIN P18 [get_ports A_DO_16]	# 83
set_property PACKAGE_PIN U7 [get_ports A_SAMPLESEL_ANY]	# 87
set_property PACKAGE_PIN V7 [get_ports A_RDAD_DIR]	# 89
set_property PACKAGE_PIN V8 [get_ports A_RDAD_SIN]	# 91
set_property PACKAGE_PIN W8 [get_ports A_RDAD_CLK]	# 93
# JX1 even pins 
set_property PACKAGE_PIN R11 [get_ports FPGA_DONE]	# 8
set_property PACKAGE_PIN T19 [get_ports SIN]	# 10
set_property PACKAGE_PIN T12 [get_ports SSTIN_P]	# 12
set_property PACKAGE_PIN U12 [get_ports SSTIN_N]	# 14
set_property PACKAGE_PIN V12 [get_ports WL_CLK_P]	# 18
set_property PACKAGE_PIN W13 [get_ports WL_CLK_N]	# 20
set_property PACKAGE_PIN P14 [get_ports SCLK]	# 24
set_property PACKAGE_PIN R14 [get_ports A_PCLK]	# 26
set_property PACKAGE_PIN W14 [get_ports A_SHOUT]	# 30
set_property PACKAGE_PIN Y14 [get_ports A_TRIG4]	# 32
set_property PACKAGE_PIN V15 [get_ports A_HSCLK_P]	# 36
set_property PACKAGE_PIN W15 [get_ports A_HSCLK_N]	# 38
set_property PACKAGE_PIN U19 [get_ports BIT_CLK_N]	# 42   THIS PORTS WERE MANUALLY SWAPPED HERE U18
set_property PACKAGE_PIN U18 [get_ports BIT_CLK_P]	# 44   THIS PORTS WERE MANUALLY SWAPPED HERE U19
set_property PACKAGE_PIN N20 [get_ports A_TRIG3]	# 48
set_property PACKAGE_PIN P20 [get_ports A_TRIG2]	# 50
set_property PACKAGE_PIN V20 [get_ports RESET]	# 54
set_property PACKAGE_PIN W20 [get_ports A_WR_RS_S0]	# 56
set_property PACKAGE_PIN V16 [get_ports A_WR_RS_S1]	# 62
set_property PACKAGE_PIN W16 [get_ports A_WR_CS_S0]	# 64
set_property PACKAGE_PIN R18 [get_ports CH1_OUTB_N]	# 68  THIS PORTS WERE MANUALLY SWAPPED HERE  T17
set_property PACKAGE_PIN T17 [get_ports CH1_OUTB_P]	# 70  THIS PORTS WERE MANUALLY SWAPPED HERE  R18
set_property PACKAGE_PIN W19 [get_ports CH1_OUTA_N]	# 74  THIS PORTS WERE MANUALLY SWAPPED HERE  W18
set_property PACKAGE_PIN W18 [get_ports CH1_OUTA_P]	# 76  THIS PORTS WERE MANUALLY SWAPPED HERE  W19
set_property PACKAGE_PIN P15 [get_ports A_WR_CS_S1]	# 82
set_property PACKAGE_PIN P16 [get_ports A_WR_CS_S2]	# 84
set_property PACKAGE_PIN T9 [get_ports A_WR_CS_S3]	# 88
set_property PACKAGE_PIN U10 [get_ports A_WR_CS_S4]	# 90
set_property PACKAGE_PIN T5 [get_ports A_WR_CS_S5]	# 92
set_property PACKAGE_PIN U5 [get_ports A_GCC_RESET]	# 94
# JX2 odd pins 
set_property PACKAGE_PIN E8 [get_ports SDATA]	# 1
set_property PACKAGE_PIN C6 [get_ports SCL]	# 3
set_property PACKAGE_PIN E6 [get_ports SPI_SCLK]	# 5
set_property PACKAGE_PIN C5 [get_ports MIO0]	# 7G
set_property PACKAGE_PIN C7 [get_ports PG_ZED]	# 11
set_property PACKAGE_PIN G14 [get_ports B_TRIG3]	# 13
set_property PACKAGE_PIN C20 [get_ports B_TRIG2]	# 17
set_property PACKAGE_PIN B20 [get_ports B_TRIG1]	# 19
set_property PACKAGE_PIN E17 [get_ports B_RAMP]	# 23
set_property PACKAGE_PIN D18 [get_ports B_SS_LD_DIR]	# 25
set_property PACKAGE_PIN E18 [get_ports B_SS_LD_SIN]	# 29
set_property PACKAGE_PIN E19 [get_ports B_SS_RESET]	# 31
set_property PACKAGE_PIN L19 [get_ports B_DONE]	# 35
set_property PACKAGE_PIN L20 [get_ports B_DO_1]	# 37
set_property PACKAGE_PIN M18 [get_ports SYNCACK_N]	# 41  THIS PORTS WERE MANUALLY SWAPPED HERE  M17
set_property PACKAGE_PIN M17 [get_ports SYNCACK_P]	# 43  THIS PORTS WERE MANUALLY SWAPPED HERE  M18
set_property PACKAGE_PIN L17 [get_ports SYNCCLK_N]	# 47  THIS PORTS WERE MANUALLY SWAPPED HERE  L16
set_property PACKAGE_PIN L16 [get_ports SYNCCLK_P]	# 49  THIS PORTS WERE MANUALLY SWAPPED HERE  L17
set_property PACKAGE_PIN H16 [get_ports SYNCTRIG_P]	# 53
set_property PACKAGE_PIN H17 [get_ports SYNCTRIG_N]	# 55
set_property PACKAGE_PIN G17 [get_ports FRAME_CLK_P]	# 61
set_property PACKAGE_PIN G18 [get_ports FRAME_CLK_N]	# 63
set_property PACKAGE_PIN G19 [get_ports CH2_OUTA_P]	# 67
set_property PACKAGE_PIN G20 [get_ports CH2_OUTA_N]	# 69
set_property PACKAGE_PIN K14 [get_ports CH2_OUTB_P]	# 73
set_property PACKAGE_PIN J14 [get_ports CH2_OUTB_N]	# 75
set_property PACKAGE_PIN N16 [get_ports INPUT_CLK_N]	# 81     THIS PORTS WERE MANUALLY SWAPPED HERE N15
set_property PACKAGE_PIN N15 [get_ports INPUT_CLK_P]	# 83     THIS PORTS WERE MANUALLY SWAPPED HERE N16
set_property PACKAGE_PIN M14 [get_ports B_DO_2]	# 87
set_property PACKAGE_PIN M15 [get_ports B_DO_3]	# 89
set_property PACKAGE_PIN Y12 [get_ports B_DO_4]	# 93
set_property PACKAGE_PIN Y13 [get_ports B_DO_5]	# 95
set_property PACKAGE_PIN V6 [get_ports B_DO_6]	# 97
set_property PACKAGE_PIN W6 [get_ports B_DO_7]	# 99
# JX2 even pins 
set_property PACKAGE_PIN E9 [get_ports CS_ENABLE]	# 2
set_property PACKAGE_PIN D9 [get_ports SDA]	# 4
set_property PACKAGE_PIN C8 [get_ports MIO9]	# 8
set_property PACKAGE_PIN J15 [get_ports B_TRIG4]	# 14
set_property PACKAGE_PIN B19 [get_ports B_HSCLK_P]	# 18
set_property PACKAGE_PIN A20 [get_ports B_HSCLK_N]	# 20
set_property PACKAGE_PIN D19 [get_ports B_PCLK]	# 24
set_property PACKAGE_PIN D20 [get_ports B_SHOUT]	# 26
set_property PACKAGE_PIN F16 [get_ports B_WR_RS_S0]	# 30
set_property PACKAGE_PIN F17 [get_ports B_WR_RS_S1]	# 32
set_property PACKAGE_PIN M19 [get_ports B_WR_CS_S0]	# 36
set_property PACKAGE_PIN M20 [get_ports B_WR_CS_S1]	# 38
set_property PACKAGE_PIN K19 [get_ports B_WR_CS_S2]	# 42
set_property PACKAGE_PIN J19 [get_ports B_WR_CS_S3]	# 44
set_property PACKAGE_PIN K17 [get_ports B_WR_CS_S4]	# 48
set_property PACKAGE_PIN K18 [get_ports B_WR_CS_S5]	# 50
set_property PACKAGE_PIN J18 [get_ports B_GCC_RESET]	# 54
set_property PACKAGE_PIN H18 [get_ports B_RDAD_CLK]	# 56
set_property PACKAGE_PIN F19 [get_ports B_RDAD_SIN]	# 62
set_property PACKAGE_PIN F20 [get_ports B_RDAD_DIR]	# 64
set_property PACKAGE_PIN J20 [get_ports B_SAMPLESEL_ANY]	# 68
set_property PACKAGE_PIN H20 [get_ports B_DO_16]	# 70
set_property PACKAGE_PIN H15 [get_ports B_DO_15]	# 74
set_property PACKAGE_PIN G15 [get_ports B_DO_14]	# 76
set_property PACKAGE_PIN L14 [get_ports B_DO_13]	# 82
set_property PACKAGE_PIN L15 [get_ports B_DO_12]	# 84
set_property PACKAGE_PIN K16 [get_ports B_DO_11]	# 88
set_property PACKAGE_PIN J16 [get_ports B_DO_10]	# 90
set_property PACKAGE_PIN V11 [get_ports B_DO_9]	# 94
set_property PACKAGE_PIN V10 [get_ports B_SS_INCR]	# 96
set_property PACKAGE_PIN V5 [get_ports B_DO_8]	# 100
#### #### #### #### #### #### #### #### #### #### #### #### 
# IOSTANDARD 
#### #### #### #### #### #### #### #### #### #### #### #### 
# JX1 odd pins 
set_property IOSTANDARD LVCMOS25 [get_ports A_TRIG1]	# 9
set_property IOSTANDARD LVCMOS25 [get_ports MONTIMING_P]	# 11
set_property IOSTANDARD LVCMOS25 [get_ports MONTIMING_N]	# 13
set_property IOSTANDARD LVCMOS25 [get_ports A_RAMP]	# 17
set_property IOSTANDARD LVCMOS25 [get_ports A_SS_LD_DIR]	# 19
set_property IOSTANDARD LVCMOS25 [get_ports A_SS_LD_SIN]	# 23
set_property IOSTANDARD LVCMOS25 [get_ports A_SS_RESET]	# 25
set_property IOSTANDARD LVCMOS25 [get_ports A_DONE]	# 29
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_1]	# 31
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_2]	# 35
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_3]	# 37
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_4]	# 41
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_5]	# 43
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_6]	# 47
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_7]	# 49
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_8]	# 53
set_property IOSTANDARD LVCMOS25 [get_ports A_SS_INCR]	# 55
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_9]	# 61
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_10]	# 63
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_11]	# 67
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_12]	# 69
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_13]	# 73
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_14]	# 75
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_15]	# 81
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_16]	# 83
set_property IOSTANDARD LVCMOS25 [get_ports A_SAMPLESEL_ANY]	# 87
set_property IOSTANDARD LVCMOS25 [get_ports A_RDAD_DIR]	# 89
set_property IOSTANDARD LVCMOS25 [get_ports A_RDAD_SIN]	# 91
set_property IOSTANDARD LVCMOS25 [get_ports A_RDAD_CLK]	# 93
# JX1 even pins 
set_property IOSTANDARD LVCMOS25 [get_ports FPGA_DONE]	# 8
set_property IOSTANDARD LVCMOS25 [get_ports SIN]	# 10
set_property IOSTANDARD LVCMOS25 [get_ports SSTIN_P]	# 12
set_property IOSTANDARD LVCMOS25 [get_ports SSTIN_N]	# 14
set_property IOSTANDARD LVCMOS25 [get_ports WL_CLK_P]	# 18
set_property IOSTANDARD LVCMOS25 [get_ports WL_CLK_N]	# 20
set_property IOSTANDARD LVCMOS25 [get_ports SCLK]	# 24
set_property IOSTANDARD LVCMOS25 [get_ports A_PCLK]	# 26
set_property IOSTANDARD LVCMOS25 [get_ports A_SHOUT]	# 30
set_property IOSTANDARD LVCMOS25 [get_ports A_TRIG4]	# 32
set_property IOSTANDARD LVCMOS25 [get_ports A_HSCLK_P]	# 36
set_property IOSTANDARD LVCMOS25 [get_ports A_HSCLK_N]	# 38
set_property IOSTANDARD LVCMOS25 [get_ports BIT_CLK_N]	# 42
set_property IOSTANDARD LVCMOS25 [get_ports BIT_CLK_P]	# 44
set_property IOSTANDARD LVCMOS25 [get_ports A_TRIG3]	# 48
set_property IOSTANDARD LVCMOS25 [get_ports A_TRIG2]	# 50
set_property IOSTANDARD LVCMOS25 [get_ports RESET]	# 54
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_RS_S0]	# 56
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_RS_S1]	# 62
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S0]	# 64
set_property IOSTANDARD LVCMOS25 [get_ports CH1_OUTB_N]	# 68
set_property IOSTANDARD LVCMOS25 [get_ports CH1_OUTB_P]	# 70
set_property IOSTANDARD LVCMOS25 [get_ports CH1_OUTA_N]	# 74
set_property IOSTANDARD LVCMOS25 [get_ports CH1_OUTA_P]	# 76
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S1]	# 82
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S2]	# 84
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S3]	# 88
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S4]	# 90
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S5]	# 92
set_property IOSTANDARD LVCMOS25 [get_ports A_GCC_RESET]	# 94
# JX2 odd pins 
set_property IOSTANDARD LVCMOS25 [get_ports SDATA]	# 1
set_property IOSTANDARD LVCMOS25 [get_ports SCL]	# 3
set_property IOSTANDARD LVCMOS25 [get_ports SPI_SCLK]	# 5
set_property IOSTANDARD LVCMOS25 [get_ports MIO0]	# 7
set_property IOSTANDARD LVCMOS25 [get_ports PG_ZED]	# 11
set_property IOSTANDARD LVCMOS25 [get_ports B_TRIG3]	# 13
set_property IOSTANDARD LVCMOS25 [get_ports B_TRIG2]	# 17
set_property IOSTANDARD LVCMOS25 [get_ports B_TRIG1]	# 19
set_property IOSTANDARD LVCMOS25 [get_ports B_RAMP]	# 23
set_property IOSTANDARD LVCMOS25 [get_ports B_SS_LD_DIR]	# 25
set_property IOSTANDARD LVCMOS25 [get_ports B_SS_LD_SIN]	# 29
set_property IOSTANDARD LVCMOS25 [get_ports B_SS_RESET]	# 31
set_property IOSTANDARD LVCMOS25 [get_ports B_DONE]	# 35
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_1]	# 37
set_property IOSTANDARD LVCMOS25 [get_ports SYNCACK_N]	# 41
set_property IOSTANDARD LVCMOS25 [get_ports SYNCACK_P]	# 43
set_property IOSTANDARD LVCMOS25 [get_ports SYNCCLK_N]	# 47
set_property IOSTANDARD LVCMOS25 [get_ports SYNCCLK_P]	# 49
set_property IOSTANDARD LVCMOS25 [get_ports SYNCTRIG_P]	# 53
set_property IOSTANDARD LVCMOS25 [get_ports SYNCTRIG_N]	# 55
set_property IOSTANDARD LVCMOS25 [get_ports FRAME_CLK_P]	# 61
set_property IOSTANDARD LVCMOS25 [get_ports FRAME_CLK_N]	# 63
set_property IOSTANDARD LVCMOS25 [get_ports CH2_OUTA_P]	# 67
set_property IOSTANDARD LVCMOS25 [get_ports CH2_OUTA_N]	# 69
set_property IOSTANDARD LVCMOS25 [get_ports CH2_OUTB_P]	# 73
set_property IOSTANDARD LVCMOS25 [get_ports CH2_OUTB_N]	# 75
set_property IOSTANDARD LVCMOS25 [get_ports INPUT_CLK_N]	# 81
set_property IOSTANDARD LVCMOS25 [get_ports INPUT_CLK_P]	# 83
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_2]	# 87
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_3]	# 89
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_4]	# 93
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_5]	# 95
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_6]	# 97
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_7]	# 99
# JX2 even pins 
set_property IOSTANDARD LVCMOS25 [get_ports CS_ENABLE]	# 2
set_property IOSTANDARD LVCMOS25 [get_ports SDA]	# 4
set_property IOSTANDARD LVCMOS25 [get_ports MIO9]	# 8
set_property IOSTANDARD LVCMOS25 [get_ports B_TRIG4]	# 14
set_property IOSTANDARD LVCMOS25 [get_ports B_HSCLK_P]	# 18
set_property IOSTANDARD LVCMOS25 [get_ports B_HSCLK_N]	# 20
set_property IOSTANDARD LVCMOS25 [get_ports B_PCLK]	# 24
set_property IOSTANDARD LVCMOS25 [get_ports B_SHOUT]	# 26
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_RS_S0]	# 30
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_RS_S1]	# 32
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S0]	# 36
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S1]	# 38
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S2]	# 42
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S3]	# 44
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S4]	# 48
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S5]	# 50
set_property IOSTANDARD LVCMOS25 [get_ports B_GCC_RESET]	# 54
set_property IOSTANDARD LVCMOS25 [get_ports B_RDAD_CLK]	# 56
set_property IOSTANDARD LVCMOS25 [get_ports B_RDAD_SIN]	# 62
set_property IOSTANDARD LVCMOS25 [get_ports B_RDAD_DIR]	# 64
set_property IOSTANDARD LVCMOS25 [get_ports B_SAMPLESEL_ANY]	# 68
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_16]	# 70
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_15]	# 74
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_14]	# 76
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_13]	# 82
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_12]	# 84
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_11]	# 88
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_10]	# 90
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_9]	# 94
set_property IOSTANDARD LVCMOS25 [get_ports B_SS_INCR]	# 96
set_property IOSTANDARD LVCMOS25 [get_ports B_DO_8]	# 100
