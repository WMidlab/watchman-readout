# PINOUT Constraint File
# 6U VME WATCHMAN BOARD
# Authors: Blaine Furman, Salvador Ventura
# 2020-08-28
#REG_CLR
#ISEL
#For nonused ports in TARGETC
set_property IO_BUFFER_TYPE none [get_ports unused_port_name]



#### #### #### #### #### #### #### #### #### #### #### ####
# PACKAGE_PIN
#### #### #### #### #### #### #### #### #### #### #### ####
# JX1 odd pins
set_property PACKAGE_PIN R19 [get_ports A_TRIG1]
set_property PACKAGE_PIN T11 [get_ports MONTIMING_P]
set_property PACKAGE_PIN T10 [get_ports MONTIMING_N]
set_property PACKAGE_PIN U13 [get_ports A_RAMP]
set_property PACKAGE_PIN V13 [get_ports A_SS_LD_DIR]
set_property PACKAGE_PIN T14 [get_ports A_SS_LD_SIN]
set_property PACKAGE_PIN T15 [get_ports A_SS_RESET]
set_property PACKAGE_PIN Y16 [get_ports A_DONE]
set_property PACKAGE_PIN Y17 [get_ports A_DO_1]
set_property PACKAGE_PIN T16 [get_ports A_DO_2]
set_property PACKAGE_PIN U17 [get_ports A_DO_3]
set_property PACKAGE_PIN U14 [get_ports A_DO_4]
set_property PACKAGE_PIN U15 [get_ports A_DO_5]
set_property PACKAGE_PIN N18 [get_ports A_DO_6]
set_property PACKAGE_PIN P19 [get_ports A_DO_7]
set_property PACKAGE_PIN T20 [get_ports A_DO_8]
set_property PACKAGE_PIN U20 [get_ports A_SS_INCR]
set_property PACKAGE_PIN Y18 [get_ports A_DO_9]
set_property PACKAGE_PIN Y19 [get_ports A_DO_10]
set_property PACKAGE_PIN R16 [get_ports A_DO_11]
set_property PACKAGE_PIN R17 [get_ports A_DO_12]
set_property PACKAGE_PIN V17 [get_ports A_DO_13]
set_property PACKAGE_PIN V18 [get_ports A_DO_14]
set_property PACKAGE_PIN N17 [get_ports A_DO_15]
set_property PACKAGE_PIN P18 [get_ports A_DO_16]
set_property PACKAGE_PIN U7 [get_ports A_SAMPLESEL_ANY]
set_property PACKAGE_PIN V7 [get_ports A_RDAD_DIR]
set_property PACKAGE_PIN V8 [get_ports A_RDAD_SIN]
set_property PACKAGE_PIN W8 [get_ports A_RDAD_CLK]
# JX1 even pins
#set_property PACKAGE_PIN R11 [get_ports FPGA_DONE]	; # 8
set_property PACKAGE_PIN T19 [get_ports SIN]
set_property PACKAGE_PIN P14 [get_ports SCLK]
set_property PACKAGE_PIN R14 [get_ports A_PCLK]
set_property PACKAGE_PIN W14 [get_ports A_SHOUT]
set_property PACKAGE_PIN Y14 [get_ports A_TRIG4]
#set_property PACKAGE_PIN U19 [get_ports BIT_CLK_N]	; # 42   THIS PORTS WERE MANUALLY SWAPPED HERE U18
#set_property PACKAGE_PIN U18 [get_ports BIT_CLK_P]	; # 44   THIS PORTS WERE MANUALLY SWAPPED HERE U19
set_property PACKAGE_PIN N20 [get_ports A_TRIG3]
set_property PACKAGE_PIN P20 [get_ports A_TRIG2]
#set_property PACKAGE_PIN V20 [get_ports RESET]	; # 54
set_property PACKAGE_PIN W20 [get_ports A_WR_RS_S0]
set_property PACKAGE_PIN V16 [get_ports A_WR_RS_S1]
set_property PACKAGE_PIN W16 [get_ports A_WR_CS_S0]
#set_property PACKAGE_PIN R18 [get_ports CH1_OUTB_N]	; # 68  THIS PORTS WERE MANUALLY SWAPPED HERE  T17
#set_property PACKAGE_PIN T17 [get_ports CH1_OUTB_P]	; # 70  THIS PORTS WERE MANUALLY SWAPPED HERE  R18
#set_property PACKAGE_PIN W19 [get_ports CH1_OUTA_N]	; # 74  THIS PORTS WERE MANUALLY SWAPPED HERE  W18
#set_property PACKAGE_PIN W18 [get_ports CH1_OUTA_P]	; # 76  THIS PORTS WERE MANUALLY SWAPPED HERE  W19
set_property PACKAGE_PIN P15 [get_ports A_WR_CS_S1]
set_property PACKAGE_PIN P16 [get_ports A_WR_CS_S2]
set_property PACKAGE_PIN T9 [get_ports A_WR_CS_S3]
set_property PACKAGE_PIN U10 [get_ports A_WR_CS_S4]
set_property PACKAGE_PIN T5 [get_ports A_WR_CS_S5]
set_property PACKAGE_PIN U5 [get_ports A_GCC_RESET]
# JX2 odd pins
#set_property PACKAGE_PIN E8 [get_ports SDATA]	; # 1
#set_property PACKAGE_PIN C6 [get_ports SCL]	; # 3
#set_property PACKAGE_PIN E6 [get_ports SPI_SCLK]	; # 5
#set_property PACKAGE_PIN C5 [get_ports MIO0]	; # 7G
#set_property PACKAGE_PIN C7 [get_ports PG_ZED]	; # 11
#########################################
set_property PACKAGE_PIN G14 [get_ports B_TRIG3]
set_property PACKAGE_PIN C20 [get_ports B_TRIG2]
set_property PACKAGE_PIN B20 [get_ports B_TRIG1]
set_property PACKAGE_PIN E17 [get_ports B_RAMP]
set_property PACKAGE_PIN D18 [get_ports B_SS_LD_DIR]
set_property PACKAGE_PIN E18 [get_ports B_SS_LD_SIN]
set_property PACKAGE_PIN E19 [get_ports B_SS_RESET]
set_property PACKAGE_PIN L19 [get_ports B_DONE]
set_property PACKAGE_PIN L20 [get_ports {B_DO_1[0]}]
###################################################
#set_property PACKAGE_PIN M18 [get_ports SYNCACK_N]	; # 41  THIS PORTS WERE MANUALLY SWAPPED HERE  M17
#set_property PACKAGE_PIN M17 [get_ports SYNCACK_P]	; # 43  THIS PORTS WERE MANUALLY SWAPPED HERE  M18
#set_property PACKAGE_PIN L17 [get_ports SYNCCLK_N]	; # 47  THIS PORTS WERE MANUALLY SWAPPED HERE  L16
#set_property PACKAGE_PIN L16 [get_ports SYNCCLK_P]	; # 49  THIS PORTS WERE MANUALLY SWAPPED HERE  L17
#set_property PACKAGE_PIN H16 [get_ports SYNCTRIG_P]	; # 53
#set_property PACKAGE_PIN H17 [get_ports SYNCTRIG_N]	; # 55
#set_property PACKAGE_PIN G17 [get_ports FRAME_CLK_P]	; # 61
#set_property PACKAGE_PIN G18 [get_ports FRAME_CLK_N]	; # 63
#set_property PACKAGE_PIN G19 [get_ports CH2_OUTA_P]	; # 67
#set_property PACKAGE_PIN G20 [get_ports CH2_OUTA_N]	; # 69
#set_property PACKAGE_PIN K14 [get_ports CH2_OUTB_P]	; # 73
#set_property PACKAGE_PIN J14 [get_ports CH2_OUTB_N]	; # 75
#set_property PACKAGE_PIN N16 [get_ports INPUT_CLK_N]	; # 81     THIS PORTS WERE MANUALLY SWAPPED HERE N15
#set_property PACKAGE_PIN N15 [get_ports INPUT_CLK_P]	; # 83     THIS PORTS WERE MANUALLY SWAPPED HERE N16
###############################################################
set_property PACKAGE_PIN M14 [get_ports {B_DO_2[0]}]
set_property PACKAGE_PIN M15 [get_ports {B_DO_3[0]}]
set_property PACKAGE_PIN Y12 [get_ports {B_DO_4[0]}]
set_property PACKAGE_PIN Y13 [get_ports {B_DO_5[0]}]
set_property PACKAGE_PIN V6 [get_ports {B_DO_6[0]}]
set_property PACKAGE_PIN W6 [get_ports {B_DO_7[0]}]
########################################################
# JX2 even pins
#set_property PACKAGE_PIN E9 [get_ports CS_ENABLE]	; # 2
#set_property PACKAGE_PIN D9 [get_ports SDA]	; # 4
#set_property PACKAGE_PIN C8 [get_ports MIO9]	; # 8
#############################################
set_property PACKAGE_PIN J15 [get_ports B_TRIG4]
set_property PACKAGE_PIN B19 [get_ports B_HSCLK_P]
set_property PACKAGE_PIN A20 [get_ports B_HSCLK_N]
set_property PACKAGE_PIN D19 [get_ports B_PCLK]
set_property PACKAGE_PIN D20 [get_ports B_SHOUT]
set_property PACKAGE_PIN F16 [get_ports B_WR_RS_S0]
set_property PACKAGE_PIN F17 [get_ports B_WR_RS_S1]
set_property PACKAGE_PIN M19 [get_ports B_WR_CS_S0]
set_property PACKAGE_PIN M20 [get_ports B_WR_CS_S1]
set_property PACKAGE_PIN K19 [get_ports B_WR_CS_S2]
set_property PACKAGE_PIN J19 [get_ports B_WR_CS_S3]
set_property PACKAGE_PIN K17 [get_ports B_WR_CS_S4]
set_property PACKAGE_PIN K18 [get_ports B_WR_CS_S5]
set_property PACKAGE_PIN J18 [get_ports B_GCC_RESET]
set_property PACKAGE_PIN H18 [get_ports B_RDAD_CLK]
set_property PACKAGE_PIN F19 [get_ports B_RDAD_SIN]
set_property PACKAGE_PIN F20 [get_ports B_RDAD_DIR]
set_property PACKAGE_PIN J20 [get_ports B_SAMPLESEL_ANY]
set_property PACKAGE_PIN H20 [get_ports {B_DO_16[0]}]
set_property PACKAGE_PIN H15 [get_ports {B_DO_15[0]}]
set_property PACKAGE_PIN G15 [get_ports {B_DO_14[0]}]
set_property PACKAGE_PIN L14 [get_ports {B_DO_13[0]}]
set_property PACKAGE_PIN L15 [get_ports {B_DO_12[0]}]
set_property PACKAGE_PIN K16 [get_ports {B_DO_11[0]}]
set_property PACKAGE_PIN J16 [get_ports {B_DO_10[0]}]
set_property PACKAGE_PIN V11 [get_ports {B_DO_9[0]}]
set_property PACKAGE_PIN V10 [get_ports B_SS_INCR]
set_property PACKAGE_PIN V5 [get_ports {B_DO_8[0]}]
#### #### #### #### #### #### #### #### #### #### #### ####
# IOSTANDARD
#### #### #### #### #### #### #### #### #### #### #### ####
# JX1 odd pins
set_property IOSTANDARD LVCMOS25 [get_ports A_TRIG1]
set_property IOSTANDARD LVDS_25 [get_ports MONTIMING_P]
set_property IOSTANDARD LVDS_25 [get_ports MONTIMING_N]
set_property IOSTANDARD LVCMOS25 [get_ports A_RAMP]
set_property IOSTANDARD LVCMOS25 [get_ports A_SS_LD_DIR]
set_property IOSTANDARD LVCMOS25 [get_ports A_SS_LD_SIN]
set_property IOSTANDARD LVCMOS25 [get_ports A_SS_RESET]
set_property IOSTANDARD LVCMOS25 [get_ports A_DONE]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_1]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_2]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_3]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_4]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_5]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_6]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_7]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_8]
set_property IOSTANDARD LVCMOS25 [get_ports A_SS_INCR]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_9]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_10]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_11]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_12]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_13]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_14]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_15]
set_property IOSTANDARD LVCMOS25 [get_ports A_DO_16]
set_property IOSTANDARD LVCMOS25 [get_ports A_SAMPLESEL_ANY]
set_property IOSTANDARD LVCMOS25 [get_ports A_RDAD_DIR]
set_property IOSTANDARD LVCMOS25 [get_ports A_RDAD_SIN]
set_property IOSTANDARD LVCMOS25 [get_ports A_RDAD_CLK]
# JX1 even pins
#set_property IOSTANDARD LVCMOS25 [get_ports FPGA_DONE]	; # 8
set_property IOSTANDARD LVCMOS25 [get_ports SIN]
set_property IOSTANDARD LVDS_25 [get_ports {SSTIN_P[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {SSTIN_N[0]}]
set_property PACKAGE_PIN T12 [get_ports {SSTIN_P[0]}]
set_property PACKAGE_PIN U12 [get_ports {SSTIN_N[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {WL_CLK_P[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {WL_CLK_N[0]}]
set_property PACKAGE_PIN V12 [get_ports {WL_CLK_P[0]}]
set_property PACKAGE_PIN W13 [get_ports {WL_CLK_N[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports SCLK]
set_property IOSTANDARD LVCMOS25 [get_ports A_PCLK]
set_property IOSTANDARD LVCMOS25 [get_ports A_SHOUT]
set_property IOSTANDARD LVCMOS25 [get_ports A_TRIG4]
set_property IOSTANDARD LVDS_25 [get_ports A_HSCLK_P]
set_property IOSTANDARD LVDS_25 [get_ports A_HSCLK_N]
set_property PACKAGE_PIN V15 [get_ports A_HSCLK_P]
set_property PACKAGE_PIN W15 [get_ports A_HSCLK_N]
#set_property IOSTANDARD LVDS_25 [get_ports BIT_CLK_N]	; # 42
#set_property IOSTANDARD LVDS_25 [get_ports BIT_CLK_P]	; # 44
set_property IOSTANDARD LVCMOS25 [get_ports A_TRIG3]
set_property IOSTANDARD LVCMOS25 [get_ports A_TRIG2]
#set_property IOSTANDARD LVCMOS25 [get_ports RESET]	; # 54
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_RS_S0]
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_RS_S1]
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S0]
#set_property IOSTANDARD LVDS_25 [get_ports CH1_OUTB_N]	; # 68
#set_property IOSTANDARD LVDS_25 [get_ports CH1_OUTB_P]	; # 70
#set_property IOSTANDARD LVDS_25 [get_ports CH1_OUTA_N]	; # 74
#set_property IOSTANDARD LVDS_25 [get_ports CH1_OUTA_P]	; # 76
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S1]
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S2]
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S3]
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S4]
set_property IOSTANDARD LVCMOS25 [get_ports A_WR_CS_S5]
set_property IOSTANDARD LVCMOS25 [get_ports A_GCC_RESET]
# JX2 odd pins
#set_property IOSTANDARD LVCMOS25 [get_ports SDATA]	; # 1
#set_property IOSTANDARD LVCMOS25 [get_ports SCL]	; # 3
#set_property IOSTANDARD LVCMOS25 [get_ports SPI_SCLK]	; # 5
#set_property IOSTANDARD LVCMOS25 [get_ports MIO0]	; # 7
#set_property IOSTANDARD LVCMOS25 [get_ports PG_ZED]	; # 11
#######################3333
set_property IOSTANDARD LVCMOS25 [get_ports B_TRIG3]
set_property IOSTANDARD LVCMOS25 [get_ports B_TRIG2]
set_property IOSTANDARD LVCMOS25 [get_ports B_TRIG1]
set_property IOSTANDARD LVCMOS25 [get_ports B_RAMP]
set_property IOSTANDARD LVCMOS25 [get_ports B_SS_LD_DIR]
set_property IOSTANDARD LVCMOS25 [get_ports B_SS_LD_SIN]
set_property IOSTANDARD LVCMOS25 [get_ports B_SS_RESET]
set_property IOSTANDARD LVCMOS25 [get_ports B_DONE]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_1[0]}]
##########################33
#set_property IOSTANDARD LVDS_25 [get_ports SYNCACK_N]	; # 41
#set_property IOSTANDARD LVDS_25 [get_ports SYNCACK_P]	; # 43
#set_property IOSTANDARD LVDS_25 [get_ports SYNCCLK_N]	; # 47
#set_property IOSTANDARD LVDS_25 [get_ports SYNCCLK_P]	; # 49
#set_property IOSTANDARD LVDS_25 [get_ports SYNCTRIG_P]	; # 53
#set_property IOSTANDARD LVDS_25 [get_ports SYNCTRIG_N]	; # 55
#set_property IOSTANDARD LVDS_25 [get_ports FRAME_CLK_P]	; # 61
#set_property IOSTANDARD LVDS_25 [get_ports FRAME_CLK_N]	; # 63
#set_property IOSTANDARD LVDS_25 [get_ports CH2_OUTA_P]	; # 67
#set_property IOSTANDARD LVDS_25 [get_ports CH2_OUTA_N]	; # 69
#set_property IOSTANDARD LVDS_25 [get_ports CH2_OUTB_P]	; # 73
#set_property IOSTANDARD LVDS_25 [get_ports CH2_OUTB_N]	; # 75
#set_property IOSTANDARD LVDS_25 [get_ports INPUT_CLK_N]	; # 81
#set_property IOSTANDARD LVDS_25 [get_ports INPUT_CLK_P]	; # 83
###########33
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_2[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_3[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_4[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_5[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_6[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_7[0]}]
# JX2 even pins
#set_property IOSTANDARD LVCMOS25 [get_ports CS_ENABLE]	; # 2
#set_property IOSTANDARD LVCMOS25 [get_ports SDA]	; # 4
#set_property IOSTANDARD LVCMOS25 [get_ports MIO9]	; # 8
########################33333
set_property IOSTANDARD LVCMOS25 [get_ports B_TRIG4]
set_property IOSTANDARD LVDS_25 [get_ports B_HSCLK_P]
set_property IOSTANDARD LVDS_25 [get_ports B_HSCLK_N]
set_property IOSTANDARD LVCMOS25 [get_ports B_PCLK]
set_property IOSTANDARD LVCMOS25 [get_ports B_SHOUT]
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_RS_S0]
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_RS_S1]
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S0]
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S1]
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S2]
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S3]
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S4]
set_property IOSTANDARD LVCMOS25 [get_ports B_WR_CS_S5]
set_property IOSTANDARD LVCMOS25 [get_ports B_GCC_RESET]
set_property IOSTANDARD LVCMOS25 [get_ports B_RDAD_CLK]
set_property IOSTANDARD LVCMOS25 [get_ports B_RDAD_SIN]
set_property IOSTANDARD LVCMOS25 [get_ports B_RDAD_DIR]
set_property IOSTANDARD LVCMOS25 [get_ports B_SAMPLESEL_ANY]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_16[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_15[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_14[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_13[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_12[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_11[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_10[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_9[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports B_SS_INCR]
set_property IOSTANDARD LVCMOS25 [get_ports {B_DO_8[0]}]



#set_property IOB TRUE [all_inputs]
#set_property IOB TRUE [all_outputs]

























connect_debug_port u_ila_0/probe0 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[3]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[4]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[5]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[6]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[7]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[8]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[9]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[10]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[11]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[12]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[13]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[14]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[15]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[16]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[17]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[18]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[19]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[20]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[21]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[22]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[23]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[24]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[25]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[26]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[27]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[28]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[29]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[30]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/fifodata_intl[31]}]]















connect_debug_port u_ila_0/probe1 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[3]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[4]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[5]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[6]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[7]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[8]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[9]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[10]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/din[11]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/GEN_FIFO[0].FIFOCH/full}]]


connect_debug_port u_ila_0/probe3 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/fifo_rd_stm[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/fifo_rd_stm[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/fifo_rd_stm[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/fifo_rd_stm[3]}]]



set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[16]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[17]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[18]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[30]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[31]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[25]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[28]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[19]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[20]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[21]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[27]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[29]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[22]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[23]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[26]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[24]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[1]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[0]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[2]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[3]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[4]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[11]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[5]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[6]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[7]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[8]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[14]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[9]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[12]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[10]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[15]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_3_dout[13]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[0]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[1]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[2]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[3]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[4]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[5]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[6]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[14]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[7]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[8]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[9]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[15]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[10]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[11]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[12]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_0_dout[13]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[4]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[3]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[5]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[6]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[7]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[14]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[15]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[8]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[9]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[10]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[11]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[12]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[13]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[0]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[1]}]
set_property MARK_DEBUG true [get_nets {HMBcal_2TCsBD_i/xlconcat_2_dout[2]}]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list HMBcal_2TCsBD_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 10 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[3]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[4]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[5]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[6]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[7]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[8]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/cnt_fifo[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 4 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/rd_st_num[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/rd_st_num[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/rd_st_num[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/FIFOMANAGER/rd_st_num[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[3]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[4]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[5]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[6]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[7]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[8]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[9]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[10]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[11]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[12]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[13]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[14]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[15]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[16]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[17]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[18]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[19]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[20]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[21]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[22]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[23]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[24]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[25]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[26]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[27]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[28]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[29]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[30]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 12 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[3]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[4]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[5]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[6]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[7]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[8]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[9]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[10]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/A_CH0_intl[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {HMBcal_2TCsBD_i/xlconcat_3_dout[0]} {HMBcal_2TCsBD_i/xlconcat_3_dout[1]} {HMBcal_2TCsBD_i/xlconcat_3_dout[2]} {HMBcal_2TCsBD_i/xlconcat_3_dout[3]} {HMBcal_2TCsBD_i/xlconcat_3_dout[4]} {HMBcal_2TCsBD_i/xlconcat_3_dout[5]} {HMBcal_2TCsBD_i/xlconcat_3_dout[6]} {HMBcal_2TCsBD_i/xlconcat_3_dout[7]} {HMBcal_2TCsBD_i/xlconcat_3_dout[8]} {HMBcal_2TCsBD_i/xlconcat_3_dout[9]} {HMBcal_2TCsBD_i/xlconcat_3_dout[10]} {HMBcal_2TCsBD_i/xlconcat_3_dout[11]} {HMBcal_2TCsBD_i/xlconcat_3_dout[12]} {HMBcal_2TCsBD_i/xlconcat_3_dout[13]} {HMBcal_2TCsBD_i/xlconcat_3_dout[14]} {HMBcal_2TCsBD_i/xlconcat_3_dout[15]} {HMBcal_2TCsBD_i/xlconcat_3_dout[16]} {HMBcal_2TCsBD_i/xlconcat_3_dout[17]} {HMBcal_2TCsBD_i/xlconcat_3_dout[18]} {HMBcal_2TCsBD_i/xlconcat_3_dout[19]} {HMBcal_2TCsBD_i/xlconcat_3_dout[20]} {HMBcal_2TCsBD_i/xlconcat_3_dout[21]} {HMBcal_2TCsBD_i/xlconcat_3_dout[22]} {HMBcal_2TCsBD_i/xlconcat_3_dout[23]} {HMBcal_2TCsBD_i/xlconcat_3_dout[24]} {HMBcal_2TCsBD_i/xlconcat_3_dout[25]} {HMBcal_2TCsBD_i/xlconcat_3_dout[26]} {HMBcal_2TCsBD_i/xlconcat_3_dout[27]} {HMBcal_2TCsBD_i/xlconcat_3_dout[28]} {HMBcal_2TCsBD_i/xlconcat_3_dout[29]} {HMBcal_2TCsBD_i/xlconcat_3_dout[30]} {HMBcal_2TCsBD_i/xlconcat_3_dout[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 16 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {HMBcal_2TCsBD_i/xlconcat_2_dout[0]} {HMBcal_2TCsBD_i/xlconcat_2_dout[1]} {HMBcal_2TCsBD_i/xlconcat_2_dout[2]} {HMBcal_2TCsBD_i/xlconcat_2_dout[3]} {HMBcal_2TCsBD_i/xlconcat_2_dout[4]} {HMBcal_2TCsBD_i/xlconcat_2_dout[5]} {HMBcal_2TCsBD_i/xlconcat_2_dout[6]} {HMBcal_2TCsBD_i/xlconcat_2_dout[7]} {HMBcal_2TCsBD_i/xlconcat_2_dout[8]} {HMBcal_2TCsBD_i/xlconcat_2_dout[9]} {HMBcal_2TCsBD_i/xlconcat_2_dout[10]} {HMBcal_2TCsBD_i/xlconcat_2_dout[11]} {HMBcal_2TCsBD_i/xlconcat_2_dout[12]} {HMBcal_2TCsBD_i/xlconcat_2_dout[13]} {HMBcal_2TCsBD_i/xlconcat_2_dout[14]} {HMBcal_2TCsBD_i/xlconcat_2_dout[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 16 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {HMBcal_2TCsBD_i/xlconcat_0_dout[0]} {HMBcal_2TCsBD_i/xlconcat_0_dout[1]} {HMBcal_2TCsBD_i/xlconcat_0_dout[2]} {HMBcal_2TCsBD_i/xlconcat_0_dout[3]} {HMBcal_2TCsBD_i/xlconcat_0_dout[4]} {HMBcal_2TCsBD_i/xlconcat_0_dout[5]} {HMBcal_2TCsBD_i/xlconcat_0_dout[6]} {HMBcal_2TCsBD_i/xlconcat_0_dout[7]} {HMBcal_2TCsBD_i/xlconcat_0_dout[8]} {HMBcal_2TCsBD_i/xlconcat_0_dout[9]} {HMBcal_2TCsBD_i/xlconcat_0_dout[10]} {HMBcal_2TCsBD_i/xlconcat_0_dout[11]} {HMBcal_2TCsBD_i/xlconcat_0_dout[12]} {HMBcal_2TCsBD_i/xlconcat_0_dout[13]} {HMBcal_2TCsBD_i/xlconcat_0_dout[14]} {HMBcal_2TCsBD_i/xlconcat_0_dout[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 32 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[3]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[4]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[5]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[6]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[7]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[8]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[9]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[10]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[11]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[12]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[13]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[14]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[15]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[16]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[17]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[18]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[19]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[20]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[21]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[22]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[23]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[24]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[25]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[26]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[27]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[28]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[29]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[30]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0_FIFOdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/HSCLK]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/SS_INCR]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list HMBcal_2TCsBD_i/TARGETC_axi_int_0_StreamReady]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
