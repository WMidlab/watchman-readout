# ----------------------------------------------------------------------------
# TIMING Constraint File
# ----------------------------------------------------------------------------










create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list HMBcal_2TCsBD_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[0]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[1]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[2]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[3]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[4]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[5]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[6]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[7]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[8]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[9]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[10]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[11]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[12]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[13]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[14]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[15]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[16]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[17]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[18]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[19]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[20]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[21]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[22]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[23]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[24]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[25]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[26]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[27]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[28]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[29]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[30]} {HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/DO_A_B[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/HSCLK]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/RAMP]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_RDAD_WL_SS/SS_INCR]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list HMBcal_2TCsBD_i/TwoTARGET_C_TopLevel_0/U0/TC_ClockMgmt_inst/SSTIN_intl]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
