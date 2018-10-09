// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Oct 01 17:52:53 2018
//
// Verilog Description of module box_top
//

module box_top (DISP_I2C_SDA, DISP_I2C_SCL, BTN_LEFT_IN, BTN_RIGHT_IN, 
            ADC_SCK, ADC_BCK, ADC_LRCK, ADC_DATA, ADC_CLIPL_P, ADC_SM, 
            ADC_FMT1, ADC_FMT0, ADC_FS2, ADC_FS1, ADC_FS0, ADC_HPFD_P, 
            ADC_RST_N, DAC_SCK, DAC_BCK, DAC_LRCK, DAC_DATA, DAC_I2C_SCL, 
            DAC_I2C_SDA, DAC_ZEROL_P, DAC_RST_N, RESET);   // c:/fpga/projects/fxbox/src/box_top.vhd(12[8:15])
    output DISP_I2C_SDA;   // c:/fpga/projects/fxbox/src/box_top.vhd(13[9:21])
    output DISP_I2C_SCL;   // c:/fpga/projects/fxbox/src/box_top.vhd(14[6:18])
    input BTN_LEFT_IN;   // c:/fpga/projects/fxbox/src/box_top.vhd(16[6:17])
    input BTN_RIGHT_IN;   // c:/fpga/projects/fxbox/src/box_top.vhd(17[6:18])
    output ADC_SCK;   // c:/fpga/projects/fxbox/src/box_top.vhd(19[6:13])
    input ADC_BCK;   // c:/fpga/projects/fxbox/src/box_top.vhd(20[6:13])
    input ADC_LRCK;   // c:/fpga/projects/fxbox/src/box_top.vhd(21[6:14])
    input ADC_DATA;   // c:/fpga/projects/fxbox/src/box_top.vhd(22[6:14])
    input ADC_CLIPL_P;   // c:/fpga/projects/fxbox/src/box_top.vhd(23[6:17])
    output ADC_SM;   // c:/fpga/projects/fxbox/src/box_top.vhd(24[6:12])
    output ADC_FMT1;   // c:/fpga/projects/fxbox/src/box_top.vhd(25[6:14])
    output ADC_FMT0;   // c:/fpga/projects/fxbox/src/box_top.vhd(26[6:14])
    output ADC_FS2;   // c:/fpga/projects/fxbox/src/box_top.vhd(27[6:13])
    output ADC_FS1;   // c:/fpga/projects/fxbox/src/box_top.vhd(28[6:13])
    output ADC_FS0;   // c:/fpga/projects/fxbox/src/box_top.vhd(29[6:13])
    output ADC_HPFD_P;   // c:/fpga/projects/fxbox/src/box_top.vhd(30[6:16])
    output ADC_RST_N;   // c:/fpga/projects/fxbox/src/box_top.vhd(31[6:15])
    output DAC_SCK;   // c:/fpga/projects/fxbox/src/box_top.vhd(33[6:13])
    output DAC_BCK;   // c:/fpga/projects/fxbox/src/box_top.vhd(34[6:13])
    output DAC_LRCK;   // c:/fpga/projects/fxbox/src/box_top.vhd(35[6:14])
    output DAC_DATA;   // c:/fpga/projects/fxbox/src/box_top.vhd(36[6:14])
    output DAC_I2C_SCL;   // c:/fpga/projects/fxbox/src/box_top.vhd(37[6:17])
    output DAC_I2C_SDA;   // c:/fpga/projects/fxbox/src/box_top.vhd(38[6:17])
    input DAC_ZEROL_P;   // c:/fpga/projects/fxbox/src/box_top.vhd(39[6:17])
    output DAC_RST_N;   // c:/fpga/projects/fxbox/src/box_top.vhd(40[6:15])
    input RESET;   // c:/fpga/projects/fxbox/src/box_top.vhd(42[6:11])
    
    wire DAC_BCK_c_c /* synthesis is_clock=1, SET_AS_NETWORK=DAC_BCK_c_c */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(20[6:13])
    wire DAC_LRCK_c_c /* synthesis is_clock=1, SET_AS_NETWORK=DAC_LRCK_c_c */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(21[6:14])
    wire [14:0]SYS_CLK_TREE /* synthesis is_clock=1, SET_AS_NETWORK=SYS_CLK_TREE[14] */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire M_CLK /* synthesis is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(142[9:14])
    wire DRV_RUN /* synthesis is_clock=1, SET_AS_NETWORK=DRV_RUN */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(164[9:16])
    wire M_CLK_N_25 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(19[6:13])
    wire BCLK_GATE_RELEASE /* synthesis is_clock=1, SET_AS_NETWORK=\I2SS/BCLK_GATE_RELEASE */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(58[9:26])
    wire BCLK_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(48[9:22])
    wire WCLK_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(47[9:23])
    
    wire GND_net, VCC_net, DISP_I2C_SDA_c, DISP_I2C_SCL_c, BTN_LEFT_IN_c, 
        BTN_RIGHT_IN_c, DAC_SCK_c, ADC_DATA_c, ADC_RST_N_c_c, DAC_DATA_c, 
        DAC_I2C_SCL_c, DAC_I2C_SDA_c, DAC_RST_N_c;
    wire [2:0]FX_MODE;   // c:/fpga/projects/fxbox/src/box_top.vhd(162[9:16])
    
    wire FX_DIR, DRV_BUSY, BTN_LEFT_OUT_H, BTN_RIGHT_OUT_H, BTN_CLR;
    wire [1:0]BTN_LEFT_OUT_SR;   // c:/fpga/projects/fxbox/src/box_top.vhd(171[9:24])
    wire [1:0]BTN_RIGHT_OUT_SR;   // c:/fpga/projects/fxbox/src/box_top.vhd(172[9:25])
    
    wire n66, n67, n68, n69, n70, n71;
    wire [2:0]FX_MODE_2__N_18;
    
    wire n77;
    wire [23:0]DATA_IN_R_T;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(44[9:20])
    
    wire WCLK_R, WCLK_EDGE, n2194, WCLK_EDGE_N_123, READY_FLAG_N_120, 
        n2200, n2199, n2198, n2197, n2196, n2195, n12, n9, n15, 
        n13, n5, n6, n11;
    wire [3:0]PS_DRV_3__N_221;
    
    wire n7, n8, n3;
    wire [3:0]PS_DRV_3__N_209;
    
    wire n4, n14, n10, n80, n79, n78, n2, n76, n75, n72, 
        n74, n73, n1531, n2840;
    
    VHI i2 (.Z(VCC_net));
    INV i2096 (.A(DAC_BCK_c_c), .Z(BCLK_N_118));   // c:/fpga/projects/fxbox/src/box_top.vhd(20[6:13])
    OSCH OSC0 (.STDBY(GND_net), .OSC(M_CLK)) /* synthesis syn_instantiated=1 */ ;
    defparam OSC0.NOM_FREQ = "38.00";
    FD1S3AX BTN_LEFT_OUT_SR_i0 (.D(BTN_LEFT_OUT_H), .CK(SYS_CLK_TREE[5]), 
            .Q(BTN_LEFT_OUT_SR[0]));   // c:/fpga/projects/fxbox/src/box_top.vhd(353[3] 363[10])
    defparam BTN_LEFT_OUT_SR_i0.GSR = "ENABLED";
    FD1S3AX BTN_RIGHT_OUT_SR_i0 (.D(BTN_RIGHT_OUT_H), .CK(SYS_CLK_TREE[5]), 
            .Q(BTN_RIGHT_OUT_SR[0]));   // c:/fpga/projects/fxbox/src/box_top.vhd(353[3] 363[10])
    defparam BTN_RIGHT_OUT_SR_i0.GSR = "ENABLED";
    FD1S3AY FX_MODE_i0 (.D(FX_MODE_2__N_18[0]), .CK(DRV_RUN), .Q(FX_MODE[0]));   // c:/fpga/projects/fxbox/src/box_top.vhd(370[3] 388[10])
    defparam FX_MODE_i0.GSR = "ENABLED";
    GSR GSR_INST (.GSR(ADC_RST_N_c_c)) /* synthesis syn_black_box=true, syn_noprune=1, syn_instantiated=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(195[9:12])
    OB ADC_FS1_pad (.I(VCC_net), .O(ADC_FS1));   // c:/fpga/projects/fxbox/src/box_top.vhd(28[6:13])
    LUT4 i2_3_lut_4_lut (.A(BTN_LEFT_OUT_SR[1]), .B(FX_DIR), .C(PS_DRV_3__N_209[3]), 
         .D(ADC_RST_N_c_c), .Z(PS_DRV_3__N_221[2])) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(347[14:43])
    defparam i2_3_lut_4_lut.init = 16'h0e00;
    LUT4 DRV_RUN_I_0_2_lut_3_lut (.A(BTN_LEFT_OUT_SR[1]), .B(FX_DIR), .C(ADC_RST_N_c_c), 
         .Z(DRV_RUN)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(347[14:43])
    defparam DRV_RUN_I_0_2_lut_3_lut.init = 16'he0e0;
    OB ADC_FS0_pad (.I(GND_net), .O(ADC_FS0));   // c:/fpga/projects/fxbox/src/box_top.vhd(29[6:13])
    LUT4 DRV_BUSY_I_0_2_lut (.A(DRV_BUSY), .B(ADC_RST_N_c_c), .Z(BTN_CLR)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(340[13:31])
    defparam DRV_BUSY_I_0_2_lut.init = 16'h8888;
    OB ADC_FS2_pad (.I(GND_net), .O(ADC_FS2));   // c:/fpga/projects/fxbox/src/box_top.vhd(27[6:13])
    INV i2094 (.A(M_CLK), .Z(M_CLK_N_25));
    OB ADC_FMT0_pad (.I(VCC_net), .O(ADC_FMT0));   // c:/fpga/projects/fxbox/src/box_top.vhd(26[6:14])
    OB ADC_FMT1_pad (.I(GND_net), .O(ADC_FMT1));   // c:/fpga/projects/fxbox/src/box_top.vhd(25[6:14])
    OB ADC_SM_pad (.I(GND_net), .O(ADC_SM));   // c:/fpga/projects/fxbox/src/box_top.vhd(24[6:12])
    OB ADC_SCK_pad (.I(DAC_SCK_c), .O(ADC_SCK));   // c:/fpga/projects/fxbox/src/box_top.vhd(19[6:13])
    \i2s_slave(24,128,1)  I2SS (.BCLK_N_118(BCLK_N_118), .READY_FLAG_N_120(READY_FLAG_N_120), 
            .BCLK_GATE_RELEASE(BCLK_GATE_RELEASE), .n2840(n2840), .DATA_IN_R_T({DATA_IN_R_T[23], 
            Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, 
            Open_7, Open_8, Open_9, Open_10, Open_11, Open_12, Open_13, 
            Open_14, Open_15, Open_16, Open_17, Open_18, Open_19, 
            Open_20, Open_21, DATA_IN_R_T[0]}), .ADC_DATA_c(ADC_DATA_c), 
            .DAC_BCK_c_c(DAC_BCK_c_c), .WCLK_EDGE(WCLK_EDGE), .DAC_LRCK_c_c(DAC_LRCK_c_c), 
            .\DATA_IN_R_T[21] (DATA_IN_R_T[21]), .\DATA_IN_R_T[20] (DATA_IN_R_T[20]), 
            .\DATA_IN_R_T[19] (DATA_IN_R_T[19]), .\DATA_IN_R_T[18] (DATA_IN_R_T[18]), 
            .\DATA_IN_R_T[17] (DATA_IN_R_T[17]), .\DATA_IN_R_T[16] (DATA_IN_R_T[16]), 
            .\DATA_IN_R_T[15] (DATA_IN_R_T[15]), .\DATA_IN_R_T[14] (DATA_IN_R_T[14]), 
            .\DATA_IN_R_T[13] (DATA_IN_R_T[13]), .\DATA_IN_R_T[12] (DATA_IN_R_T[12]), 
            .\DATA_IN_R_T[11] (DATA_IN_R_T[11]), .\DATA_IN_R_T[10] (DATA_IN_R_T[10]), 
            .\DATA_IN_R_T[9] (DATA_IN_R_T[9]), .\DATA_IN_R_T[8] (DATA_IN_R_T[8]), 
            .\DATA_IN_R_T[7] (DATA_IN_R_T[7]), .\DATA_IN_R_T[6] (DATA_IN_R_T[6]), 
            .\DATA_IN_R_T[5] (DATA_IN_R_T[5]), .\DATA_IN_R_T[4] (DATA_IN_R_T[4]), 
            .\DATA_IN_R_T[3] (DATA_IN_R_T[3]), .\DATA_IN_R_T[2] (DATA_IN_R_T[2]), 
            .\DATA_IN_R_T[1] (DATA_IN_R_T[1]), .WCLK_R(WCLK_R), .WCLK_EDGE_N_123(WCLK_EDGE_N_123));   // c:/fpga/projects/fxbox/src/box_top.vhd(223[8:17])
    LUT4 FX_MODE_0__I_0_i1_3_lut (.A(FX_MODE[2]), .B(FX_MODE[1]), .C(FX_DIR), 
         .Z(FX_MODE_2__N_18[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(382[4] 386[11])
    defparam FX_MODE_0__I_0_i1_3_lut.init = 16'hcaca;
    OB DISP_I2C_SCL_pad (.I(DISP_I2C_SCL_c), .O(DISP_I2C_SCL));   // c:/fpga/projects/fxbox/src/box_top.vhd(14[6:18])
    OB DISP_I2C_SDA_pad (.I(DISP_I2C_SDA_c), .O(DISP_I2C_SDA));   // c:/fpga/projects/fxbox/src/box_top.vhd(13[9:21])
    LUT4 FX_MODE_0__I_0_i2_3_lut (.A(FX_MODE[0]), .B(FX_MODE[2]), .C(FX_DIR), 
         .Z(FX_MODE_2__N_18[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(382[4] 386[11])
    defparam FX_MODE_0__I_0_i2_3_lut.init = 16'hcaca;
    FD1S3AX I2S_CLK_TREE_0__34_501__i1 (.D(n10), .CK(M_CLK_N_25), .Q(DAC_SCK_c));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam I2S_CLK_TREE_0__34_501__i1.GSR = "ENABLED";
    INV i2095 (.A(DAC_LRCK_c_c), .Z(WCLK_N_175));   // c:/fpga/projects/fxbox/src/box_top.vhd(21[6:14])
    FD1S3AX SYS_CLK_TREE_500__i0 (.D(n80), .CK(M_CLK), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i0.GSR = "ENABLED";
    LUT4 i1795_4_lut (.A(FX_MODE[2]), .B(ADC_RST_N_c_c), .C(FX_MODE[1]), 
         .D(FX_MODE[0]), .Z(n1531)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(412[2] 416[32])
    defparam i1795_4_lut.init = 16'hfbff;
    FD1S3AX FX_MODE_i2 (.D(FX_MODE_2__N_18[2]), .CK(DRV_RUN), .Q(FX_MODE[2]));   // c:/fpga/projects/fxbox/src/box_top.vhd(370[3] 388[10])
    defparam FX_MODE_i2.GSR = "ENABLED";
    CCU2D SYS_CLK_TREE_500_add_4_15 (.A0(n2), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(SYS_CLK_TREE[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2200), .S0(n67), .S1(n66));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500_add_4_15.INIT0 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_15.INIT1 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_15.INJECT1_0 = "NO";
    defparam SYS_CLK_TREE_500_add_4_15.INJECT1_1 = "NO";
    CCU2D SYS_CLK_TREE_500_add_4_13 (.A0(n4), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2199), .COUT(n2200), .S0(n69), .S1(n68));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500_add_4_13.INIT0 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_13.INIT1 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_13.INJECT1_0 = "NO";
    defparam SYS_CLK_TREE_500_add_4_13.INJECT1_1 = "NO";
    FD1S3AX FX_MODE_i1 (.D(FX_MODE_2__N_18[1]), .CK(DRV_RUN), .Q(FX_MODE[1]));   // c:/fpga/projects/fxbox/src/box_top.vhd(370[3] 388[10])
    defparam FX_MODE_i1.GSR = "ENABLED";
    FD1S3AX BTN_RIGHT_OUT_SR_i1 (.D(BTN_RIGHT_OUT_SR[0]), .CK(SYS_CLK_TREE[5]), 
            .Q(FX_DIR));   // c:/fpga/projects/fxbox/src/box_top.vhd(353[3] 363[10])
    defparam BTN_RIGHT_OUT_SR_i1.GSR = "ENABLED";
    FD1S3AX BTN_LEFT_OUT_SR_i1 (.D(BTN_LEFT_OUT_SR[0]), .CK(SYS_CLK_TREE[5]), 
            .Q(BTN_LEFT_OUT_SR[1]));   // c:/fpga/projects/fxbox/src/box_top.vhd(353[3] 363[10])
    defparam BTN_LEFT_OUT_SR_i1.GSR = "ENABLED";
    OB ADC_HPFD_P_pad (.I(GND_net), .O(ADC_HPFD_P));   // c:/fpga/projects/fxbox/src/box_top.vhd(30[6:16])
    OB ADC_RST_N_pad (.I(ADC_RST_N_c_c), .O(ADC_RST_N));   // c:/fpga/projects/fxbox/src/box_top.vhd(31[6:15])
    OB DAC_SCK_pad (.I(DAC_SCK_c), .O(DAC_SCK));   // c:/fpga/projects/fxbox/src/box_top.vhd(33[6:13])
    OB DAC_BCK_pad (.I(DAC_BCK_c_c), .O(DAC_BCK));   // c:/fpga/projects/fxbox/src/box_top.vhd(34[6:13])
    OB DAC_LRCK_pad (.I(DAC_LRCK_c_c), .O(DAC_LRCK));   // c:/fpga/projects/fxbox/src/box_top.vhd(35[6:14])
    OB DAC_DATA_pad (.I(DAC_DATA_c), .O(DAC_DATA));   // c:/fpga/projects/fxbox/src/box_top.vhd(36[6:14])
    OB DAC_I2C_SCL_pad (.I(DAC_I2C_SCL_c), .O(DAC_I2C_SCL));   // c:/fpga/projects/fxbox/src/box_top.vhd(37[6:17])
    OB DAC_I2C_SDA_pad (.I(DAC_I2C_SDA_c), .O(DAC_I2C_SDA));   // c:/fpga/projects/fxbox/src/box_top.vhd(38[6:17])
    OB DAC_RST_N_pad (.I(DAC_RST_N_c), .O(DAC_RST_N));   // c:/fpga/projects/fxbox/src/box_top.vhd(40[6:15])
    IB BTN_LEFT_IN_pad (.I(BTN_LEFT_IN), .O(BTN_LEFT_IN_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(16[6:17])
    IB BTN_RIGHT_IN_pad (.I(BTN_RIGHT_IN), .O(BTN_RIGHT_IN_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(17[6:18])
    IB DAC_BCK_c_pad (.I(ADC_BCK), .O(DAC_BCK_c_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(20[6:13])
    IB DAC_LRCK_c_pad (.I(ADC_LRCK), .O(DAC_LRCK_c_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(21[6:14])
    IB ADC_DATA_pad (.I(ADC_DATA), .O(ADC_DATA_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(22[6:14])
    IB ADC_RST_N_c_pad (.I(RESET), .O(ADC_RST_N_c_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(42[6:11])
    CCU2D SYS_CLK_TREE_500_add_4_11 (.A0(n6), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n5), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2198), .COUT(n2199), .S0(n71), .S1(n70));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500_add_4_11.INIT0 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_11.INIT1 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_11.INJECT1_0 = "NO";
    defparam SYS_CLK_TREE_500_add_4_11.INJECT1_1 = "NO";
    adc_controller ADC0 (.\SYS_CLK_TREE[5] (SYS_CLK_TREE[5]), .n2840(n2840), 
            .DAC_RST_N_c(DAC_RST_N_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(201[8:22])
    input_handler_U2 BTN0 (.BTN_LEFT_IN_c(BTN_LEFT_IN_c), .\SYS_CLK_TREE[14] (SYS_CLK_TREE[14]), 
            .BTN_LEFT_OUT_H(BTN_LEFT_OUT_H), .BTN_CLR(BTN_CLR), .n2840(n2840));   // c:/fpga/projects/fxbox/src/box_top.vhd(257[8:21])
    CCU2D SYS_CLK_TREE_500_add_4_9 (.A0(n8), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n7), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2197), .COUT(n2198), .S0(n73), .S1(n72));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500_add_4_9.INIT0 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_9.INIT1 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_9.INJECT1_0 = "NO";
    defparam SYS_CLK_TREE_500_add_4_9.INJECT1_1 = "NO";
    CCU2D SYS_CLK_TREE_500_add_4_7 (.A0(SYS_CLK_TREE[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(n9), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2196), .COUT(n2197), .S0(n75), .S1(n74));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500_add_4_7.INIT0 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_7.INIT1 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_7.INJECT1_0 = "NO";
    defparam SYS_CLK_TREE_500_add_4_7.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    CCU2D SYS_CLK_TREE_500_add_4_5 (.A0(n12), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n11), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2195), .COUT(n2196), .S0(n77), .S1(n76));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500_add_4_5.INIT0 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_5.INIT1 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_5.INJECT1_0 = "NO";
    defparam SYS_CLK_TREE_500_add_4_5.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D SYS_CLK_TREE_500_add_4_3 (.A0(n14), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2194), .COUT(n2195), .S0(n79), .S1(n78));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500_add_4_3.INIT0 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_3.INIT1 = 16'hfaaa;
    defparam SYS_CLK_TREE_500_add_4_3.INJECT1_0 = "NO";
    defparam SYS_CLK_TREE_500_add_4_3.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D SYS_CLK_TREE_500_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n15), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2194), .S1(n80));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500_add_4_1.INIT0 = 16'hF000;
    defparam SYS_CLK_TREE_500_add_4_1.INIT1 = 16'h0555;
    defparam SYS_CLK_TREE_500_add_4_1.INJECT1_0 = "NO";
    defparam SYS_CLK_TREE_500_add_4_1.INJECT1_1 = "NO";
    LUT4 i1558_1_lut (.A(DAC_SCK_c), .Z(n10)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1558_1_lut.init = 16'h5555;
    FD1S3AX SYS_CLK_TREE_500__i1 (.D(n79), .CK(M_CLK), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i1.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i2 (.D(n78), .CK(M_CLK), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i2.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i3 (.D(n77), .CK(M_CLK), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i3.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i4 (.D(n76), .CK(M_CLK), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i4.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i5 (.D(n75), .CK(M_CLK), .Q(SYS_CLK_TREE[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i5.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i6 (.D(n74), .CK(M_CLK), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i6.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i7 (.D(n73), .CK(M_CLK), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i7.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i8 (.D(n72), .CK(M_CLK), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i8.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i9 (.D(n71), .CK(M_CLK), .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i9.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i10 (.D(n70), .CK(M_CLK), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i10.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i11 (.D(n69), .CK(M_CLK), .Q(n4)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i11.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i12 (.D(n68), .CK(M_CLK), .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i12.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i13 (.D(n67), .CK(M_CLK), .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i13.GSR = "ENABLED";
    FD1S3AX SYS_CLK_TREE_500__i14 (.D(n66), .CK(M_CLK), .Q(SYS_CLK_TREE[14])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam SYS_CLK_TREE_500__i14.GSR = "ENABLED";
    LUT4 m1_lut (.Z(n2840)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    display_driver DD0 (.\SYS_CLK_TREE[5] (SYS_CLK_TREE[5]), .DRV_BUSY(DRV_BUSY), 
            .\SYS_CLK_TREE[14] (SYS_CLK_TREE[14]), .n2840(n2840), .FX_MODE({FX_MODE}), 
            .\PS_DRV_3__N_209[3] (PS_DRV_3__N_209[3]), .\PS_DRV_3__N_221[2] (PS_DRV_3__N_221[2]), 
            .VCC_net(VCC_net), .GND_net(GND_net), .DISP_I2C_SDA_c(DISP_I2C_SDA_c), 
            .DISP_I2C_SCL_c(DISP_I2C_SCL_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(247[7:21])
    LUT4 FX_MODE_0__I_0_i3_3_lut (.A(FX_MODE[1]), .B(FX_MODE[0]), .C(FX_DIR), 
         .Z(FX_MODE_2__N_18[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(382[4] 386[11])
    defparam FX_MODE_0__I_0_i3_3_lut.init = 16'hcaca;
    \i2s_master(24,128,1)  I2SM (.DAC_LRCK_c_c(DAC_LRCK_c_c), .DAC_DATA_c(DAC_DATA_c), 
            .WCLK_R(WCLK_R), .DAC_BCK_c_c(DAC_BCK_c_c), .WCLK_EDGE(WCLK_EDGE), 
            .WCLK_EDGE_N_123(WCLK_EDGE_N_123), .n2840(n2840), .BCLK_N_118(BCLK_N_118), 
            .READY_FLAG_N_120(READY_FLAG_N_120), .BCLK_GATE_RELEASE(BCLK_GATE_RELEASE), 
            .WCLK_N_175(WCLK_N_175), .n1531(n1531), .\DATA_IN_R_T[23] (DATA_IN_R_T[23]), 
            .\DATA_IN_R_T[21] (DATA_IN_R_T[21]), .\DATA_IN_R_T[20] (DATA_IN_R_T[20]), 
            .\DATA_IN_R_T[19] (DATA_IN_R_T[19]), .\DATA_IN_R_T[18] (DATA_IN_R_T[18]), 
            .\DATA_IN_R_T[17] (DATA_IN_R_T[17]), .\DATA_IN_R_T[16] (DATA_IN_R_T[16]), 
            .\DATA_IN_R_T[15] (DATA_IN_R_T[15]), .\DATA_IN_R_T[14] (DATA_IN_R_T[14]), 
            .\DATA_IN_R_T[13] (DATA_IN_R_T[13]), .\DATA_IN_R_T[12] (DATA_IN_R_T[12]), 
            .\DATA_IN_R_T[11] (DATA_IN_R_T[11]), .\DATA_IN_R_T[10] (DATA_IN_R_T[10]), 
            .\DATA_IN_R_T[9] (DATA_IN_R_T[9]), .\DATA_IN_R_T[8] (DATA_IN_R_T[8]), 
            .\DATA_IN_R_T[7] (DATA_IN_R_T[7]), .\DATA_IN_R_T[6] (DATA_IN_R_T[6]), 
            .\DATA_IN_R_T[5] (DATA_IN_R_T[5]), .\DATA_IN_R_T[4] (DATA_IN_R_T[4]), 
            .\DATA_IN_R_T[3] (DATA_IN_R_T[3]), .\DATA_IN_R_T[2] (DATA_IN_R_T[2]), 
            .\DATA_IN_R_T[1] (DATA_IN_R_T[1]), .\DATA_IN_R_T[0] (DATA_IN_R_T[0]));   // c:/fpga/projects/fxbox/src/box_top.vhd(235[8:18])
    input_handler BTN1 (.\SYS_CLK_TREE[14] (SYS_CLK_TREE[14]), .BTN_RIGHT_OUT_H(BTN_RIGHT_OUT_H), 
            .BTN_CLR(BTN_CLR), .n2840(n2840), .BTN_RIGHT_IN_c(BTN_RIGHT_IN_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(263[8:21])
    dac_controller DAC0 (.\SYS_CLK_TREE[5] (SYS_CLK_TREE[5]), .n2840(n2840), 
            .DAC_RST_N_c(DAC_RST_N_c), .DAC_I2C_SDA_c(DAC_I2C_SDA_c), .DAC_I2C_SCL_c(DAC_I2C_SCL_c));   // c:/fpga/projects/fxbox/src/box_top.vhd(215[8:22])
    
endmodule
//
// Verilog Description of module \i2s_slave(24,128,1) 
//

module \i2s_slave(24,128,1)  (BCLK_N_118, READY_FLAG_N_120, BCLK_GATE_RELEASE, 
            n2840, DATA_IN_R_T, ADC_DATA_c, DAC_BCK_c_c, WCLK_EDGE, 
            DAC_LRCK_c_c, \DATA_IN_R_T[21] , \DATA_IN_R_T[20] , \DATA_IN_R_T[19] , 
            \DATA_IN_R_T[18] , \DATA_IN_R_T[17] , \DATA_IN_R_T[16] , \DATA_IN_R_T[15] , 
            \DATA_IN_R_T[14] , \DATA_IN_R_T[13] , \DATA_IN_R_T[12] , \DATA_IN_R_T[11] , 
            \DATA_IN_R_T[10] , \DATA_IN_R_T[9] , \DATA_IN_R_T[8] , \DATA_IN_R_T[7] , 
            \DATA_IN_R_T[6] , \DATA_IN_R_T[5] , \DATA_IN_R_T[4] , \DATA_IN_R_T[3] , 
            \DATA_IN_R_T[2] , \DATA_IN_R_T[1] , WCLK_R, WCLK_EDGE_N_123);
    input BCLK_N_118;
    input READY_FLAG_N_120;
    output BCLK_GATE_RELEASE;
    input n2840;
    output [23:0]DATA_IN_R_T;
    input ADC_DATA_c;
    input DAC_BCK_c_c;
    input WCLK_EDGE;
    input DAC_LRCK_c_c;
    output \DATA_IN_R_T[21] ;
    output \DATA_IN_R_T[20] ;
    output \DATA_IN_R_T[19] ;
    output \DATA_IN_R_T[18] ;
    output \DATA_IN_R_T[17] ;
    output \DATA_IN_R_T[16] ;
    output \DATA_IN_R_T[15] ;
    output \DATA_IN_R_T[14] ;
    output \DATA_IN_R_T[13] ;
    output \DATA_IN_R_T[12] ;
    output \DATA_IN_R_T[11] ;
    output \DATA_IN_R_T[10] ;
    output \DATA_IN_R_T[9] ;
    output \DATA_IN_R_T[8] ;
    output \DATA_IN_R_T[7] ;
    output \DATA_IN_R_T[6] ;
    output \DATA_IN_R_T[5] ;
    output \DATA_IN_R_T[4] ;
    output \DATA_IN_R_T[3] ;
    output \DATA_IN_R_T[2] ;
    output \DATA_IN_R_T[1] ;
    input WCLK_R;
    output WCLK_EDGE_N_123;
    
    wire BCLK_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(48[9:22])
    wire BCLK_GATE_RELEASE /* synthesis is_clock=1, SET_AS_NETWORK=\I2SS/BCLK_GATE_RELEASE */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(58[9:26])
    wire BCLK_SR_R /* synthesis is_clock=1, SET_AS_NETWORK=\I2SS/BCLK_SR_R */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(56[9:18])
    wire DAC_BCK_c_c /* synthesis is_clock=1, SET_AS_NETWORK=DAC_BCK_c_c */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(20[6:13])
    wire DAC_BCK_c_c_derived_5 /* synthesis is_clock=1, SET_AS_NETWORK=DAC_BCK_c_c_derived_5 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(20[6:13])
    wire DAC_LRCK_c_c /* synthesis is_clock=1, SET_AS_NETWORK=DAC_LRCK_c_c */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(21[6:14])
    
    wire BIT_CTR_RST_N, DATA_FULL_N_116, BCLK_GATE, BIT_CTR_RST_N_N_114;
    wire [4:0]BIT_CTR;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(47[9:16])
    wire [4:0]n25;
    
    wire n2658;
    wire [23:0]DATA_IN_R_T_c;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(44[9:20])
    
    wire n2315;
    
    FD1S3DX BIT_CTR_RST_N_62 (.D(DATA_FULL_N_116), .CK(BCLK_N_118), .CD(READY_FLAG_N_120), 
            .Q(BIT_CTR_RST_N)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(132[3] 144[10])
    defparam BIT_CTR_RST_N_62.GSR = "ENABLED";
    FD1S3DX BCLK_GATE_64 (.D(n2840), .CK(BCLK_GATE_RELEASE), .CD(BIT_CTR_RST_N_N_114), 
            .Q(BCLK_GATE)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(176[3] 184[10])
    defparam BCLK_GATE_64.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i0 (.D(ADC_DATA_c), .CK(BCLK_SR_R), .Q(DATA_IN_R_T[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i0.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR (.D(WCLK_EDGE), .CK(DAC_BCK_c_c), .CD(READY_FLAG_N_120), 
            .Q(BCLK_GATE_RELEASE));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(115[3] 123[10])
    defparam BIT_DELAY_SR.GSR = "ENABLED";
    FD1S3DX BIT_CTR_502__i0 (.D(n25[0]), .CK(DAC_BCK_c_c_derived_5), .CD(BIT_CTR_RST_N_N_114), 
            .Q(BIT_CTR[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_502__i0.GSR = "ENABLED";
    LUT4 i1049_2_lut_rep_26 (.A(DAC_BCK_c_c), .B(BCLK_GATE), .Z(DAC_BCK_c_c_derived_5)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(169[13:49])
    defparam i1049_2_lut_rep_26.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(DAC_BCK_c_c), .B(BCLK_GATE), .C(DAC_LRCK_c_c), 
         .Z(BCLK_SR_R)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(169[13:49])
    defparam i2_2_lut_3_lut.init = 16'h0808;
    LUT4 BIT_CTR_RST_N_I_0_1_lut (.A(BIT_CTR_RST_N), .Z(BIT_CTR_RST_N_N_114)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(150[7:26])
    defparam BIT_CTR_RST_N_I_0_1_lut.init = 16'h5555;
    LUT4 i1455_2_lut_rep_29 (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n2658)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1455_2_lut_rep_29.init = 16'h8888;
    LUT4 i1459_2_lut_3_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1459_2_lut_3_lut.init = 16'h7878;
    LUT4 i1466_2_lut_3_lut_4_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[3]), 
         .D(BIT_CTR[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1466_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1450_1_lut (.A(BIT_CTR[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1450_1_lut.init = 16'h5555;
    FD1S3AX DATA_IN_R_T_i23 (.D(DATA_IN_R_T_c[22]), .CK(BCLK_SR_R), .Q(DATA_IN_R_T[23])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i23.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i22 (.D(\DATA_IN_R_T[21] ), .CK(BCLK_SR_R), .Q(DATA_IN_R_T_c[22])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i22.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i21 (.D(\DATA_IN_R_T[20] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[21] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i21.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i20 (.D(\DATA_IN_R_T[19] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[20] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i20.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i19 (.D(\DATA_IN_R_T[18] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[19] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i19.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i18 (.D(\DATA_IN_R_T[17] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[18] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i18.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i17 (.D(\DATA_IN_R_T[16] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[17] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i17.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i16 (.D(\DATA_IN_R_T[15] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[16] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i16.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i15 (.D(\DATA_IN_R_T[14] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[15] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i15.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i14 (.D(\DATA_IN_R_T[13] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[14] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i14.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i13 (.D(\DATA_IN_R_T[12] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[13] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i13.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i12 (.D(\DATA_IN_R_T[11] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[12] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i12.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i11 (.D(\DATA_IN_R_T[10] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[11] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i11.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i10 (.D(\DATA_IN_R_T[9] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[10] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i10.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i9 (.D(\DATA_IN_R_T[8] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[9] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i9.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i8 (.D(\DATA_IN_R_T[7] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[8] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i8.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i7 (.D(\DATA_IN_R_T[6] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[7] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i7.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i6 (.D(\DATA_IN_R_T[5] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[6] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i6.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i5 (.D(\DATA_IN_R_T[4] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[5] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i5.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i4 (.D(\DATA_IN_R_T[3] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[4] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i4.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i3 (.D(\DATA_IN_R_T[2] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[3] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i3.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i2 (.D(\DATA_IN_R_T[1] ), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[2] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i2.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i1 (.D(DATA_IN_R_T[0]), .CK(BCLK_SR_R), .Q(\DATA_IN_R_T[1] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(211[3] 215[10])
    defparam DATA_IN_R_T_i1.GSR = "ENABLED";
    LUT4 WCLK_I_0_2_lut (.A(DAC_LRCK_c_c), .B(WCLK_R), .Z(WCLK_EDGE_N_123)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(105[17:32])
    defparam WCLK_I_0_2_lut.init = 16'h6666;
    FD1S3DX BIT_CTR_502__i1 (.D(n25[1]), .CK(DAC_BCK_c_c_derived_5), .CD(BIT_CTR_RST_N_N_114), 
            .Q(BIT_CTR[1]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_502__i1.GSR = "ENABLED";
    LUT4 i1452_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1452_2_lut.init = 16'h6666;
    FD1S3DX BIT_CTR_502__i2 (.D(n25[2]), .CK(DAC_BCK_c_c_derived_5), .CD(BIT_CTR_RST_N_N_114), 
            .Q(BIT_CTR[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_502__i2.GSR = "ENABLED";
    FD1S3DX BIT_CTR_502__i3 (.D(n25[3]), .CK(DAC_BCK_c_c_derived_5), .CD(BIT_CTR_RST_N_N_114), 
            .Q(BIT_CTR[3]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_502__i3.GSR = "ENABLED";
    FD1S3DX BIT_CTR_502__i4 (.D(n25[4]), .CK(DAC_BCK_c_c_derived_5), .CD(BIT_CTR_RST_N_N_114), 
            .Q(BIT_CTR[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_502__i4.GSR = "ENABLED";
    LUT4 i1473_3_lut_4_lut (.A(BIT_CTR[2]), .B(n2658), .C(BIT_CTR[3]), 
         .D(BIT_CTR[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1473_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3_4_lut (.A(BIT_CTR[0]), .B(BIT_CTR[2]), .C(BIT_CTR[1]), .D(n2315), 
         .Z(DATA_FULL_N_116)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i1672_2_lut (.A(BIT_CTR[3]), .B(BIT_CTR[4]), .Z(n2315)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1672_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module adc_controller
//

module adc_controller (\SYS_CLK_TREE[5] , n2840, DAC_RST_N_c);
    input \SYS_CLK_TREE[5] ;
    input n2840;
    output DAC_RST_N_c;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire [44:0]RST_WAIT_SR;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(30[9:20])
    
    FD1S3AX RST_WAIT_SR_i0 (.D(n2840), .CK(\SYS_CLK_TREE[5] ), .Q(RST_WAIT_SR[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i0.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i44 (.D(RST_WAIT_SR[43]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(DAC_RST_N_c)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i44.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i43 (.D(RST_WAIT_SR[42]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[43])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i43.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i42 (.D(RST_WAIT_SR[41]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[42])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i42.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i41 (.D(RST_WAIT_SR[40]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[41])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i41.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i40 (.D(RST_WAIT_SR[39]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[40])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i40.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i39 (.D(RST_WAIT_SR[38]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[39])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i39.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i38 (.D(RST_WAIT_SR[37]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[38])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i38.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i37 (.D(RST_WAIT_SR[36]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[37])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i37.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i36 (.D(RST_WAIT_SR[35]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[36])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i36.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i35 (.D(RST_WAIT_SR[34]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[35])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i35.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i34 (.D(RST_WAIT_SR[33]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[34])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i34.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i33 (.D(RST_WAIT_SR[32]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[33])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i33.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i32 (.D(RST_WAIT_SR[31]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[32])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i32.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i31 (.D(RST_WAIT_SR[30]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[31])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i31.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i30 (.D(RST_WAIT_SR[29]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[30])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i30.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i29 (.D(RST_WAIT_SR[28]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[29])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i29.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i28 (.D(RST_WAIT_SR[27]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[28])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i28.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i27 (.D(RST_WAIT_SR[26]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[27])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i27.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i26 (.D(RST_WAIT_SR[25]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[26])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i26.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i25 (.D(RST_WAIT_SR[24]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[25])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i25.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i24 (.D(RST_WAIT_SR[23]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[24])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i24.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i23 (.D(RST_WAIT_SR[22]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[23])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i23.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i22 (.D(RST_WAIT_SR[21]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[22])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i22.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i21 (.D(RST_WAIT_SR[20]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[21])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i21.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i20 (.D(RST_WAIT_SR[19]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[20])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i20.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i19 (.D(RST_WAIT_SR[18]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[19])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i19.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i18 (.D(RST_WAIT_SR[17]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[18])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i18.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i17 (.D(RST_WAIT_SR[16]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[17])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i17.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i16 (.D(RST_WAIT_SR[15]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i16.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i15 (.D(RST_WAIT_SR[14]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i15.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i14 (.D(RST_WAIT_SR[13]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i14.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i13 (.D(RST_WAIT_SR[12]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i13.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i12 (.D(RST_WAIT_SR[11]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i12.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i11 (.D(RST_WAIT_SR[10]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i11.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i10 (.D(RST_WAIT_SR[9]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i10.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i9 (.D(RST_WAIT_SR[8]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i9.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i8 (.D(RST_WAIT_SR[7]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i8.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i7 (.D(RST_WAIT_SR[6]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i7.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i6 (.D(RST_WAIT_SR[5]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i6.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i5 (.D(RST_WAIT_SR[4]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i5.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i4 (.D(RST_WAIT_SR[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i4.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i3 (.D(RST_WAIT_SR[2]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i3.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i2 (.D(RST_WAIT_SR[1]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i2.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i1 (.D(RST_WAIT_SR[0]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(RST_WAIT_SR[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=201, LSE_RLINE=201 */ ;   // c:/fpga/projects/fxbox/src/adc_controller.vhd(59[3] 67[10])
    defparam RST_WAIT_SR_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module input_handler_U2
//

module input_handler_U2 (BTN_LEFT_IN_c, \SYS_CLK_TREE[14] , BTN_LEFT_OUT_H, 
            BTN_CLR, n2840);
    input BTN_LEFT_IN_c;
    input \SYS_CLK_TREE[14] ;
    output BTN_LEFT_OUT_H;
    input BTN_CLR;
    input n2840;
    
    wire IN_DEBOUNCE /* synthesis is_inv_clock=1, is_clock=1, SET_AS_NETWORK=\BTN0/IN_DEBOUNCE */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(22[9:20])
    wire \SYS_CLK_TREE[14]  /* synthesis is_clock=1, SET_AS_NETWORK=SYS_CLK_TREE[14] */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    
    wire IN_BUTTON_N_302, n25, n38, n34, n26;
    wire [19:0]IN_BUTTON_SR;   // c:/fpga/projects/fxbox/src/input_handler.vhd(21[9:21])
    
    wire n36, n30, n32, n22;
    
    LUT4 IN_BUTTON_I_0_1_lut (.A(BTN_LEFT_IN_c), .Z(IN_BUTTON_N_302)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(40[70:83])
    defparam IN_BUTTON_I_0_1_lut.init = 16'h5555;
    LUT4 i19_4_lut (.A(n25), .B(n38), .C(n34), .D(n26), .Z(IN_DEBOUNCE)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(IN_BUTTON_SR[8]), .B(IN_BUTTON_SR[13]), .Z(n25)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(IN_BUTTON_SR[12]), .B(n36), .C(n30), .D(IN_BUTTON_SR[15]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(IN_BUTTON_SR[5]), .B(IN_BUTTON_SR[19]), .C(IN_BUTTON_SR[10]), 
         .D(IN_BUTTON_SR[4]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i14_4_lut.init = 16'hfffe;
    FD1S3AX IN_BUTTON_SR_i0 (.D(IN_BUTTON_N_302), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i0.GSR = "ENABLED";
    FD1S3DX OUT_BUTTON_T_17 (.D(n2840), .CK(IN_DEBOUNCE), .CD(BTN_CLR), 
            .Q(BTN_LEFT_OUT_H)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(50[3] 54[10])
    defparam OUT_BUTTON_T_17.GSR = "ENABLED";
    LUT4 i6_2_lut (.A(IN_BUTTON_SR[17]), .B(IN_BUTTON_SR[1]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i16_4_lut (.A(IN_BUTTON_SR[7]), .B(n32), .C(n22), .D(IN_BUTTON_SR[18]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i10_2_lut (.A(IN_BUTTON_SR[2]), .B(IN_BUTTON_SR[11]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i12_4_lut (.A(IN_BUTTON_SR[6]), .B(IN_BUTTON_SR[9]), .C(IN_BUTTON_SR[0]), 
         .D(IN_BUTTON_SR[14]), .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(IN_BUTTON_SR[16]), .B(IN_BUTTON_SR[3]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3AX IN_BUTTON_SR_i1 (.D(IN_BUTTON_SR[0]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i1.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i2 (.D(IN_BUTTON_SR[1]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i2.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i3 (.D(IN_BUTTON_SR[2]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i3.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i4 (.D(IN_BUTTON_SR[3]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i4.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i5 (.D(IN_BUTTON_SR[4]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i5.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i6 (.D(IN_BUTTON_SR[5]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i6.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i7 (.D(IN_BUTTON_SR[6]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i7.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i8 (.D(IN_BUTTON_SR[7]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i8.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i9 (.D(IN_BUTTON_SR[8]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i9.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i10 (.D(IN_BUTTON_SR[9]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i10.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i11 (.D(IN_BUTTON_SR[10]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i11.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i12 (.D(IN_BUTTON_SR[11]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i12.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i13 (.D(IN_BUTTON_SR[12]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i13.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i14 (.D(IN_BUTTON_SR[13]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i14.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i15 (.D(IN_BUTTON_SR[14]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i15.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i16 (.D(IN_BUTTON_SR[15]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i16.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i17 (.D(IN_BUTTON_SR[16]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[17])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i17.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i18 (.D(IN_BUTTON_SR[17]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[18])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i18.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i19 (.D(IN_BUTTON_SR[18]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[19])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=257, LSE_RLINE=257 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i19.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module display_driver
//

module display_driver (\SYS_CLK_TREE[5] , DRV_BUSY, \SYS_CLK_TREE[14] , 
            n2840, FX_MODE, \PS_DRV_3__N_209[3] , \PS_DRV_3__N_221[2] , 
            VCC_net, GND_net, DISP_I2C_SDA_c, DISP_I2C_SCL_c);
    input \SYS_CLK_TREE[5] ;
    output DRV_BUSY;
    input \SYS_CLK_TREE[14] ;
    input n2840;
    input [2:0]FX_MODE;
    output \PS_DRV_3__N_209[3] ;
    input \PS_DRV_3__N_221[2] ;
    input VCC_net;
    input GND_net;
    output DISP_I2C_SDA_c;
    output DISP_I2C_SCL_c;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire \SYS_CLK_TREE[14]  /* synthesis is_clock=1, SET_AS_NETWORK=SYS_CLK_TREE[14] */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire CTR_MCLK /* synthesis SET_AS_NETWORK=\DD0/CTR_MCLK, is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(107[9:17])
    
    wire n2801, n2800;
    wire [9:0]CTR_DRV;   // c:/fpga/projects/fxbox/src/display_driver.vhd(81[9:16])
    
    wire n2802, n2830, n2829, n2831;
    wire [63:0]DATA_ASCII;   // c:/fpga/projects/fxbox/src/display_driver.vhd(86[9:19])
    
    wire n2810;
    wire [1:0]DELAY_SR;   // c:/fpga/projects/fxbox/src/display_driver.vhd(110[9:17])
    
    wire CLK_GTA;
    wire [15:0]n567;
    
    wire n4, CLK_GTA_N_244, WRITE_EN_BUF, LOAD_CTR_D_DRV_9__N_208, n2811, 
        CLK_GTB, LOAD_CTR_DRV, LOAD_CTR_D_DRV_9__N_240, RUN_I2CC, RUN_I2CC_N_241, 
        BUSY_N_237, INIT_I2CC;
    wire [19:0]PON_DELAY_SR;   // c:/fpga/projects/fxbox/src/display_driver.vhd(120[9:21])
    
    wire n2757;
    wire [2:0]FX_MODE_R;   // c:/fpga/projects/fxbox/src/display_driver.vhd(118[9:18])
    
    wire n2755, n2754, n2756, n2795, n2792;
    wire [7:0]WRITE_DATA_BUF;   // c:/fpga/projects/fxbox/src/display_driver.vhd(105[9:23])
    wire [9:0]LOAD_CTR_D_DRV;   // c:/fpga/projects/fxbox/src/display_driver.vhd(83[9:23])
    
    wire n2794, n2793;
    wire [3:0]PS_DRV_3__N_233;
    
    wire n1305, n2727, n2724, n2827, n2680, n2681;
    wire [6:0]ADDR_ASCII;   // c:/fpga/projects/fxbox/src/display_driver.vhd(85[9:19])
    
    wire n2826, n1306;
    wire [7:0]DATA_REVERB;   // c:/fpga/projects/fxbox/src/display_driver.vhd(96[9:20])
    
    wire n2791, n2790;
    wire [7:0]DATA_ECHO;   // c:/fpga/projects/fxbox/src/display_driver.vhd(97[9:18])
    wire [7:0]DATA_CLEAN;   // c:/fpga/projects/fxbox/src/display_driver.vhd(95[9:19])
    
    wire n2704, n1364, n2770, n2767, n2660, n2659, n2828, n2674, 
        n2675, BUSY_N_238, n1301, n2705, n2769, n2768, n2707, 
        n2708, n606;
    wire [3:0]PS_DRV_3__N_217;
    
    wire n1299, n2812, n2809, n2726, n2725, n13, n14, n2663, 
        n2662, n2808, n2807, n1297, n2666, n1370, n2665, n2805, 
        n2669, n2668, n2804, n2803, n2723, n2722, n2672, n2671, 
        n2766, n2765, n2709, n2706, n2758, n2759;
    
    PFUMX i2052 (.BLUT(n2801), .ALUT(n2800), .C0(CTR_DRV[0]), .Z(n2802));
    PFUMX i2085 (.BLUT(n2830), .ALUT(n2829), .C0(CTR_DRV[0]), .Z(n2831));
    LUT4 DATA_ASCII_4__bdd_3_lut_2062 (.A(DATA_ASCII[28]), .B(DATA_ASCII[12]), 
         .C(CTR_DRV[1]), .Z(n2810)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam DATA_ASCII_4__bdd_3_lut_2062.init = 16'hacac;
    FD1S3AX DELAY_SR_i0 (.D(CLK_GTA), .CK(\SYS_CLK_TREE[5] ), .Q(DELAY_SR[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(256[3] 258[10])
    defparam DELAY_SR_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n567[2]), .B(n567[0]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3AX CLK_GTA_78 (.D(CLK_GTA_N_244), .CK(\SYS_CLK_TREE[5] ), .Q(CLK_GTA)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(237[3] 247[10])
    defparam CLK_GTA_78.GSR = "ENABLED";
    FD1S3JX WRITE_EN_BUF_82 (.D(LOAD_CTR_D_DRV_9__N_208), .CK(\SYS_CLK_TREE[5] ), 
            .PD(n567[4]), .Q(WRITE_EN_BUF)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(286[3] 296[10])
    defparam WRITE_EN_BUF_82.GSR = "ENABLED";
    LUT4 DATA_ASCII_4__bdd_3_lut (.A(DATA_ASCII[4]), .B(DATA_ASCII[20]), 
         .C(CTR_DRV[1]), .Z(n2811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_4__bdd_3_lut.init = 16'hcaca;
    FD1S3AX DELAY_SR_i1 (.D(DELAY_SR[0]), .CK(\SYS_CLK_TREE[5] ), .Q(CLK_GTB)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(256[3] 258[10])
    defparam DELAY_SR_i1.GSR = "ENABLED";
    FD1S3AX LOAD_CTR_DRV_83 (.D(LOAD_CTR_D_DRV_9__N_240), .CK(\SYS_CLK_TREE[5] ), 
            .Q(LOAD_CTR_DRV)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_DRV_83.GSR = "ENABLED";
    FD1S3AX RUN_I2CC_85 (.D(RUN_I2CC_N_241), .CK(\SYS_CLK_TREE[5] ), .Q(RUN_I2CC)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(329[3] 343[10])
    defparam RUN_I2CC_85.GSR = "ENABLED";
    FD1S3AX BUSY_86 (.D(BUSY_N_237), .CK(\SYS_CLK_TREE[5] ), .Q(DRV_BUSY)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(352[3] 361[10])
    defparam BUSY_86.GSR = "ENABLED";
    FD1S3JX INIT_I2CC_87 (.D(n4), .CK(\SYS_CLK_TREE[5] ), .PD(n567[1]), 
            .Q(INIT_I2CC)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(370[3] 381[10])
    defparam INIT_I2CC_87.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i0 (.D(n2840), .CK(\SYS_CLK_TREE[14] ), .Q(PON_DELAY_SR[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i0.GSR = "ENABLED";
    LUT4 DATA_ASCII_0__bdd_3_lut_2030 (.A(DATA_ASCII[24]), .B(DATA_ASCII[8]), 
         .C(CTR_DRV[1]), .Z(n2757)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam DATA_ASCII_0__bdd_3_lut_2030.init = 16'hacac;
    FD1S3AY FX_MODE_R_i0 (.D(FX_MODE[0]), .CK(\SYS_CLK_TREE[5] ), .Q(FX_MODE_R[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(267[3] 277[10])
    defparam FX_MODE_R_i0.GSR = "ENABLED";
    PFUMX i2028 (.BLUT(n2755), .ALUT(n2754), .C0(CTR_DRV[0]), .Z(n2756));
    L6MUX21 i2049 (.D0(n2795), .D1(n2792), .SD(CTR_DRV[2]), .Z(WRITE_DATA_BUF[2]));
    LUT4 DATA_ASCII_43__bdd_3_lut (.A(DATA_ASCII[35]), .B(DATA_ASCII[51]), 
         .C(CTR_DRV[1]), .Z(n2801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_43__bdd_3_lut.init = 16'hcaca;
    FD1S3IX LOAD_CTR_D_DRV__i0 (.D(CTR_DRV[0]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i0.GSR = "ENABLED";
    PFUMX i2047 (.BLUT(n2794), .ALUT(n2793), .C0(CTR_DRV[0]), .Z(n2795));
    LUT4 i658_4_lut (.A(n567[1]), .B(PS_DRV_3__N_233[0]), .C(\PS_DRV_3__N_209[3] ), 
         .D(n567[0]), .Z(n1305)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam i658_4_lut.init = 16'hce0a;
    LUT4 DATA_ASCII_2__bdd_3_lut (.A(DATA_ASCII[2]), .B(DATA_ASCII[18]), 
         .C(CTR_DRV[1]), .Z(n2794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_2__bdd_3_lut.init = 16'hcaca;
    L6MUX21 i2024 (.D0(n2727), .D1(n2724), .SD(CTR_DRV[2]), .Z(WRITE_DATA_BUF[5]));
    LUT4 DATA_ASCII_47__bdd_3_lut (.A(DATA_ASCII[39]), .B(DATA_ASCII[55]), 
         .C(CTR_DRV[1]), .Z(n2827)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_47__bdd_3_lut.init = 16'hcaca;
    PFUMX i1994 (.BLUT(n2680), .ALUT(n2681), .C0(FX_MODE_R[1]), .Z(ADDR_ASCII[0]));
    LUT4 DATA_ASCII_47__bdd_3_lut_2081 (.A(DATA_ASCII[47]), .B(DATA_ASCII[63]), 
         .C(CTR_DRV[1]), .Z(n2826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_47__bdd_3_lut_2081.init = 16'hcaca;
    FD1S3AY PS_DRV_FSM_i1 (.D(n1306), .CK(\SYS_CLK_TREE[5] ), .Q(n567[0]));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i1.GSR = "ENABLED";
    LUT4 n1703_bdd_4_lut_1974_then_3_lut (.A(DATA_REVERB[0]), .B(FX_MODE_R[2]), 
         .C(FX_MODE_R[0]), .Z(n2681)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1703_bdd_4_lut_1974_then_3_lut.init = 16'h0202;
    PFUMX i2044 (.BLUT(n2791), .ALUT(n2790), .C0(CTR_DRV[0]), .Z(n2792));
    LUT4 n1703_bdd_4_lut_1974_else_3_lut (.A(DATA_ECHO[0]), .B(DATA_CLEAN[0]), 
         .C(FX_MODE_R[2]), .D(FX_MODE_R[0]), .Z(n2680)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n1703_bdd_4_lut_1974_else_3_lut.init = 16'h0ca0;
    LUT4 DATA_ASCII_41__bdd_3_lut_2010 (.A(DATA_ASCII[41]), .B(DATA_ASCII[57]), 
         .C(CTR_DRV[1]), .Z(n2704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_41__bdd_3_lut_2010.init = 16'hcaca;
    LUT4 DATA_ASCII_2__bdd_3_lut_2046 (.A(DATA_ASCII[26]), .B(DATA_ASCII[10]), 
         .C(CTR_DRV[1]), .Z(n2793)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam DATA_ASCII_2__bdd_3_lut_2046.init = 16'hacac;
    LUT4 i716_3_lut (.A(\PS_DRV_3__N_209[3] ), .B(n567[2]), .C(n567[1]), 
         .Z(n1364)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam i716_3_lut.init = 16'ha8a8;
    L6MUX21 i2041 (.D0(n2770), .D1(n2767), .SD(CTR_DRV[2]), .Z(WRITE_DATA_BUF[6]));
    LUT4 n1703_bdd_4_lut_then_3_lut (.A(DATA_REVERB[6]), .B(FX_MODE_R[2]), 
         .C(FX_MODE_R[0]), .Z(n2660)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1703_bdd_4_lut_then_3_lut.init = 16'h0202;
    LUT4 n1703_bdd_4_lut_else_3_lut (.A(DATA_ECHO[6]), .B(DATA_CLEAN[6]), 
         .C(FX_MODE_R[2]), .D(FX_MODE_R[0]), .Z(n2659)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n1703_bdd_4_lut_else_3_lut.init = 16'h0ca0;
    LUT4 LOAD_CTR_D_DRV_9__N_208_I_0_1_lut (.A(LOAD_CTR_D_DRV_9__N_208), .Z(LOAD_CTR_D_DRV_9__N_240)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(307[4] 318[13])
    defparam LOAD_CTR_D_DRV_9__N_208_I_0_1_lut.init = 16'h5555;
    PFUMX i2082 (.BLUT(n2827), .ALUT(n2826), .C0(CTR_DRV[0]), .Z(n2828));
    PFUMX i1990 (.BLUT(n2674), .ALUT(n2675), .C0(FX_MODE_R[1]), .Z(ADDR_ASCII[3]));
    LUT4 i654_4_lut (.A(BUSY_N_238), .B(\PS_DRV_3__N_209[3] ), .C(\PS_DRV_3__N_221[2] ), 
         .D(n567[8]), .Z(n1301)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam i654_4_lut.init = 16'h3b0a;
    LUT4 DATA_ASCII_41__bdd_3_lut (.A(DATA_ASCII[33]), .B(DATA_ASCII[49]), 
         .C(CTR_DRV[1]), .Z(n2705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_41__bdd_3_lut.init = 16'hcaca;
    PFUMX i2039 (.BLUT(n2769), .ALUT(n2768), .C0(CTR_DRV[0]), .Z(n2770));
    LUT4 DATA_ASCII_1__bdd_3_lut_2013 (.A(DATA_ASCII[25]), .B(DATA_ASCII[9]), 
         .C(CTR_DRV[1]), .Z(n2707)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam DATA_ASCII_1__bdd_3_lut_2013.init = 16'hacac;
    LUT4 DATA_ASCII_40__bdd_3_lut (.A(DATA_ASCII[32]), .B(DATA_ASCII[48]), 
         .C(CTR_DRV[1]), .Z(n2755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_40__bdd_3_lut.init = 16'hcaca;
    LUT4 DATA_ASCII_1__bdd_3_lut_2070 (.A(DATA_ASCII[1]), .B(DATA_ASCII[17]), 
         .C(CTR_DRV[1]), .Z(n2708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_1__bdd_3_lut_2070.init = 16'hcaca;
    LUT4 reduce_or_142_i1_4_lut (.A(\PS_DRV_3__N_221[2] ), .B(\PS_DRV_3__N_209[3] ), 
         .C(BUSY_N_238), .D(n567[2]), .Z(n606)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam reduce_or_142_i1_4_lut.init = 16'hb3a0;
    LUT4 i652_3_lut (.A(LOAD_CTR_D_DRV_9__N_208), .B(n567[4]), .C(PS_DRV_3__N_217[1]), 
         .Z(n1299)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam i652_3_lut.init = 16'hcece;
    L6MUX21 i2065 (.D0(n2812), .D1(n2809), .SD(CTR_DRV[2]), .Z(WRITE_DATA_BUF[4]));
    PFUMX i2063 (.BLUT(n2811), .ALUT(n2810), .C0(CTR_DRV[0]), .Z(n2812));
    LUT4 DATA_ASCII_7__bdd_3_lut_2084 (.A(DATA_ASCII[31]), .B(DATA_ASCII[15]), 
         .C(CTR_DRV[1]), .Z(n2829)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam DATA_ASCII_7__bdd_3_lut_2084.init = 16'hacac;
    PFUMX i2022 (.BLUT(n2726), .ALUT(n2725), .C0(CTR_DRV[0]), .Z(n2727));
    FD1S3AX PON_DELAY_SR_i1 (.D(PON_DELAY_SR[0]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n13), .B(CTR_DRV[1]), .C(n14), .D(CTR_DRV[2]), 
         .Z(PS_DRV_3__N_217[1])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(180[30:55])
    defparam i1_4_lut.init = 16'h8000;
    LUT4 n1703_bdd_4_lut_1979_then_3_lut (.A(DATA_REVERB[5]), .B(FX_MODE_R[2]), 
         .C(FX_MODE_R[0]), .Z(n2663)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1703_bdd_4_lut_1979_then_3_lut.init = 16'h0202;
    LUT4 i5_4_lut (.A(CTR_DRV[7]), .B(CTR_DRV[3]), .C(CTR_DRV[4]), .D(CTR_DRV[6]), 
         .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(180[30:55])
    defparam i5_4_lut.init = 16'h8000;
    FD1S3AX PON_DELAY_SR_i2 (.D(PON_DELAY_SR[1]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i2.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i3 (.D(PON_DELAY_SR[2]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i3.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i4 (.D(PON_DELAY_SR[3]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i4.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i5 (.D(PON_DELAY_SR[4]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i5.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i6 (.D(PON_DELAY_SR[5]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i6.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i7 (.D(PON_DELAY_SR[6]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i7.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i8 (.D(PON_DELAY_SR[7]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i8.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i9 (.D(PON_DELAY_SR[8]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i9.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i10 (.D(PON_DELAY_SR[9]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i10.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i11 (.D(PON_DELAY_SR[10]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i11.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i12 (.D(PON_DELAY_SR[11]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i12.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i13 (.D(PON_DELAY_SR[12]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i13.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i14 (.D(PON_DELAY_SR[13]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i14.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i15 (.D(PON_DELAY_SR[14]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i15.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i16 (.D(PON_DELAY_SR[15]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i16.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i17 (.D(PON_DELAY_SR[16]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[17])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i17.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i18 (.D(PON_DELAY_SR[17]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PON_DELAY_SR[18])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i18.GSR = "ENABLED";
    FD1S3AX PON_DELAY_SR_i19 (.D(PON_DELAY_SR[18]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(PS_DRV_3__N_233[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(220[3] 228[10])
    defparam PON_DELAY_SR_i19.GSR = "ENABLED";
    FD1S3AX FX_MODE_R_i1 (.D(FX_MODE[1]), .CK(\SYS_CLK_TREE[5] ), .Q(FX_MODE_R[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(267[3] 277[10])
    defparam FX_MODE_R_i1.GSR = "ENABLED";
    FD1S3AX FX_MODE_R_i2 (.D(FX_MODE[2]), .CK(\SYS_CLK_TREE[5] ), .Q(FX_MODE_R[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(267[3] 277[10])
    defparam FX_MODE_R_i2.GSR = "ENABLED";
    LUT4 n1703_bdd_4_lut_1979_else_3_lut (.A(DATA_ECHO[5]), .B(DATA_CLEAN[5]), 
         .C(FX_MODE_R[2]), .D(FX_MODE_R[0]), .Z(n2662)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n1703_bdd_4_lut_1979_else_3_lut.init = 16'h0ca0;
    LUT4 i6_4_lut (.A(CTR_DRV[0]), .B(CTR_DRV[8]), .C(CTR_DRV[9]), .D(CTR_DRV[5]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(180[30:55])
    defparam i6_4_lut.init = 16'h8000;
    PFUMX i2060 (.BLUT(n2808), .ALUT(n2807), .C0(CTR_DRV[0]), .Z(n2809));
    LUT4 i650_3_lut (.A(n567[7]), .B(n567[6]), .C(\PS_DRV_3__N_209[3] ), 
         .Z(n1297)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam i650_3_lut.init = 16'hcece;
    LUT4 n1703_bdd_4_lut_1978_then_3_lut (.A(DATA_REVERB[1]), .B(FX_MODE_R[2]), 
         .C(FX_MODE_R[0]), .Z(n2666)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1703_bdd_4_lut_1978_then_3_lut.init = 16'h0202;
    LUT4 i721_3_lut (.A(\PS_DRV_3__N_209[3] ), .B(n567[8]), .C(n567[7]), 
         .Z(n1370)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam i721_3_lut.init = 16'ha8a8;
    LUT4 n1703_bdd_4_lut_1978_else_3_lut (.A(DATA_ECHO[1]), .B(DATA_CLEAN[1]), 
         .C(FX_MODE_R[2]), .D(FX_MODE_R[0]), .Z(n2665)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n1703_bdd_4_lut_1978_else_3_lut.init = 16'h0ca0;
    LUT4 DATA_ASCII_40__bdd_3_lut_2027 (.A(DATA_ASCII[40]), .B(DATA_ASCII[56]), 
         .C(CTR_DRV[1]), .Z(n2754)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_40__bdd_3_lut_2027.init = 16'hcaca;
    L6MUX21 i2057 (.D0(n2805), .D1(n2802), .SD(CTR_DRV[2]), .Z(WRITE_DATA_BUF[3]));
    LUT4 n1703_bdd_4_lut_1977_then_3_lut (.A(DATA_REVERB[4]), .B(FX_MODE_R[2]), 
         .C(FX_MODE_R[0]), .Z(n2669)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1703_bdd_4_lut_1977_then_3_lut.init = 16'h0202;
    LUT4 n1703_bdd_4_lut_1977_else_3_lut (.A(DATA_ECHO[4]), .B(DATA_CLEAN[4]), 
         .C(FX_MODE_R[2]), .D(FX_MODE_R[0]), .Z(n2668)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n1703_bdd_4_lut_1977_else_3_lut.init = 16'h0ca0;
    L6MUX21 i2087 (.D0(n2831), .D1(n2828), .SD(CTR_DRV[2]), .Z(WRITE_DATA_BUF[7]));
    PFUMX i2055 (.BLUT(n2804), .ALUT(n2803), .C0(CTR_DRV[0]), .Z(n2805));
    LUT4 i1118_3_lut (.A(\SYS_CLK_TREE[5] ), .B(CLK_GTB), .C(CLK_GTA), 
         .Z(CTR_MCLK)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(207[2] 209[22])
    defparam i1118_3_lut.init = 16'hbaba;
    PFUMX i2019 (.BLUT(n2723), .ALUT(n2722), .C0(CTR_DRV[0]), .Z(n2724));
    LUT4 DATA_ASCII_7__bdd_3_lut (.A(DATA_ASCII[7]), .B(DATA_ASCII[23]), 
         .C(CTR_DRV[1]), .Z(n2830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_7__bdd_3_lut.init = 16'hcaca;
    LUT4 DATA_ASCII_43__bdd_3_lut_2051 (.A(DATA_ASCII[43]), .B(DATA_ASCII[59]), 
         .C(CTR_DRV[1]), .Z(n2800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_43__bdd_3_lut_2051.init = 16'hcaca;
    LUT4 n1703_bdd_4_lut_1976_then_3_lut (.A(DATA_REVERB[2]), .B(FX_MODE_R[2]), 
         .C(FX_MODE_R[0]), .Z(n2672)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1703_bdd_4_lut_1976_then_3_lut.init = 16'h0202;
    LUT4 n1703_bdd_4_lut_1976_else_3_lut (.A(DATA_ECHO[2]), .B(DATA_CLEAN[2]), 
         .C(FX_MODE_R[2]), .D(FX_MODE_R[0]), .Z(n2671)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n1703_bdd_4_lut_1976_else_3_lut.init = 16'h0ca0;
    FD1S3IX LOAD_CTR_D_DRV__i1 (.D(CTR_DRV[1]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i1.GSR = "ENABLED";
    FD1S3IX LOAD_CTR_D_DRV__i2 (.D(CTR_DRV[2]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i2.GSR = "ENABLED";
    FD1S3IX LOAD_CTR_D_DRV__i3 (.D(CTR_DRV[3]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i3.GSR = "ENABLED";
    FD1S3IX LOAD_CTR_D_DRV__i4 (.D(CTR_DRV[4]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i4.GSR = "ENABLED";
    FD1S3IX LOAD_CTR_D_DRV__i5 (.D(CTR_DRV[5]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i5.GSR = "ENABLED";
    FD1S3IX LOAD_CTR_D_DRV__i6 (.D(CTR_DRV[6]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i6.GSR = "ENABLED";
    FD1S3IX LOAD_CTR_D_DRV__i7 (.D(CTR_DRV[7]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i7.GSR = "ENABLED";
    FD1S3IX LOAD_CTR_D_DRV__i8 (.D(CTR_DRV[8]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i8.GSR = "ENABLED";
    FD1S3IX LOAD_CTR_D_DRV__i9 (.D(CTR_DRV[9]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(LOAD_CTR_D_DRV[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=247, LSE_RLINE=247 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(305[3] 320[10])
    defparam LOAD_CTR_D_DRV__i9.GSR = "ENABLED";
    FD1S3AX PS_DRV_FSM_i2 (.D(n1305), .CK(\SYS_CLK_TREE[5] ), .Q(n567[1]));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i2.GSR = "ENABLED";
    LUT4 DATA_ASCII_46__bdd_3_lut (.A(DATA_ASCII[38]), .B(DATA_ASCII[54]), 
         .C(CTR_DRV[1]), .Z(n2766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_46__bdd_3_lut.init = 16'hcaca;
    LUT4 DATA_ASCII_46__bdd_3_lut_2035 (.A(DATA_ASCII[46]), .B(DATA_ASCII[62]), 
         .C(CTR_DRV[1]), .Z(n2765)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_46__bdd_3_lut_2035.init = 16'hcaca;
    LUT4 DATA_ASCII_5__bdd_3_lut (.A(DATA_ASCII[5]), .B(DATA_ASCII[21]), 
         .C(CTR_DRV[1]), .Z(n2726)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_5__bdd_3_lut.init = 16'hcaca;
    LUT4 DATA_ASCII_5__bdd_3_lut_2021 (.A(DATA_ASCII[29]), .B(DATA_ASCII[13]), 
         .C(CTR_DRV[1]), .Z(n2725)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam DATA_ASCII_5__bdd_3_lut_2021.init = 16'hacac;
    FD1S3AX PS_DRV_FSM_i3 (.D(n1364), .CK(\SYS_CLK_TREE[5] ), .Q(n567[2]));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i3.GSR = "ENABLED";
    FD1S3AX PS_DRV_FSM_i4 (.D(n1301), .CK(\SYS_CLK_TREE[5] ), .Q(BUSY_N_238));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i4.GSR = "ENABLED";
    FD1S3AX PS_DRV_FSM_i5 (.D(n606), .CK(\SYS_CLK_TREE[5] ), .Q(n567[4]));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i5.GSR = "ENABLED";
    FD1S3AX PS_DRV_FSM_i6 (.D(n1299), .CK(\SYS_CLK_TREE[5] ), .Q(LOAD_CTR_D_DRV_9__N_208));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i6.GSR = "ENABLED";
    FD1S3IX PS_DRV_FSM_i7 (.D(PS_DRV_3__N_217[1]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(LOAD_CTR_D_DRV_9__N_240), .Q(n567[6]));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i7.GSR = "ENABLED";
    FD1S3AX PS_DRV_FSM_i8 (.D(n1297), .CK(\SYS_CLK_TREE[5] ), .Q(n567[7]));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i8.GSR = "ENABLED";
    FD1S3AX PS_DRV_FSM_i9 (.D(n1370), .CK(\SYS_CLK_TREE[5] ), .Q(n567[8]));   // c:/fpga/projects/fxbox/src/display_driver.vhd(396[4] 453[13])
    defparam PS_DRV_FSM_i9.GSR = "ENABLED";
    LUT4 DATA_ASCII_45__bdd_3_lut_2018 (.A(DATA_ASCII[45]), .B(DATA_ASCII[61]), 
         .C(CTR_DRV[1]), .Z(n2722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_45__bdd_3_lut_2018.init = 16'hcaca;
    LUT4 DATA_ASCII_45__bdd_3_lut (.A(DATA_ASCII[37]), .B(DATA_ASCII[53]), 
         .C(CTR_DRV[1]), .Z(n2723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_45__bdd_3_lut.init = 16'hcaca;
    LUT4 DATA_ASCII_6__bdd_3_lut_2038 (.A(DATA_ASCII[30]), .B(DATA_ASCII[14]), 
         .C(CTR_DRV[1]), .Z(n2768)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam DATA_ASCII_6__bdd_3_lut_2038.init = 16'hacac;
    PFUMX i1988 (.BLUT(n2671), .ALUT(n2672), .C0(FX_MODE_R[1]), .Z(ADDR_ASCII[2]));
    LUT4 DATA_ASCII_6__bdd_3_lut (.A(DATA_ASCII[6]), .B(DATA_ASCII[22]), 
         .C(CTR_DRV[1]), .Z(n2769)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_6__bdd_3_lut.init = 16'hcaca;
    PFUMX i2036 (.BLUT(n2766), .ALUT(n2765), .C0(CTR_DRV[0]), .Z(n2767));
    L6MUX21 i2016 (.D0(n2709), .D1(n2706), .SD(CTR_DRV[2]), .Z(WRITE_DATA_BUF[1]));
    LUT4 DATA_ASCII_3__bdd_3_lut_2054 (.A(DATA_ASCII[27]), .B(DATA_ASCII[11]), 
         .C(CTR_DRV[1]), .Z(n2803)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam DATA_ASCII_3__bdd_3_lut_2054.init = 16'hacac;
    LUT4 DATA_ASCII_42__bdd_3_lut (.A(DATA_ASCII[34]), .B(DATA_ASCII[50]), 
         .C(CTR_DRV[1]), .Z(n2791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_42__bdd_3_lut.init = 16'hcaca;
    PFUMX i1986 (.BLUT(n2668), .ALUT(n2669), .C0(FX_MODE_R[1]), .Z(ADDR_ASCII[4]));
    LUT4 DATA_ASCII_42__bdd_3_lut_2043 (.A(DATA_ASCII[42]), .B(DATA_ASCII[58]), 
         .C(CTR_DRV[1]), .Z(n2790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_42__bdd_3_lut_2043.init = 16'hcaca;
    LUT4 DATA_ASCII_0__bdd_3_lut_2077 (.A(DATA_ASCII[0]), .B(DATA_ASCII[16]), 
         .C(CTR_DRV[1]), .Z(n2758)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_0__bdd_3_lut_2077.init = 16'hcaca;
    PFUMX i1984 (.BLUT(n2665), .ALUT(n2666), .C0(FX_MODE_R[1]), .Z(ADDR_ASCII[1]));
    LUT4 i1_2_lut_adj_3 (.A(n567[1]), .B(n567[7]), .Z(RUN_I2CC_N_241)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'heeee;
    PFUMX i2014 (.BLUT(n2708), .ALUT(n2707), .C0(CTR_DRV[0]), .Z(n2709));
    PFUMX i1982 (.BLUT(n2662), .ALUT(n2663), .C0(FX_MODE_R[1]), .Z(ADDR_ASCII[5]));
    L6MUX21 i2033 (.D0(n2759), .D1(n2756), .SD(CTR_DRV[2]), .Z(WRITE_DATA_BUF[0]));
    LUT4 BUSY_I_0_1_lut (.A(BUSY_N_238), .Z(BUSY_N_237)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(354[4] 359[13])
    defparam BUSY_I_0_1_lut.init = 16'h5555;
    LUT4 i13_4_lut_3_lut (.A(CTR_DRV[1]), .B(CTR_DRV[2]), .C(CTR_DRV[0]), 
         .Z(CLK_GTA_N_244)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(239[4] 245[13])
    defparam i13_4_lut_3_lut.init = 16'h8181;
    PFUMX i1980 (.BLUT(n2659), .ALUT(n2660), .C0(FX_MODE_R[1]), .Z(ADDR_ASCII[6]));
    PFUMX i2031 (.BLUT(n2758), .ALUT(n2757), .C0(CTR_DRV[0]), .Z(n2759));
    PFUMX i2011 (.BLUT(n2705), .ALUT(n2704), .C0(CTR_DRV[0]), .Z(n2706));
    LUT4 DATA_ASCII_3__bdd_3_lut (.A(DATA_ASCII[3]), .B(DATA_ASCII[19]), 
         .C(CTR_DRV[1]), .Z(n2804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_3__bdd_3_lut.init = 16'hcaca;
    LUT4 n1703_bdd_4_lut_1975_then_3_lut (.A(DATA_REVERB[3]), .B(FX_MODE_R[2]), 
         .C(FX_MODE_R[0]), .Z(n2675)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1703_bdd_4_lut_1975_then_3_lut.init = 16'h0202;
    LUT4 DATA_ASCII_44__bdd_3_lut_2059 (.A(DATA_ASCII[44]), .B(DATA_ASCII[60]), 
         .C(CTR_DRV[1]), .Z(n2807)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_44__bdd_3_lut_2059.init = 16'hcaca;
    LUT4 DATA_ASCII_44__bdd_3_lut (.A(DATA_ASCII[36]), .B(DATA_ASCII[52]), 
         .C(CTR_DRV[1]), .Z(n2808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DATA_ASCII_44__bdd_3_lut.init = 16'hcaca;
    LUT4 n1703_bdd_4_lut_1975_else_3_lut (.A(DATA_ECHO[3]), .B(DATA_CLEAN[3]), 
         .C(FX_MODE_R[2]), .D(FX_MODE_R[0]), .Z(n2674)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n1703_bdd_4_lut_1975_else_3_lut.init = 16'h0ca0;
    screen_echo ROM3 (.\CTR_DRV[9] (CTR_DRV[9]), .\CTR_DRV[8] (CTR_DRV[8]), 
            .\CTR_DRV[7] (CTR_DRV[7]), .\CTR_DRV[6] (CTR_DRV[6]), .\CTR_DRV[5] (CTR_DRV[5]), 
            .\CTR_DRV[4] (CTR_DRV[4]), .\CTR_DRV[3] (CTR_DRV[3]), .\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), 
            .VCC_net(VCC_net), .GND_net(GND_net), .\DATA_ECHO[6] (DATA_ECHO[6]), 
            .\DATA_ECHO[5] (DATA_ECHO[5]), .\DATA_ECHO[4] (DATA_ECHO[4]), 
            .\DATA_ECHO[3] (DATA_ECHO[3]), .\DATA_ECHO[2] (DATA_ECHO[2]), 
            .\DATA_ECHO[1] (DATA_ECHO[1]), .\DATA_ECHO[0] (DATA_ECHO[0])) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(152[9:20])
    screen_reverb ROM2 (.\CTR_DRV[9] (CTR_DRV[9]), .\CTR_DRV[8] (CTR_DRV[8]), 
            .\CTR_DRV[7] (CTR_DRV[7]), .\CTR_DRV[6] (CTR_DRV[6]), .\CTR_DRV[5] (CTR_DRV[5]), 
            .\CTR_DRV[4] (CTR_DRV[4]), .\CTR_DRV[3] (CTR_DRV[3]), .\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), 
            .VCC_net(VCC_net), .GND_net(GND_net), .\DATA_REVERB[6] (DATA_REVERB[6]), 
            .\DATA_REVERB[5] (DATA_REVERB[5]), .\DATA_REVERB[4] (DATA_REVERB[4]), 
            .\DATA_REVERB[3] (DATA_REVERB[3]), .\DATA_REVERB[2] (DATA_REVERB[2]), 
            .\DATA_REVERB[1] (DATA_REVERB[1]), .\DATA_REVERB[0] (DATA_REVERB[0])) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(147[9:22])
    screen_clean ROM1 (.\CTR_DRV[9] (CTR_DRV[9]), .\CTR_DRV[8] (CTR_DRV[8]), 
            .\CTR_DRV[7] (CTR_DRV[7]), .\CTR_DRV[6] (CTR_DRV[6]), .\CTR_DRV[5] (CTR_DRV[5]), 
            .\CTR_DRV[4] (CTR_DRV[4]), .\CTR_DRV[3] (CTR_DRV[3]), .\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), 
            .VCC_net(VCC_net), .GND_net(GND_net), .\DATA_CLEAN[6] (DATA_CLEAN[6]), 
            .\DATA_CLEAN[5] (DATA_CLEAN[5]), .\DATA_CLEAN[4] (DATA_CLEAN[4]), 
            .\DATA_CLEAN[3] (DATA_CLEAN[3]), .\DATA_CLEAN[2] (DATA_CLEAN[2]), 
            .\DATA_CLEAN[1] (DATA_CLEAN[1]), .\DATA_CLEAN[0] (DATA_CLEAN[0])) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(142[9:21])
    ascii_table ROM0 (.ADDR_ASCII({ADDR_ASCII}), .\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), 
            .VCC_net(VCC_net), .GND_net(GND_net), .DATA_ASCII({DATA_ASCII})) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(137[9:20])
    i2c_controller I2CC0 (.\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), .INIT_I2CC(INIT_I2CC), 
            .\PS_DRV_3__N_209[3] (\PS_DRV_3__N_209[3] ), .RUN_I2CC(RUN_I2CC), 
            .\PS_DRV_3__N_233[0] (PS_DRV_3__N_233[0]), .n583(n567[0]), .n1306(n1306), 
            .DISP_I2C_SDA_c(DISP_I2C_SDA_c), .DISP_I2C_SCL_c(DISP_I2C_SCL_c), 
            .GND_net(GND_net), .CTR_DRV({CTR_DRV}), .WRITE_DATA_BUF({WRITE_DATA_BUF}), 
            .WRITE_EN_BUF(WRITE_EN_BUF), .VCC_net(VCC_net));   // c:/fpga/projects/fxbox/src/display_driver.vhd(124[10:24])
    \clock_tree(10)  CTR0 (.LOAD_CTR_D_DRV({LOAD_CTR_D_DRV}), .LOAD_CTR_DRV(LOAD_CTR_DRV), 
            .CTR_DRV({CTR_DRV}), .GND_net(GND_net), .CTR_MCLK(CTR_MCLK));   // c:/fpga/projects/fxbox/src/display_driver.vhd(157[9:19])
    
endmodule
//
// Verilog Description of module screen_echo
//

module screen_echo (\CTR_DRV[9] , \CTR_DRV[8] , \CTR_DRV[7] , \CTR_DRV[6] , 
            \CTR_DRV[5] , \CTR_DRV[4] , \CTR_DRV[3] , \SYS_CLK_TREE[5] , 
            VCC_net, GND_net, \DATA_ECHO[6] , \DATA_ECHO[5] , \DATA_ECHO[4] , 
            \DATA_ECHO[3] , \DATA_ECHO[2] , \DATA_ECHO[1] , \DATA_ECHO[0] ) /* synthesis NGD_DRC_MASK=1 */ ;
    input \CTR_DRV[9] ;
    input \CTR_DRV[8] ;
    input \CTR_DRV[7] ;
    input \CTR_DRV[6] ;
    input \CTR_DRV[5] ;
    input \CTR_DRV[4] ;
    input \CTR_DRV[3] ;
    input \SYS_CLK_TREE[5] ;
    input VCC_net;
    input GND_net;
    output \DATA_ECHO[6] ;
    output \DATA_ECHO[5] ;
    output \DATA_ECHO[4] ;
    output \DATA_ECHO[3] ;
    output \DATA_ECHO[2] ;
    output \DATA_ECHO[1] ;
    output \DATA_ECHO[0] ;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    
    DP8KC screen_echo_0_0_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(\CTR_DRV[3] ), .ADA4(\CTR_DRV[4] ), .ADA5(\CTR_DRV[5] ), 
          .ADA6(\CTR_DRV[6] ), .ADA7(\CTR_DRV[7] ), .ADA8(\CTR_DRV[8] ), 
          .ADA9(\CTR_DRV[9] ), .ADA10(GND_net), .ADA11(GND_net), .ADA12(GND_net), 
          .CEA(VCC_net), .OCEA(VCC_net), .CLKA(\SYS_CLK_TREE[5] ), .WEA(GND_net), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
          .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(\DATA_ECHO[0] ), .DOA1(\DATA_ECHO[1] ), 
          .DOA2(\DATA_ECHO[2] ), .DOA3(\DATA_ECHO[3] ), .DOA4(\DATA_ECHO[4] ), 
          .DOA5(\DATA_ECHO[5] ), .DOA6(\DATA_ECHO[6] )) /* synthesis MEM_LPC_FILE="screen_echo.lpc", MEM_INIT_FILE="screen_echo_rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=20, LSE_LLINE=152, LSE_RLINE=152 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(152[9:20])
    defparam screen_echo_0_0_0.DATA_WIDTH_A = 9;
    defparam screen_echo_0_0_0.DATA_WIDTH_B = 9;
    defparam screen_echo_0_0_0.REGMODE_A = "NOREG";
    defparam screen_echo_0_0_0.REGMODE_B = "NOREG";
    defparam screen_echo_0_0_0.CSDECODE_A = "0b000";
    defparam screen_echo_0_0_0.CSDECODE_B = "0b111";
    defparam screen_echo_0_0_0.WRITEMODE_A = "NORMAL";
    defparam screen_echo_0_0_0.WRITEMODE_B = "NORMAL";
    defparam screen_echo_0_0_0.GSR = "ENABLED";
    defparam screen_echo_0_0_0.RESETMODE = "ASYNC";
    defparam screen_echo_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam screen_echo_0_0_0.INIT_DATA = "DYNAMIC";
    defparam screen_echo_0_0_0.INITVAL_00 = "0x04020040200402004020040200402004020040200402004020040200402004020040200402004020";
    defparam screen_echo_0_0_0.INITVAL_01 = "0x0B87C040200402009E480864504020040200F82F0402004020040200402004020040200402004020";
    defparam screen_echo_0_0_0.INITVAL_02 = "0x040200402004020040200402004020040200402005E7C0402004020040200402004020040200F85C";
    defparam screen_echo_0_0_0.INITVAL_03 = "0x04020040200402004020040200402004020040200402004020040200402004020040200402004020";
    defparam screen_echo_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_echo_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module screen_reverb
//

module screen_reverb (\CTR_DRV[9] , \CTR_DRV[8] , \CTR_DRV[7] , \CTR_DRV[6] , 
            \CTR_DRV[5] , \CTR_DRV[4] , \CTR_DRV[3] , \SYS_CLK_TREE[5] , 
            VCC_net, GND_net, \DATA_REVERB[6] , \DATA_REVERB[5] , \DATA_REVERB[4] , 
            \DATA_REVERB[3] , \DATA_REVERB[2] , \DATA_REVERB[1] , \DATA_REVERB[0] ) /* synthesis NGD_DRC_MASK=1 */ ;
    input \CTR_DRV[9] ;
    input \CTR_DRV[8] ;
    input \CTR_DRV[7] ;
    input \CTR_DRV[6] ;
    input \CTR_DRV[5] ;
    input \CTR_DRV[4] ;
    input \CTR_DRV[3] ;
    input \SYS_CLK_TREE[5] ;
    input VCC_net;
    input GND_net;
    output \DATA_REVERB[6] ;
    output \DATA_REVERB[5] ;
    output \DATA_REVERB[4] ;
    output \DATA_REVERB[3] ;
    output \DATA_REVERB[2] ;
    output \DATA_REVERB[1] ;
    output \DATA_REVERB[0] ;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    
    DP8KC screen_reverb_0_0_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(\CTR_DRV[3] ), .ADA4(\CTR_DRV[4] ), .ADA5(\CTR_DRV[5] ), 
          .ADA6(\CTR_DRV[6] ), .ADA7(\CTR_DRV[7] ), .ADA8(\CTR_DRV[8] ), 
          .ADA9(\CTR_DRV[9] ), .ADA10(GND_net), .ADA11(GND_net), .ADA12(GND_net), 
          .CEA(VCC_net), .OCEA(VCC_net), .CLKA(\SYS_CLK_TREE[5] ), .WEA(GND_net), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
          .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(\DATA_REVERB[0] ), .DOA1(\DATA_REVERB[1] ), 
          .DOA2(\DATA_REVERB[2] ), .DOA3(\DATA_REVERB[3] ), .DOA4(\DATA_REVERB[4] ), 
          .DOA5(\DATA_REVERB[5] ), .DOA6(\DATA_REVERB[6] )) /* synthesis MEM_LPC_FILE="screen_reverb.lpc", MEM_INIT_FILE="screen_reverb_rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=22, LSE_LLINE=147, LSE_RLINE=147 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(147[9:22])
    defparam screen_reverb_0_0_0.DATA_WIDTH_A = 9;
    defparam screen_reverb_0_0_0.DATA_WIDTH_B = 9;
    defparam screen_reverb_0_0_0.REGMODE_A = "NOREG";
    defparam screen_reverb_0_0_0.REGMODE_B = "NOREG";
    defparam screen_reverb_0_0_0.CSDECODE_A = "0b000";
    defparam screen_reverb_0_0_0.CSDECODE_B = "0b111";
    defparam screen_reverb_0_0_0.WRITEMODE_A = "NORMAL";
    defparam screen_reverb_0_0_0.WRITEMODE_B = "NORMAL";
    defparam screen_reverb_0_0_0.GSR = "ENABLED";
    defparam screen_reverb_0_0_0.RESETMODE = "ASYNC";
    defparam screen_reverb_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam screen_reverb_0_0_0.INIT_DATA = "DYNAMIC";
    defparam screen_reverb_0_0_0.INITVAL_00 = "0x04020040200402004020040200402004020040200402004020040200402004020040200402004020";
    defparam screen_reverb_0_0_0.INITVAL_01 = "0x0B87C04020040420A4450AC450A420040200F82F0402004020040200402004020040200402004020";
    defparam screen_reverb_0_0_0.INITVAL_02 = "0x040200402004020040200402004020040200402005E7C0402004020040200402004020040200F85C";
    defparam screen_reverb_0_0_0.INITVAL_03 = "0x04020040200402004020040200402004020040200402004020040200402004020040200402004020";
    defparam screen_reverb_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_reverb_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module screen_clean
//

module screen_clean (\CTR_DRV[9] , \CTR_DRV[8] , \CTR_DRV[7] , \CTR_DRV[6] , 
            \CTR_DRV[5] , \CTR_DRV[4] , \CTR_DRV[3] , \SYS_CLK_TREE[5] , 
            VCC_net, GND_net, \DATA_CLEAN[6] , \DATA_CLEAN[5] , \DATA_CLEAN[4] , 
            \DATA_CLEAN[3] , \DATA_CLEAN[2] , \DATA_CLEAN[1] , \DATA_CLEAN[0] ) /* synthesis NGD_DRC_MASK=1 */ ;
    input \CTR_DRV[9] ;
    input \CTR_DRV[8] ;
    input \CTR_DRV[7] ;
    input \CTR_DRV[6] ;
    input \CTR_DRV[5] ;
    input \CTR_DRV[4] ;
    input \CTR_DRV[3] ;
    input \SYS_CLK_TREE[5] ;
    input VCC_net;
    input GND_net;
    output \DATA_CLEAN[6] ;
    output \DATA_CLEAN[5] ;
    output \DATA_CLEAN[4] ;
    output \DATA_CLEAN[3] ;
    output \DATA_CLEAN[2] ;
    output \DATA_CLEAN[1] ;
    output \DATA_CLEAN[0] ;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    
    DP8KC screen_clean_0_0_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(\CTR_DRV[3] ), .ADA4(\CTR_DRV[4] ), .ADA5(\CTR_DRV[5] ), 
          .ADA6(\CTR_DRV[6] ), .ADA7(\CTR_DRV[7] ), .ADA8(\CTR_DRV[8] ), 
          .ADA9(\CTR_DRV[9] ), .ADA10(GND_net), .ADA11(GND_net), .ADA12(GND_net), 
          .CEA(VCC_net), .OCEA(VCC_net), .CLKA(\SYS_CLK_TREE[5] ), .WEA(GND_net), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
          .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(\DATA_CLEAN[0] ), .DOA1(\DATA_CLEAN[1] ), 
          .DOA2(\DATA_CLEAN[2] ), .DOA3(\DATA_CLEAN[3] ), .DOA4(\DATA_CLEAN[4] ), 
          .DOA5(\DATA_CLEAN[5] ), .DOA6(\DATA_CLEAN[6] )) /* synthesis MEM_LPC_FILE="screen_clean.lpc", MEM_INIT_FILE="screen_clean_rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=21, LSE_LLINE=142, LSE_RLINE=142 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(142[9:21])
    defparam screen_clean_0_0_0.DATA_WIDTH_A = 9;
    defparam screen_clean_0_0_0.DATA_WIDTH_B = 9;
    defparam screen_clean_0_0_0.REGMODE_A = "NOREG";
    defparam screen_clean_0_0_0.REGMODE_B = "NOREG";
    defparam screen_clean_0_0_0.CSDECODE_A = "0b000";
    defparam screen_clean_0_0_0.CSDECODE_B = "0b111";
    defparam screen_clean_0_0_0.WRITEMODE_A = "NORMAL";
    defparam screen_clean_0_0_0.WRITEMODE_B = "NORMAL";
    defparam screen_clean_0_0_0.GSR = "ENABLED";
    defparam screen_clean_0_0_0.RESETMODE = "ASYNC";
    defparam screen_clean_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam screen_clean_0_0_0.INIT_DATA = "DYNAMIC";
    defparam screen_clean_0_0_0.INITVAL_00 = "0x04020040200402004020040200402004020040200402004020040200402004020040200402004020";
    defparam screen_clean_0_0_0.INITVAL_01 = "0x0B87C040200402009C4108A4C08620040200F82F0402004020040200402004020040200402004020";
    defparam screen_clean_0_0_0.INITVAL_02 = "0x040200402004020040200402004020040200402005E7C0402004020040200402004020040200F85C";
    defparam screen_clean_0_0_0.INITVAL_03 = "0x04020040200402004020040200402004020040200402004020040200402004020040200402004020";
    defparam screen_clean_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam screen_clean_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module ascii_table
//

module ascii_table (ADDR_ASCII, \SYS_CLK_TREE[5] , VCC_net, GND_net, 
            DATA_ASCII) /* synthesis NGD_DRC_MASK=1 */ ;
    input [6:0]ADDR_ASCII;
    input \SYS_CLK_TREE[5] ;
    input VCC_net;
    input GND_net;
    output [63:0]DATA_ASCII;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    
    DP8KC ascii_table_0_3_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(ADDR_ASCII[0]), .ADA4(ADDR_ASCII[1]), 
          .ADA5(ADDR_ASCII[2]), .ADA6(ADDR_ASCII[3]), .ADA7(ADDR_ASCII[4]), 
          .ADA8(ADDR_ASCII[5]), .ADA9(ADDR_ASCII[6]), .ADA10(GND_net), 
          .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(\SYS_CLK_TREE[5] ), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(ADDR_ASCII[0]), .ADB4(ADDR_ASCII[1]), 
          .ADB5(ADDR_ASCII[2]), .ADB6(ADDR_ASCII[3]), .ADB7(ADDR_ASCII[4]), 
          .ADB8(ADDR_ASCII[5]), .ADB9(ADDR_ASCII[6]), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(VCC_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(\SYS_CLK_TREE[5] ), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(DATA_ASCII[54]), .DOA1(DATA_ASCII[55]), 
          .DOA2(DATA_ASCII[56]), .DOA3(DATA_ASCII[57]), .DOA4(DATA_ASCII[58]), 
          .DOA5(DATA_ASCII[59]), .DOA6(DATA_ASCII[60]), .DOA7(DATA_ASCII[61]), 
          .DOA8(DATA_ASCII[62]), .DOB0(DATA_ASCII[63])) /* synthesis MEM_LPC_FILE="ascii_table.lpc", MEM_INIT_FILE="ascii_table_rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=20, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(137[9:20])
    defparam ascii_table_0_3_0.DATA_WIDTH_A = 9;
    defparam ascii_table_0_3_0.DATA_WIDTH_B = 9;
    defparam ascii_table_0_3_0.REGMODE_A = "NOREG";
    defparam ascii_table_0_3_0.REGMODE_B = "NOREG";
    defparam ascii_table_0_3_0.CSDECODE_A = "0b000";
    defparam ascii_table_0_3_0.CSDECODE_B = "0b000";
    defparam ascii_table_0_3_0.WRITEMODE_A = "NORMAL";
    defparam ascii_table_0_3_0.WRITEMODE_B = "NORMAL";
    defparam ascii_table_0_3_0.GSR = "ENABLED";
    defparam ascii_table_0_3_0.RESETMODE = "ASYNC";
    defparam ascii_table_0_3_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ascii_table_0_3_0.INIT_DATA = "DYNAMIC";
    defparam ascii_table_0_3_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_01 = "0x00000000000000000000000000000100000000000000000000000200000000001002000000000000";
    defparam ascii_table_0_3_0.INITVAL_02 = "0x00400000010000100001002000000000001000000000100201002000000000200002000000000000";
    defparam ascii_table_0_3_0.INITVAL_03 = "0x00000000000000000001000000020000000004000000000200002000000100000000010000000200";
    defparam ascii_table_0_3_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_12 = "0x00200000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_3_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ascii_table_0_1_2 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(ADDR_ASCII[0]), .ADA4(ADDR_ASCII[1]), 
          .ADA5(ADDR_ASCII[2]), .ADA6(ADDR_ASCII[3]), .ADA7(ADDR_ASCII[4]), 
          .ADA8(ADDR_ASCII[5]), .ADA9(ADDR_ASCII[6]), .ADA10(GND_net), 
          .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(\SYS_CLK_TREE[5] ), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(ADDR_ASCII[0]), .ADB4(ADDR_ASCII[1]), 
          .ADB5(ADDR_ASCII[2]), .ADB6(ADDR_ASCII[3]), .ADB7(ADDR_ASCII[4]), 
          .ADB8(ADDR_ASCII[5]), .ADB9(ADDR_ASCII[6]), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(VCC_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(\SYS_CLK_TREE[5] ), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(DATA_ASCII[18]), .DOA1(DATA_ASCII[19]), 
          .DOA2(DATA_ASCII[20]), .DOA3(DATA_ASCII[21]), .DOA4(DATA_ASCII[22]), 
          .DOA5(DATA_ASCII[23]), .DOA6(DATA_ASCII[24]), .DOA7(DATA_ASCII[25]), 
          .DOA8(DATA_ASCII[26]), .DOB0(DATA_ASCII[27]), .DOB1(DATA_ASCII[28]), 
          .DOB2(DATA_ASCII[29]), .DOB3(DATA_ASCII[30]), .DOB4(DATA_ASCII[31]), 
          .DOB5(DATA_ASCII[32]), .DOB6(DATA_ASCII[33]), .DOB7(DATA_ASCII[34]), 
          .DOB8(DATA_ASCII[35])) /* synthesis MEM_LPC_FILE="ascii_table.lpc", MEM_INIT_FILE="ascii_table_rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=20, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(137[9:20])
    defparam ascii_table_0_1_2.DATA_WIDTH_A = 9;
    defparam ascii_table_0_1_2.DATA_WIDTH_B = 9;
    defparam ascii_table_0_1_2.REGMODE_A = "NOREG";
    defparam ascii_table_0_1_2.REGMODE_B = "NOREG";
    defparam ascii_table_0_1_2.CSDECODE_A = "0b000";
    defparam ascii_table_0_1_2.CSDECODE_B = "0b000";
    defparam ascii_table_0_1_2.WRITEMODE_A = "NORMAL";
    defparam ascii_table_0_1_2.WRITEMODE_B = "NORMAL";
    defparam ascii_table_0_1_2.GSR = "ENABLED";
    defparam ascii_table_0_1_2.RESETMODE = "ASYNC";
    defparam ascii_table_0_1_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam ascii_table_0_1_2.INIT_DATA = "DYNAMIC";
    defparam ascii_table_0_1_2.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_01 = "0x0A998212CD373990A4520B8522A2C50A4563BE5C20C180043831F0F330CF00153018DA23E0038200";
    defparam ascii_table_0_1_2.INITVAL_02 = "0x040C13A1010BE5C03C0F01818021DF0A65F0905F0B1012065F03E503BE020B05F0BE5F0B05F18950";
    defparam ascii_table_0_1_2.INITVAL_03 = "0x000C033BC039F1D0500E03818021CF22B1E2133E2230100DDF03E202BE1F2525F22A522220F22BC0";
    defparam ascii_table_0_1_2.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_11 = "0x3D7861082C0180C3DBE93DF29351EA3D3E901FAB1820C2020C20F8330E2C000EB3074D3C4603D600";
    defparam ascii_table_0_1_2.INITVAL_12 = "0x020C03DF01051AB3DF83007EC3D02F0D7213DD290D10138608303E805FE1051A93526805129385AB";
    defparam ascii_table_0_1_2.INITVAL_13 = "0x0004020FEF05D8B3290200F8C3108F11489228943118030E0F205B001E8122869315E93110931480";
    defparam ascii_table_0_1_2.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_1_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ascii_table_0_0_3 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(ADDR_ASCII[0]), .ADA4(ADDR_ASCII[1]), 
          .ADA5(ADDR_ASCII[2]), .ADA6(ADDR_ASCII[3]), .ADA7(ADDR_ASCII[4]), 
          .ADA8(ADDR_ASCII[5]), .ADA9(ADDR_ASCII[6]), .ADA10(GND_net), 
          .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(\SYS_CLK_TREE[5] ), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(ADDR_ASCII[0]), .ADB4(ADDR_ASCII[1]), 
          .ADB5(ADDR_ASCII[2]), .ADB6(ADDR_ASCII[3]), .ADB7(ADDR_ASCII[4]), 
          .ADB8(ADDR_ASCII[5]), .ADB9(ADDR_ASCII[6]), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(VCC_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(\SYS_CLK_TREE[5] ), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(DATA_ASCII[0]), .DOA1(DATA_ASCII[1]), 
          .DOA2(DATA_ASCII[2]), .DOA3(DATA_ASCII[3]), .DOA4(DATA_ASCII[4]), 
          .DOA5(DATA_ASCII[5]), .DOA6(DATA_ASCII[6]), .DOA7(DATA_ASCII[7]), 
          .DOA8(DATA_ASCII[8]), .DOB0(DATA_ASCII[9]), .DOB1(DATA_ASCII[10]), 
          .DOB2(DATA_ASCII[11]), .DOB3(DATA_ASCII[12]), .DOB4(DATA_ASCII[13]), 
          .DOB5(DATA_ASCII[14]), .DOB6(DATA_ASCII[15]), .DOB7(DATA_ASCII[16]), 
          .DOB8(DATA_ASCII[17])) /* synthesis MEM_LPC_FILE="ascii_table.lpc", MEM_INIT_FILE="ascii_table_rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=20, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(137[9:20])
    defparam ascii_table_0_0_3.DATA_WIDTH_A = 9;
    defparam ascii_table_0_0_3.DATA_WIDTH_B = 9;
    defparam ascii_table_0_0_3.REGMODE_A = "NOREG";
    defparam ascii_table_0_0_3.REGMODE_B = "NOREG";
    defparam ascii_table_0_0_3.CSDECODE_A = "0b000";
    defparam ascii_table_0_0_3.CSDECODE_B = "0b000";
    defparam ascii_table_0_0_3.WRITEMODE_A = "NORMAL";
    defparam ascii_table_0_0_3.WRITEMODE_B = "NORMAL";
    defparam ascii_table_0_0_3.GSR = "ENABLED";
    defparam ascii_table_0_0_3.RESETMODE = "ASYNC";
    defparam ascii_table_0_0_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam ascii_table_0_0_3.INIT_DATA = "DYNAMIC";
    defparam ascii_table_0_0_3.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_01 = "0x20500048080000020D362063C24E18245620813E0C0000100001008200002083008C242290000000";
    defparam ascii_table_0_0_3.INITVAL_02 = "0x10008201012014720F432FF1F2FF0324D4123D410397F2FF41282302017F0394128341039410F93E";
    defparam ascii_table_0_0_3.INITVAL_03 = "0x00102282000104C138440781C0780009044030840707C0F900282600014113048070300714104000";
    defparam ascii_table_0_0_3.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_11 = "0x103A00250E2810014EBF103BF1670E162B9342BF0300000840209153410E307BD0679737F8120000";
    defparam ascii_table_0_0_3.INITVAL_12 = "0x081061410137EB104E3307E1F07FA016FBF13FBF33F3F27FBF37E383403F33FBF37FBF33FBF37EBF";
    defparam ascii_table_0_0_3.INITVAL_13 = "0x0008134000208320BC3607C1E07D0205C3E03C7E07C3E07DA037E70145BF0BDBF07C3C07DBF07580";
    defparam ascii_table_0_0_3.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_0_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ascii_table_0_2_1 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(ADDR_ASCII[0]), .ADA4(ADDR_ASCII[1]), 
          .ADA5(ADDR_ASCII[2]), .ADA6(ADDR_ASCII[3]), .ADA7(ADDR_ASCII[4]), 
          .ADA8(ADDR_ASCII[5]), .ADA9(ADDR_ASCII[6]), .ADA10(GND_net), 
          .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(\SYS_CLK_TREE[5] ), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(ADDR_ASCII[0]), .ADB4(ADDR_ASCII[1]), 
          .ADB5(ADDR_ASCII[2]), .ADB6(ADDR_ASCII[3]), .ADB7(ADDR_ASCII[4]), 
          .ADB8(ADDR_ASCII[5]), .ADB9(ADDR_ASCII[6]), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(VCC_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(\SYS_CLK_TREE[5] ), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(DATA_ASCII[36]), .DOA1(DATA_ASCII[37]), 
          .DOA2(DATA_ASCII[38]), .DOA3(DATA_ASCII[39]), .DOA4(DATA_ASCII[40]), 
          .DOA5(DATA_ASCII[41]), .DOA6(DATA_ASCII[42]), .DOA7(DATA_ASCII[43]), 
          .DOA8(DATA_ASCII[44]), .DOB0(DATA_ASCII[45]), .DOB1(DATA_ASCII[46]), 
          .DOB2(DATA_ASCII[47]), .DOB3(DATA_ASCII[48]), .DOB4(DATA_ASCII[49]), 
          .DOB5(DATA_ASCII[50]), .DOB6(DATA_ASCII[51]), .DOB7(DATA_ASCII[52]), 
          .DOB8(DATA_ASCII[53])) /* synthesis MEM_LPC_FILE="ascii_table.lpc", MEM_INIT_FILE="ascii_table_rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=20, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(137[9:20])
    defparam ascii_table_0_2_1.DATA_WIDTH_A = 9;
    defparam ascii_table_0_2_1.DATA_WIDTH_B = 9;
    defparam ascii_table_0_2_1.REGMODE_A = "NOREG";
    defparam ascii_table_0_2_1.REGMODE_B = "NOREG";
    defparam ascii_table_0_2_1.CSDECODE_A = "0b000";
    defparam ascii_table_0_2_1.CSDECODE_B = "0b000";
    defparam ascii_table_0_2_1.WRITEMODE_A = "NORMAL";
    defparam ascii_table_0_2_1.WRITEMODE_B = "NORMAL";
    defparam ascii_table_0_2_1.GSR = "ENABLED";
    defparam ascii_table_0_2_1.RESETMODE = "ASYNC";
    defparam ascii_table_0_2_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam ascii_table_0_2_1.INIT_DATA = "DYNAMIC";
    defparam ascii_table_0_2_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_01 = "0x0C08108404000003C7670E10732FF72CE66009F40600010000101E100204001A30C1233EE300CA00";
    defparam ascii_table_0_2_1.INITVAL_02 = "0x010C000F01008740E8733E7F33EE3424FF13CEF03CDF13E0042E3F7009F726A1102BE6069F438FF5";
    defparam ascii_table_0_2_1.INITVAL_03 = "0x00030100070284439EC338FC33864408FC039FC230F8738204187DF009C039E2030BF310D8430600";
    defparam ascii_table_0_2_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_11 = "0x00000002000000000001000010028300203005F30100000000001510000000043226001460000000";
    defparam ascii_table_0_2_1.INITVAL_12 = "0x00840001010019B0001B3F6000060000333004301C3FB3F783236090000332618234E1227B3006F0";
    defparam ascii_table_0_2_1.INITVAL_13 = "0x000080000000403006233C60000601002C004EC1002033860004603001C304600000030038300600";
    defparam ascii_table_0_2_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ascii_table_0_2_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (\SYS_CLK_TREE[5] , INIT_I2CC, \PS_DRV_3__N_209[3] , 
            RUN_I2CC, \PS_DRV_3__N_233[0] , n583, n1306, DISP_I2C_SDA_c, 
            DISP_I2C_SCL_c, GND_net, CTR_DRV, WRITE_DATA_BUF, WRITE_EN_BUF, 
            VCC_net);
    input \SYS_CLK_TREE[5] ;
    input INIT_I2CC;
    output \PS_DRV_3__N_209[3] ;
    input RUN_I2CC;
    input \PS_DRV_3__N_233[0] ;
    input n583;
    output n1306;
    output DISP_I2C_SDA_c;
    output DISP_I2C_SCL_c;
    input GND_net;
    input [9:0]CTR_DRV;
    input [7:0]WRITE_DATA_BUF;
    input WRITE_EN_BUF;
    input VCC_net;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire READY_I2CM /* synthesis SET_AS_NETWORK=\DD0/I2CC0/READY_I2CM, is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(77[20:30])
    
    wire NEXT_I2CM, PS_FRAME_N_254, PULSE_EOF, PS_FRAME, PULSE_EOF_NORMAL, 
        PULSE_EOF_INIT, INIT_R;
    wire [7:0]DATA_W_I2CM;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(76[9:20])
    wire [7:0]DATA_OUT_BUF;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(71[9:21])
    
    wire LOAD_CTR_BUF, PULSE_LOAD, READ_EN_BUF;
    wire [3:0]PS_I2CM_3__N_85;
    
    wire n2652, PULSE_EOF_NORMAL_N_256, PULSE_EOF_INIT_N_252, PULSE_LOAD_NORMAL, 
        PULSE_LOAD_NORMAL_N_258, PULSE_LOAD_INIT, PULSE_LOAD_INIT_N_257, 
        PS_FRAME_N_255, BUSY_N_245;
    wire [10:0]CTR_BUF;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(64[9:16])
    
    wire n20, n16, n18, n1767, n2319, BUSY_I2CM;
    wire [7:0]CMD_I2CM;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(75[9:17])
    
    FD1S3IX NEXT_I2CM_87 (.D(PULSE_EOF), .CK(\SYS_CLK_TREE[5] ), .CD(PS_FRAME_N_254), 
            .Q(NEXT_I2CM));   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(250[3] 257[10])
    defparam NEXT_I2CM_87.GSR = "ENABLED";
    LUT4 PS_FRAME_I_0_1_lut (.A(PS_FRAME), .Z(PS_FRAME_N_254)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(266[7:23])
    defparam PS_FRAME_I_0_1_lut.init = 16'h5555;
    LUT4 PULSE_EOF_NORMAL_I_0_3_lut (.A(PULSE_EOF_NORMAL), .B(PULSE_EOF_INIT), 
         .C(INIT_R), .Z(PULSE_EOF)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(140[2] 142[35])
    defparam PULSE_EOF_NORMAL_I_0_3_lut.init = 16'h3535;
    FD1S3AX DATA_W_I2CM_i0 (.D(DATA_OUT_BUF[0]), .CK(READY_I2CM), .Q(DATA_W_I2CM[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(237[3] 241[10])
    defparam DATA_W_I2CM_i0.GSR = "ENABLED";
    FD1S3JX LOAD_CTR_BUF_81 (.D(PULSE_LOAD), .CK(\SYS_CLK_TREE[5] ), .PD(PS_FRAME_N_254), 
            .Q(LOAD_CTR_BUF)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(165[3] 172[10])
    defparam LOAD_CTR_BUF_81.GSR = "ENABLED";
    FD1S3AX READ_EN_BUF_82 (.D(PS_FRAME), .CK(\SYS_CLK_TREE[5] ), .Q(READ_EN_BUF)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(181[3] 188[10])
    defparam READ_EN_BUF_82.GSR = "ENABLED";
    FD1S3DX RUN_I2CM_83 (.D(PS_FRAME), .CK(\SYS_CLK_TREE[5] ), .CD(n2652), 
            .Q(PS_I2CM_3__N_85[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(197[3] 208[10])
    defparam RUN_I2CM_83.GSR = "ENABLED";
    FD1S3DX PULSE_EOF_NORMAL_88 (.D(PULSE_EOF_NORMAL_N_256), .CK(READY_I2CM), 
            .CD(PS_FRAME_N_254), .Q(PULSE_EOF_NORMAL)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(266[3] 296[10])
    defparam PULSE_EOF_NORMAL_88.GSR = "ENABLED";
    FD1S3DX PULSE_EOF_INIT_89 (.D(PULSE_EOF_INIT_N_252), .CK(READY_I2CM), 
            .CD(PS_FRAME_N_254), .Q(PULSE_EOF_INIT)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(266[3] 296[10])
    defparam PULSE_EOF_INIT_89.GSR = "ENABLED";
    FD1S3DX PULSE_LOAD_NORMAL_90 (.D(PULSE_LOAD_NORMAL_N_258), .CK(READY_I2CM), 
            .CD(PS_FRAME_N_254), .Q(PULSE_LOAD_NORMAL)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(266[3] 296[10])
    defparam PULSE_LOAD_NORMAL_90.GSR = "ENABLED";
    FD1S3DX PULSE_LOAD_INIT_91 (.D(PULSE_LOAD_INIT_N_257), .CK(READY_I2CM), 
            .CD(PS_FRAME_N_254), .Q(PULSE_LOAD_INIT)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(266[3] 296[10])
    defparam PULSE_LOAD_INIT_91.GSR = "ENABLED";
    FD1S3AX PS_FRAME_92 (.D(PS_FRAME_N_255), .CK(\SYS_CLK_TREE[5] ), .Q(PS_FRAME)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(305[3] 325[10])
    defparam PS_FRAME_92.GSR = "ENABLED";
    FD1S3AX INIT_R_80 (.D(INIT_I2CC), .CK(\SYS_CLK_TREE[5] ), .Q(INIT_R)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(153[3] 157[10])
    defparam INIT_R_80.GSR = "ENABLED";
    FD1S3BX BUSY_85 (.D(BUSY_N_245), .CK(\SYS_CLK_TREE[5] ), .PD(n2652), 
            .Q(\PS_DRV_3__N_209[3] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(217[3] 228[10])
    defparam BUSY_85.GSR = "ENABLED";
    LUT4 PULSE_LOAD_NORMAL_I_0_3_lut (.A(PULSE_LOAD_NORMAL), .B(PULSE_LOAD_INIT), 
         .C(INIT_R), .Z(PULSE_LOAD)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(144[2] 146[36])
    defparam PULSE_LOAD_NORMAL_I_0_3_lut.init = 16'hcaca;
    LUT4 i1808_4_lut (.A(CTR_BUF[4]), .B(n20), .C(n16), .D(CTR_BUF[8]), 
         .Z(PULSE_EOF_NORMAL_N_256)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(277[10:23])
    defparam i1808_4_lut.init = 16'h0001;
    LUT4 i9_4_lut (.A(CTR_BUF[6]), .B(n18), .C(CTR_BUF[3]), .D(CTR_BUF[10]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(277[10:23])
    defparam i9_4_lut.init = 16'hfeff;
    LUT4 i5_2_lut (.A(CTR_BUF[1]), .B(CTR_BUF[5]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(277[10:23])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i7_4_lut (.A(CTR_BUF[7]), .B(CTR_BUF[2]), .C(CTR_BUF[9]), .D(CTR_BUF[0]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(277[10:23])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1131_2_lut (.A(CTR_BUF[0]), .B(n1767), .Z(PULSE_EOF_INIT_N_252)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1131_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(CTR_BUF[2]), .B(CTR_BUF[1]), .C(CTR_BUF[3]), .D(CTR_BUF[4]), 
         .Z(n1767)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1802_4_lut (.A(CTR_BUF[10]), .B(CTR_BUF[5]), .C(n2319), .D(CTR_BUF[8]), 
         .Z(PULSE_LOAD_NORMAL_N_258)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(287[10:23])
    defparam i1802_4_lut.init = 16'h4000;
    LUT4 i1676_4_lut (.A(CTR_BUF[6]), .B(CTR_BUF[7]), .C(PULSE_EOF_INIT_N_252), 
         .D(CTR_BUF[9]), .Z(n2319)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1676_4_lut.init = 16'h8000;
    LUT4 i1800_2_lut (.A(CTR_BUF[0]), .B(n1767), .Z(PULSE_LOAD_INIT_N_257)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(292[10:17])
    defparam i1800_2_lut.init = 16'h4444;
    LUT4 PULSE_EOF_N_251_I_0_4_lut (.A(RUN_I2CC), .B(PULSE_EOF), .C(PS_FRAME), 
         .D(BUSY_I2CM), .Z(PS_FRAME_N_255)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(307[4] 323[13])
    defparam PULSE_EOF_N_251_I_0_4_lut.init = 16'hc0ca;
    LUT4 i1080_2_lut (.A(BUSY_I2CM), .B(PS_FRAME), .Z(BUSY_N_245)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(223[4] 226[13])
    defparam i1080_2_lut.init = 16'heeee;
    FD1S3AX DATA_W_I2CM_i1 (.D(DATA_OUT_BUF[1]), .CK(READY_I2CM), .Q(DATA_W_I2CM[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(237[3] 241[10])
    defparam DATA_W_I2CM_i1.GSR = "ENABLED";
    FD1S3AX DATA_W_I2CM_i2 (.D(DATA_OUT_BUF[2]), .CK(READY_I2CM), .Q(DATA_W_I2CM[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(237[3] 241[10])
    defparam DATA_W_I2CM_i2.GSR = "ENABLED";
    FD1S3AX DATA_W_I2CM_i3 (.D(DATA_OUT_BUF[3]), .CK(READY_I2CM), .Q(DATA_W_I2CM[3])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(237[3] 241[10])
    defparam DATA_W_I2CM_i3.GSR = "ENABLED";
    FD1S3AX DATA_W_I2CM_i4 (.D(DATA_OUT_BUF[4]), .CK(READY_I2CM), .Q(DATA_W_I2CM[4])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(237[3] 241[10])
    defparam DATA_W_I2CM_i4.GSR = "ENABLED";
    FD1S3AX DATA_W_I2CM_i5 (.D(DATA_OUT_BUF[5]), .CK(READY_I2CM), .Q(DATA_W_I2CM[5])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(237[3] 241[10])
    defparam DATA_W_I2CM_i5.GSR = "ENABLED";
    FD1S3AX DATA_W_I2CM_i6 (.D(DATA_OUT_BUF[6]), .CK(READY_I2CM), .Q(DATA_W_I2CM[6])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(237[3] 241[10])
    defparam DATA_W_I2CM_i6.GSR = "ENABLED";
    FD1S3AX DATA_W_I2CM_i7 (.D(DATA_OUT_BUF[7]), .CK(READY_I2CM), .Q(DATA_W_I2CM[7])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=24, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(237[3] 241[10])
    defparam DATA_W_I2CM_i7.GSR = "ENABLED";
    LUT4 i64_1_lut (.A(INIT_R), .Z(CMD_I2CM[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(136[2] 138[23])
    defparam i64_1_lut.init = 16'h5555;
    LUT4 RESET_I_0_1_lut_rep_23 (.A(\PS_DRV_3__N_233[0] ), .Z(n2652)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(217[7:18])
    defparam RESET_I_0_1_lut_rep_23.init = 16'h5555;
    LUT4 i659_2_lut_2_lut (.A(\PS_DRV_3__N_233[0] ), .B(n583), .Z(n1306)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(217[7:18])
    defparam i659_2_lut_2_lut.init = 16'h4444;
    i2c_master I2CM0 (.\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), .\CMD_I2CM[6] (CMD_I2CM[6]), 
            .DATA_W_I2CM({DATA_W_I2CM}), .BUSY_I2CM(BUSY_I2CM), .READY_I2CM(READY_I2CM), 
            .DISP_I2C_SDA_c(DISP_I2C_SDA_c), .\PS_I2CM_3__N_85[0] (PS_I2CM_3__N_85[0]), 
            .NEXT_I2CM(NEXT_I2CM), .DISP_I2C_SCL_c(DISP_I2C_SCL_c));   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(94[10:20])
    \clock_tree(11)  CTR0 (.CTR_BUF({CTR_BUF}), .READY_I2CM(READY_I2CM), 
            .LOAD_CTR_BUF(LOAD_CTR_BUF), .GND_net(GND_net));   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(115[9:19])
    ram_data BUF0 (.CTR_DRV({CTR_DRV}), .\CTR_BUF[9] (CTR_BUF[9]), .\CTR_BUF[8] (CTR_BUF[8]), 
            .\CTR_BUF[7] (CTR_BUF[7]), .\CTR_BUF[6] (CTR_BUF[6]), .\CTR_BUF[5] (CTR_BUF[5]), 
            .\CTR_BUF[4] (CTR_BUF[4]), .\CTR_BUF[3] (CTR_BUF[3]), .\CTR_BUF[2] (CTR_BUF[2]), 
            .\CTR_BUF[1] (CTR_BUF[1]), .\CTR_BUF[0] (CTR_BUF[0]), .WRITE_DATA_BUF({WRITE_DATA_BUF}), 
            .WRITE_EN_BUF(WRITE_EN_BUF), .\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), 
            .READ_EN_BUF(READ_EN_BUF), .GND_net(GND_net), .DATA_OUT_BUF({DATA_OUT_BUF}), 
            .VCC_net(VCC_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(109[9:17])
    
endmodule
//
// Verilog Description of module i2c_master
//

module i2c_master (\SYS_CLK_TREE[5] , \CMD_I2CM[6] , DATA_W_I2CM, BUSY_I2CM, 
            READY_I2CM, DISP_I2C_SDA_c, \PS_I2CM_3__N_85[0] , NEXT_I2CM, 
            DISP_I2C_SCL_c);
    input \SYS_CLK_TREE[5] ;
    input \CMD_I2CM[6] ;
    input [7:0]DATA_W_I2CM;
    output BUSY_I2CM;
    output READY_I2CM;
    output DISP_I2C_SDA_c;
    input \PS_I2CM_3__N_85[0] ;
    input NEXT_I2CM;
    output DISP_I2C_SCL_c;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire LOAD_ADDR /* synthesis is_clock=1, SET_AS_NETWORK=\DD0/I2CC0/I2CM0/LOAD_ADDR */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(99[9:18])
    wire [1:0]LOAD_DATA /* synthesis is_clock=1, SET_AS_NETWORK=\DD0/I2CC0/I2CM0/LOAD_DATA[1] */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(100[9:18])
    wire READY_I2CM /* synthesis SET_AS_NETWORK=\DD0/I2CC0/READY_I2CM, is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(77[20:30])
    wire SYS_CLK_TREE_5_enable_2 /* synthesis is_clock=1, SET_AS_NETWORK=SYS_CLK_TREE[5]_enable_2 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire [0:7]DATA_BYTE_R;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(90[9:20])
    wire [4:0]CLOCK_CT;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(76[9:17])
    
    wire n2385, n2384, n2383, BUSY_N_90;
    wire [15:0]n855;
    
    wire n1310, n2382, n2543, n2544, n6;
    wire [2:0]n957;
    
    wire n1232, n1498, n1231;
    wire [0:7]CMD_BYTE_R;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(88[9:19])
    
    wire LOAD, LOAD_N_92;
    wire [4:0]D_IN;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(78[9:13])
    wire [4:0]D_IN_4__N_32;
    
    wire SCL_EN, SCL_EN_N_93, BUSY_N_89, SDA_R_N_94, n2331, n1313, 
        n1532;
    wire [2:0]n956;
    
    wire n2304, n2386, n2387, n4;
    wire [3:0]PS_I2CM_3__N_57;
    
    wire n2259;
    wire [3:0]PS_I2CM_3__N_81;
    
    wire n4_adj_305, n1331, n1317, n2545;
    
    LUT4 i1742_3_lut (.A(DATA_BYTE_R[6]), .B(DATA_BYTE_R[7]), .C(CLOCK_CT[2]), 
         .Z(n2385)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1742_3_lut.init = 16'hcaca;
    LUT4 i1741_3_lut (.A(DATA_BYTE_R[4]), .B(DATA_BYTE_R[5]), .C(CLOCK_CT[2]), 
         .Z(n2384)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1741_3_lut.init = 16'hcaca;
    LUT4 i1740_3_lut (.A(DATA_BYTE_R[2]), .B(DATA_BYTE_R[3]), .C(CLOCK_CT[2]), 
         .Z(n2383)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1740_3_lut.init = 16'hcaca;
    FD1S3JX PS_I2CM_FSM_i1 (.D(n1310), .CK(\SYS_CLK_TREE[5] ), .PD(n855[12]), 
            .Q(BUSY_N_90));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i1.GSR = "ENABLED";
    LUT4 i1739_3_lut (.A(DATA_BYTE_R[0]), .B(DATA_BYTE_R[1]), .C(CLOCK_CT[2]), 
         .Z(n2382)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1739_3_lut.init = 16'hcaca;
    LUT4 n2543_bdd_2_lut (.A(n2543), .B(CLOCK_CT[3]), .Z(n2544)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n2543_bdd_2_lut.init = 16'h2222;
    LUT4 CLOCK_CT_3__bdd_4_lut (.A(CLOCK_CT[4]), .B(CLOCK_CT[2]), .C(CLOCK_CT[0]), 
         .D(CLOCK_CT[1]), .Z(n2543)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam CLOCK_CT_3__bdd_4_lut.init = 16'h0010;
    LUT4 i1_2_lut (.A(CLOCK_CT[4]), .B(CLOCK_CT[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i585_3_lut (.A(n957[0]), .B(n957[2]), .C(n855[4]), .Z(n1232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(324[4] 345[13])
    defparam i585_3_lut.init = 16'hcaca;
    LUT4 i584_4_lut (.A(n1498), .B(n957[1]), .C(n855[6]), .D(n855[4]), 
         .Z(n1231)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(324[4] 345[13])
    defparam i584_4_lut.init = 16'hccca;
    FD1S3AX CMD_BYTE_R_i1 (.D(\CMD_I2CM[6] ), .CK(LOAD_ADDR), .Q(CMD_BYTE_R[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(179[3] 183[10])
    defparam CMD_BYTE_R_i1.GSR = "ENABLED";
    FD1S3AX DATA_BYTE_R_i7 (.D(DATA_W_I2CM[0]), .CK(LOAD_DATA[1]), .Q(DATA_BYTE_R[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(192[3] 196[10])
    defparam DATA_BYTE_R_i7.GSR = "ENABLED";
    FD1S3AX LOAD_DATA_i0 (.D(LOAD), .CK(\SYS_CLK_TREE[5] ), .Q(LOAD_DATA[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(227[3] 231[10])
    defparam LOAD_DATA_i0.GSR = "ENABLED";
    FD1S3AX LOAD_102 (.D(LOAD_N_92), .CK(\SYS_CLK_TREE[5] ), .Q(LOAD)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(205[3] 218[10])
    defparam LOAD_102.GSR = "ENABLED";
    FD1S3AX D_IN_i1 (.D(D_IN_4__N_32[2]), .CK(\SYS_CLK_TREE[5] ), .Q(D_IN[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(240[3] 251[10])
    defparam D_IN_i1.GSR = "ENABLED";
    FD1S3AX SCL_EN_105 (.D(SCL_EN_N_93), .CK(\SYS_CLK_TREE[5] ), .Q(SCL_EN)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(260[3] 276[10])
    defparam SCL_EN_105.GSR = "ENABLED";
    FD1S3AX BUSY_106 (.D(BUSY_N_89), .CK(\SYS_CLK_TREE[5] ), .Q(BUSY_I2CM)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(285[3] 294[10])
    defparam BUSY_106.GSR = "ENABLED";
    FD1S3JX READY_DATA_107 (.D(n855[9]), .CK(\SYS_CLK_TREE[5] ), .PD(n855[7]), 
            .Q(READY_I2CM)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(303[3] 313[10])
    defparam READY_DATA_107.GSR = "ENABLED";
    FD1S3AX SDA_R_108 (.D(SDA_R_N_94), .CK(SYS_CLK_TREE_5_enable_2), .Q(DISP_I2C_SDA_c)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(322[3] 347[10])
    defparam SDA_R_108.GSR = "ENABLED";
    LUT4 i1805_2_lut (.A(n855[4]), .B(n855[8]), .Z(n2331)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(324[4] 345[13])
    defparam i1805_2_lut.init = 16'heeee;
    LUT4 i666_4_lut (.A(LOAD_ADDR), .B(\PS_I2CM_3__N_85[0] ), .C(SYS_CLK_TREE_5_enable_2), 
         .D(BUSY_N_90), .Z(n1313)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i666_4_lut.init = 16'hce0a;
    LUT4 i883_1_lut (.A(CMD_BYTE_R[1]), .Z(n1532)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(179[3] 183[10])
    defparam i883_1_lut.init = 16'h5555;
    LUT4 i1093_2_lut_rep_21 (.A(CLOCK_CT[0]), .B(CLOCK_CT[1]), .Z(SYS_CLK_TREE_5_enable_2)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(127[2] 129[22])
    defparam i1093_2_lut_rep_21.init = 16'h2222;
    FD1S3AX ADDR_BIT_R_96_i0 (.D(n956[0]), .CK(\SYS_CLK_TREE[5] ), .Q(n957[0]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam ADDR_BIT_R_96_i0.GSR = "ENABLED";
    PFUMX mux_476_i1 (.BLUT(n1231), .ALUT(n1232), .C0(n2331), .Z(SDA_R_N_94));
    LUT4 i663_2_lut (.A(BUSY_N_90), .B(\PS_I2CM_3__N_85[0] ), .Z(n1310)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i663_2_lut.init = 16'h2222;
    LUT4 i1_3_lut (.A(CLOCK_CT[2]), .B(CLOCK_CT[3]), .C(CLOCK_CT[4]), 
         .Z(n2304)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam i1_3_lut.init = 16'h0202;
    MUX21 i1828 (.D0(n2386), .D1(n2387), .SD(CLOCK_CT[4]), .Z(n956[0]));
    LUT4 i1_2_lut_adj_1 (.A(NEXT_I2CM), .B(n855[9]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i1_2_lut_adj_1.init = 16'h8888;
    LUT4 i1_4_lut (.A(n855[7]), .B(n855[8]), .C(PS_I2CM_3__N_57[3]), .D(n4), 
         .Z(n2259)) /* synthesis lut_function=(A (B+(C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i1_4_lut.init = 16'hfcac;
    PFUMX i1743 (.BLUT(n2382), .ALUT(n2383), .C0(CLOCK_CT[3]), .Z(n2386));
    PFUMX i1744 (.BLUT(n2384), .ALUT(n2385), .C0(CLOCK_CT[3]), .Z(n2387));
    LUT4 i59_1_lut_2_lut (.A(CLOCK_CT[0]), .B(CLOCK_CT[1]), .Z(PS_I2CM_3__N_81[0])) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(127[2] 129[22])
    defparam i59_1_lut_2_lut.init = 16'hdddd;
    LUT4 i684_4_lut (.A(n855[10]), .B(n855[9]), .C(SYS_CLK_TREE_5_enable_2), 
         .D(n4_adj_305), .Z(n1331)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i684_4_lut.init = 16'hce0a;
    LUT4 i1_2_lut_adj_2 (.A(NEXT_I2CM), .B(PS_I2CM_3__N_57[3]), .Z(n4_adj_305)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i1_2_lut_adj_2.init = 16'h4444;
    FD1S3AX PS_I2CM_FSM_i2 (.D(n1313), .CK(\SYS_CLK_TREE[5] ), .Q(LOAD_ADDR));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i2.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i3 (.D(LOAD_ADDR), .SP(SYS_CLK_TREE_5_enable_2), 
            .CK(\SYS_CLK_TREE[5] ), .Q(n855[2]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i3.GSR = "ENABLED";
    FD1S3AX PS_I2CM_FSM_i4 (.D(n1317), .CK(\SYS_CLK_TREE[5] ), .Q(n855[3]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i4.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i5 (.D(n855[3]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n855[4]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i5.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i6 (.D(n855[4]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n855[5]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i6.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i7 (.D(n855[5]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n855[6]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i7.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i8 (.D(n855[6]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n855[7]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i8.GSR = "ENABLED";
    FD1S3AX PS_I2CM_FSM_i9 (.D(n2259), .CK(\SYS_CLK_TREE[5] ), .Q(n855[8]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i9.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i10 (.D(n855[8]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n855[9]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i10.GSR = "ENABLED";
    FD1S3AX PS_I2CM_FSM_i11 (.D(n1331), .CK(\SYS_CLK_TREE[5] ), .Q(n855[10]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i11.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i12 (.D(n855[10]), .SP(SYS_CLK_TREE_5_enable_2), 
            .CK(\SYS_CLK_TREE[5] ), .Q(n855[11]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i12.GSR = "ENABLED";
    FD1S3IX PS_I2CM_FSM_i13 (.D(n855[11]), .CK(\SYS_CLK_TREE[5] ), .CD(PS_I2CM_3__N_81[0]), 
            .Q(n855[12]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i13.GSR = "ENABLED";
    LUT4 i796_3_lut (.A(CLOCK_CT[2]), .B(CLOCK_CT[4]), .C(CLOCK_CT[3]), 
         .Z(n956[2])) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam i796_3_lut.init = 16'h3636;
    PFUMX i1913 (.BLUT(n2545), .ALUT(n2544), .C0(D_IN_4__N_32[2]), .Z(LOAD_N_92));
    LUT4 i670_4_lut (.A(n855[3]), .B(SYS_CLK_TREE_5_enable_2), .C(PS_I2CM_3__N_57[3]), 
         .D(n855[2]), .Z(n1317)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i670_4_lut.init = 16'hce0a;
    FD1S3IX ADDR_BIT_R_96_i1 (.D(n2304), .CK(\SYS_CLK_TREE[5] ), .CD(n1532), 
            .Q(n957[1]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam ADDR_BIT_R_96_i1.GSR = "ENABLED";
    LUT4 i1086_2_lut (.A(CLOCK_CT[1]), .B(SCL_EN), .Z(DISP_I2C_SCL_c)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(115[2] 117[32])
    defparam i1086_2_lut.init = 16'hbbbb;
    FD1S3AX DATA_BYTE_R_i6 (.D(DATA_W_I2CM[1]), .CK(LOAD_DATA[1]), .Q(DATA_BYTE_R[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(192[3] 196[10])
    defparam DATA_BYTE_R_i6.GSR = "ENABLED";
    FD1S3AX DATA_BYTE_R_i5 (.D(DATA_W_I2CM[2]), .CK(LOAD_DATA[1]), .Q(DATA_BYTE_R[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(192[3] 196[10])
    defparam DATA_BYTE_R_i5.GSR = "ENABLED";
    FD1S3AX DATA_BYTE_R_i4 (.D(DATA_W_I2CM[3]), .CK(LOAD_DATA[1]), .Q(DATA_BYTE_R[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(192[3] 196[10])
    defparam DATA_BYTE_R_i4.GSR = "ENABLED";
    FD1S3AX DATA_BYTE_R_i3 (.D(DATA_W_I2CM[4]), .CK(LOAD_DATA[1]), .Q(DATA_BYTE_R[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(192[3] 196[10])
    defparam DATA_BYTE_R_i3.GSR = "ENABLED";
    FD1S3AX DATA_BYTE_R_i2 (.D(DATA_W_I2CM[5]), .CK(LOAD_DATA[1]), .Q(DATA_BYTE_R[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(192[3] 196[10])
    defparam DATA_BYTE_R_i2.GSR = "ENABLED";
    FD1S3AX DATA_BYTE_R_i1 (.D(DATA_W_I2CM[6]), .CK(LOAD_DATA[1]), .Q(DATA_BYTE_R[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(192[3] 196[10])
    defparam DATA_BYTE_R_i1.GSR = "ENABLED";
    FD1S3AX DATA_BYTE_R_i0 (.D(DATA_W_I2CM[7]), .CK(LOAD_DATA[1]), .Q(DATA_BYTE_R[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(192[3] 196[10])
    defparam DATA_BYTE_R_i0.GSR = "ENABLED";
    FD1S3AX LOAD_DATA_i1 (.D(LOAD_DATA[0]), .CK(\SYS_CLK_TREE[5] ), .Q(LOAD_DATA[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=94, LSE_RLINE=94 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(227[3] 231[10])
    defparam LOAD_DATA_i1.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(CLOCK_CT[2]), .B(CLOCK_CT[3]), .C(CLOCK_CT[0]), 
         .D(n6), .Z(PS_I2CM_3__N_57[3])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i2_3_lut (.A(n855[5]), .B(n855[7]), .C(n855[9]), .Z(D_IN_4__N_32[2])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    FD1S3AX ADDR_BIT_R_96_i2 (.D(n956[2]), .CK(\SYS_CLK_TREE[5] ), .Q(n957[2]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam ADDR_BIT_R_96_i2.GSR = "ENABLED";
    LUT4 BUSY_N_90_bdd_2_lut_1955 (.A(BUSY_N_90), .B(n855[12]), .Z(n2545)) /* synthesis lut_function=(A+(B)) */ ;
    defparam BUSY_N_90_bdd_2_lut_1955.init = 16'heeee;
    LUT4 i1815_2_lut (.A(n855[2]), .B(n1498), .Z(SCL_EN_N_93)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1815_2_lut.init = 16'h1111;
    LUT4 i3_4_lut (.A(BUSY_N_90), .B(LOAD_ADDR), .C(n855[11]), .D(n855[12]), 
         .Z(n1498)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(324[4] 345[13])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 BUSY_I_0_1_lut (.A(BUSY_N_90), .Z(BUSY_N_89)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(287[4] 292[13])
    defparam BUSY_I_0_1_lut.init = 16'h5555;
    \clock_tree(5)  CT0 (.CLOCK_CT({CLOCK_CT}), .\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), 
            .LOAD(LOAD), .\D_IN[2] (D_IN[2]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(104[8:18])
    
endmodule
//
// Verilog Description of module \clock_tree(5) 
//

module \clock_tree(5)  (CLOCK_CT, \SYS_CLK_TREE[5] , LOAD, \D_IN[2] );
    output [4:0]CLOCK_CT;
    input \SYS_CLK_TREE[5] ;
    input LOAD;
    input \D_IN[2] ;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire [4:0]n32;
    
    wire n2649;
    wire [4:0]n25;
    
    FD1S3AX CLOCK_R_507__i0 (.D(n32[0]), .CK(\SYS_CLK_TREE[5] ), .Q(CLOCK_CT[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_507__i0.GSR = "ENABLED";
    LUT4 i1437_3_lut_4_lut (.A(CLOCK_CT[2]), .B(n2649), .C(CLOCK_CT[3]), 
         .D(CLOCK_CT[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1437_3_lut_4_lut.init = 16'h7f80;
    FD1S3AX CLOCK_R_507__i1 (.D(n32[1]), .CK(\SYS_CLK_TREE[5] ), .Q(CLOCK_CT[1]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_507__i1.GSR = "ENABLED";
    FD1S3AX CLOCK_R_507__i2 (.D(n32[2]), .CK(\SYS_CLK_TREE[5] ), .Q(CLOCK_CT[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_507__i2.GSR = "ENABLED";
    FD1S3JX CLOCK_R_507__i3 (.D(n25[3]), .CK(\SYS_CLK_TREE[5] ), .PD(LOAD), 
            .Q(CLOCK_CT[3]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_507__i3.GSR = "ENABLED";
    FD1S3JX CLOCK_R_507__i4 (.D(n25[4]), .CK(\SYS_CLK_TREE[5] ), .PD(LOAD), 
            .Q(CLOCK_CT[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_507__i4.GSR = "ENABLED";
    LUT4 CLOCK_R_507_mux_6_i1_3_lut (.A(CLOCK_CT[0]), .B(\D_IN[2] ), .C(LOAD), 
         .Z(n32[0])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_507_mux_6_i1_3_lut.init = 16'hc5c5;
    LUT4 CLOCK_R_507_mux_6_i2_4_lut (.A(CLOCK_CT[1]), .B(\D_IN[2] ), .C(LOAD), 
         .D(CLOCK_CT[0]), .Z(n32[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_507_mux_6_i2_4_lut.init = 16'hc5ca;
    LUT4 i1419_2_lut_rep_20 (.A(CLOCK_CT[1]), .B(CLOCK_CT[0]), .Z(n2649)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1419_2_lut_rep_20.init = 16'h8888;
    LUT4 i1430_2_lut_3_lut_4_lut (.A(CLOCK_CT[1]), .B(CLOCK_CT[0]), .C(CLOCK_CT[3]), 
         .D(CLOCK_CT[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1430_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 CLOCK_R_507_mux_6_i3_4_lut (.A(CLOCK_CT[2]), .B(\D_IN[2] ), .C(LOAD), 
         .D(n2649), .Z(n32[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_507_mux_6_i3_4_lut.init = 16'hc5ca;
    
endmodule
//
// Verilog Description of module \clock_tree(11) 
//

module \clock_tree(11)  (CTR_BUF, READY_I2CM, LOAD_CTR_BUF, GND_net);
    output [10:0]CTR_BUF;
    input READY_I2CM;
    input LOAD_CTR_BUF;
    input GND_net;
    
    wire READY_I2CM /* synthesis SET_AS_NETWORK=\DD0/I2CC0/READY_I2CM, is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(77[20:30])
    wire [10:0]n49;
    
    wire n2186, n2187, n2185, n2184, n2183;
    
    FD1S3IX CLOCK_R_506__i0 (.D(n49[0]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i0.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i10 (.D(n49[10]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[10])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i10.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i9 (.D(n49[9]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i9.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i8 (.D(n49[8]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i8.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i7 (.D(n49[7]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i7.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i6 (.D(n49[6]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i6.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i5 (.D(n49[5]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i5.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i4 (.D(n49[4]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i4.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i3 (.D(n49[3]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i3.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i2 (.D(n49[2]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i2.GSR = "ENABLED";
    FD1S3IX CLOCK_R_506__i1 (.D(n49[1]), .CK(READY_I2CM), .CD(LOAD_CTR_BUF), 
            .Q(CTR_BUF[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506__i1.GSR = "ENABLED";
    CCU2D CLOCK_R_506_add_4_9 (.A0(CTR_BUF[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_BUF[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2186), .COUT(n2187), .S0(n49[7]), .S1(n49[8]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506_add_4_9.INIT0 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_9.INIT1 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_9.INJECT1_0 = "NO";
    defparam CLOCK_R_506_add_4_9.INJECT1_1 = "NO";
    CCU2D CLOCK_R_506_add_4_7 (.A0(CTR_BUF[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_BUF[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2185), .COUT(n2186), .S0(n49[5]), .S1(n49[6]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506_add_4_7.INIT0 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_7.INIT1 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_7.INJECT1_0 = "NO";
    defparam CLOCK_R_506_add_4_7.INJECT1_1 = "NO";
    CCU2D CLOCK_R_506_add_4_11 (.A0(CTR_BUF[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_BUF[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2187), .S0(n49[9]), .S1(n49[10]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506_add_4_11.INIT0 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_11.INIT1 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_11.INJECT1_0 = "NO";
    defparam CLOCK_R_506_add_4_11.INJECT1_1 = "NO";
    CCU2D CLOCK_R_506_add_4_5 (.A0(CTR_BUF[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_BUF[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2184), .COUT(n2185), .S0(n49[3]), .S1(n49[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506_add_4_5.INIT0 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_5.INIT1 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_5.INJECT1_0 = "NO";
    defparam CLOCK_R_506_add_4_5.INJECT1_1 = "NO";
    CCU2D CLOCK_R_506_add_4_3 (.A0(CTR_BUF[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_BUF[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2183), .COUT(n2184), .S0(n49[1]), .S1(n49[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506_add_4_3.INIT0 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_3.INIT1 = 16'hfaaa;
    defparam CLOCK_R_506_add_4_3.INJECT1_0 = "NO";
    defparam CLOCK_R_506_add_4_3.INJECT1_1 = "NO";
    CCU2D CLOCK_R_506_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_BUF[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2183), .S1(n49[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_506_add_4_1.INIT0 = 16'hF000;
    defparam CLOCK_R_506_add_4_1.INIT1 = 16'h0555;
    defparam CLOCK_R_506_add_4_1.INJECT1_0 = "NO";
    defparam CLOCK_R_506_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module ram_data
//

module ram_data (CTR_DRV, \CTR_BUF[9] , \CTR_BUF[8] , \CTR_BUF[7] , 
            \CTR_BUF[6] , \CTR_BUF[5] , \CTR_BUF[4] , \CTR_BUF[3] , 
            \CTR_BUF[2] , \CTR_BUF[1] , \CTR_BUF[0] , WRITE_DATA_BUF, 
            WRITE_EN_BUF, \SYS_CLK_TREE[5] , READ_EN_BUF, GND_net, DATA_OUT_BUF, 
            VCC_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input [9:0]CTR_DRV;
    input \CTR_BUF[9] ;
    input \CTR_BUF[8] ;
    input \CTR_BUF[7] ;
    input \CTR_BUF[6] ;
    input \CTR_BUF[5] ;
    input \CTR_BUF[4] ;
    input \CTR_BUF[3] ;
    input \CTR_BUF[2] ;
    input \CTR_BUF[1] ;
    input \CTR_BUF[0] ;
    input [7:0]WRITE_DATA_BUF;
    input WRITE_EN_BUF;
    input \SYS_CLK_TREE[5] ;
    input READ_EN_BUF;
    input GND_net;
    output [7:0]DATA_OUT_BUF;
    input VCC_net;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    
    DP8KC ram_data_0_0_0 (.DIA0(WRITE_DATA_BUF[0]), .DIA1(WRITE_DATA_BUF[1]), 
          .DIA2(WRITE_DATA_BUF[2]), .DIA3(WRITE_DATA_BUF[3]), .DIA4(WRITE_DATA_BUF[4]), 
          .DIA5(WRITE_DATA_BUF[5]), .DIA6(WRITE_DATA_BUF[6]), .DIA7(WRITE_DATA_BUF[7]), 
          .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), .ADA2(GND_net), 
          .ADA3(CTR_DRV[0]), .ADA4(CTR_DRV[1]), .ADA5(CTR_DRV[2]), .ADA6(CTR_DRV[3]), 
          .ADA7(CTR_DRV[4]), .ADA8(CTR_DRV[5]), .ADA9(CTR_DRV[6]), .ADA10(CTR_DRV[7]), 
          .ADA11(CTR_DRV[8]), .ADA12(CTR_DRV[9]), .CEA(WRITE_EN_BUF), 
          .OCEA(WRITE_EN_BUF), .CLKA(\SYS_CLK_TREE[5] ), .WEA(WRITE_EN_BUF), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(\CTR_BUF[0] ), .ADB4(\CTR_BUF[1] ), .ADB5(\CTR_BUF[2] ), 
          .ADB6(\CTR_BUF[3] ), .ADB7(\CTR_BUF[4] ), .ADB8(\CTR_BUF[5] ), 
          .ADB9(\CTR_BUF[6] ), .ADB10(\CTR_BUF[7] ), .ADB11(\CTR_BUF[8] ), 
          .ADB12(\CTR_BUF[9] ), .CEB(READ_EN_BUF), .OCEB(READ_EN_BUF), 
          .CLKB(\SYS_CLK_TREE[5] ), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOB0(DATA_OUT_BUF[0]), .DOB1(DATA_OUT_BUF[1]), 
          .DOB2(DATA_OUT_BUF[2]), .DOB3(DATA_OUT_BUF[3]), .DOB4(DATA_OUT_BUF[4]), 
          .DOB5(DATA_OUT_BUF[5]), .DOB6(DATA_OUT_BUF[6]), .DOB7(DATA_OUT_BUF[7])) /* synthesis MEM_LPC_FILE="ram_data.lpc", MEM_INIT_FILE="init_ram.mem", syn_instantiated=1, LSE_LINE_FILE_ID=29, LSE_LCOL=9, LSE_RCOL=17, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/fpga/projects/fxbox/src/i2c_controller.vhd(109[9:17])
    defparam ram_data_0_0_0.DATA_WIDTH_A = 9;
    defparam ram_data_0_0_0.DATA_WIDTH_B = 9;
    defparam ram_data_0_0_0.REGMODE_A = "NOREG";
    defparam ram_data_0_0_0.REGMODE_B = "NOREG";
    defparam ram_data_0_0_0.CSDECODE_A = "0b000";
    defparam ram_data_0_0_0.CSDECODE_B = "0b000";
    defparam ram_data_0_0_0.WRITEMODE_A = "NORMAL";
    defparam ram_data_0_0_0.WRITEMODE_B = "NORMAL";
    defparam ram_data_0_0_0.GSR = "ENABLED";
    defparam ram_data_0_0_0.RESETMODE = "ASYNC";
    defparam ram_data_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ram_data_0_0_0.INIT_DATA = "DYNAMIC";
    defparam ram_data_0_0_0.INITVAL_00 = "0x00007000220FE00042AF00020060DB044D90288D100D514CA40FE81024DA190A1080001A63F150AE";
    defparam ram_data_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_data_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module \clock_tree(10) 
//

module \clock_tree(10)  (LOAD_CTR_D_DRV, LOAD_CTR_DRV, CTR_DRV, GND_net, 
            CTR_MCLK);
    input [9:0]LOAD_CTR_D_DRV;
    input LOAD_CTR_DRV;
    output [9:0]CTR_DRV;
    input GND_net;
    input CTR_MCLK;
    
    wire CTR_MCLK /* synthesis SET_AS_NETWORK=\DD0/CTR_MCLK, is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/display_driver.vhd(107[9:17])
    wire [9:0]n45;
    wire [9:0]n57;
    
    wire n2190, n2191, n2189, n2193, n2192;
    
    LUT4 CLOCK_R_504_mux_6_i2_3_lut (.A(n45[1]), .B(LOAD_CTR_D_DRV[1]), 
         .C(LOAD_CTR_DRV), .Z(n57[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i2_3_lut.init = 16'hcaca;
    CCU2D CLOCK_R_504_add_4_5 (.A0(CTR_DRV[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_DRV[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2190), .COUT(n2191), .S0(n45[3]), .S1(n45[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_add_4_5.INIT0 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_5.INIT1 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_5.INJECT1_0 = "NO";
    defparam CLOCK_R_504_add_4_5.INJECT1_1 = "NO";
    LUT4 CLOCK_R_504_mux_6_i10_3_lut (.A(n45[9]), .B(LOAD_CTR_D_DRV[9]), 
         .C(LOAD_CTR_DRV), .Z(n57[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i10_3_lut.init = 16'hcaca;
    CCU2D CLOCK_R_504_add_4_3 (.A0(CTR_DRV[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_DRV[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2189), .COUT(n2190), .S0(n45[1]), .S1(n45[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_add_4_3.INIT0 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_3.INIT1 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_3.INJECT1_0 = "NO";
    defparam CLOCK_R_504_add_4_3.INJECT1_1 = "NO";
    FD1S3AX CLOCK_R_504__i0 (.D(n57[0]), .CK(CTR_MCLK), .Q(CTR_DRV[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i0.GSR = "ENABLED";
    CCU2D CLOCK_R_504_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_DRV[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2189), .S1(n45[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_add_4_1.INIT0 = 16'hF000;
    defparam CLOCK_R_504_add_4_1.INIT1 = 16'h0555;
    defparam CLOCK_R_504_add_4_1.INJECT1_0 = "NO";
    defparam CLOCK_R_504_add_4_1.INJECT1_1 = "NO";
    LUT4 CLOCK_R_504_mux_6_i6_3_lut (.A(n45[5]), .B(LOAD_CTR_D_DRV[5]), 
         .C(LOAD_CTR_DRV), .Z(n57[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i6_3_lut.init = 16'hcaca;
    LUT4 CLOCK_R_504_mux_6_i5_3_lut (.A(n45[4]), .B(LOAD_CTR_D_DRV[4]), 
         .C(LOAD_CTR_DRV), .Z(n57[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i5_3_lut.init = 16'hcaca;
    LUT4 CLOCK_R_504_mux_6_i8_3_lut (.A(n45[7]), .B(LOAD_CTR_D_DRV[7]), 
         .C(LOAD_CTR_DRV), .Z(n57[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i8_3_lut.init = 16'hcaca;
    LUT4 CLOCK_R_504_mux_6_i7_3_lut (.A(n45[6]), .B(LOAD_CTR_D_DRV[6]), 
         .C(LOAD_CTR_DRV), .Z(n57[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i7_3_lut.init = 16'hcaca;
    CCU2D CLOCK_R_504_add_4_11 (.A0(CTR_DRV[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2193), .S0(n45[9]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_add_4_11.INIT0 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_11.INIT1 = 16'h0000;
    defparam CLOCK_R_504_add_4_11.INJECT1_0 = "NO";
    defparam CLOCK_R_504_add_4_11.INJECT1_1 = "NO";
    LUT4 CLOCK_R_504_mux_6_i4_3_lut (.A(n45[3]), .B(LOAD_CTR_D_DRV[3]), 
         .C(LOAD_CTR_DRV), .Z(n57[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i4_3_lut.init = 16'hcaca;
    LUT4 CLOCK_R_504_mux_6_i1_3_lut (.A(n45[0]), .B(LOAD_CTR_D_DRV[0]), 
         .C(LOAD_CTR_DRV), .Z(n57[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i1_3_lut.init = 16'hcaca;
    FD1S3AX CLOCK_R_504__i1 (.D(n57[1]), .CK(CTR_MCLK), .Q(CTR_DRV[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i1.GSR = "ENABLED";
    FD1S3AX CLOCK_R_504__i2 (.D(n57[2]), .CK(CTR_MCLK), .Q(CTR_DRV[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i2.GSR = "ENABLED";
    FD1S3AX CLOCK_R_504__i3 (.D(n57[3]), .CK(CTR_MCLK), .Q(CTR_DRV[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i3.GSR = "ENABLED";
    FD1S3AX CLOCK_R_504__i4 (.D(n57[4]), .CK(CTR_MCLK), .Q(CTR_DRV[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i4.GSR = "ENABLED";
    FD1S3AX CLOCK_R_504__i5 (.D(n57[5]), .CK(CTR_MCLK), .Q(CTR_DRV[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i5.GSR = "ENABLED";
    FD1S3AX CLOCK_R_504__i6 (.D(n57[6]), .CK(CTR_MCLK), .Q(CTR_DRV[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i6.GSR = "ENABLED";
    FD1S3AX CLOCK_R_504__i7 (.D(n57[7]), .CK(CTR_MCLK), .Q(CTR_DRV[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i7.GSR = "ENABLED";
    FD1S3AX CLOCK_R_504__i8 (.D(n57[8]), .CK(CTR_MCLK), .Q(CTR_DRV[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i8.GSR = "ENABLED";
    FD1S3AX CLOCK_R_504__i9 (.D(n57[9]), .CK(CTR_MCLK), .Q(CTR_DRV[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504__i9.GSR = "ENABLED";
    LUT4 CLOCK_R_504_mux_6_i3_3_lut (.A(n45[2]), .B(LOAD_CTR_D_DRV[2]), 
         .C(LOAD_CTR_DRV), .Z(n57[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i3_3_lut.init = 16'hcaca;
    LUT4 CLOCK_R_504_mux_6_i9_3_lut (.A(n45[8]), .B(LOAD_CTR_D_DRV[8]), 
         .C(LOAD_CTR_DRV), .Z(n57[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_mux_6_i9_3_lut.init = 16'hcaca;
    CCU2D CLOCK_R_504_add_4_9 (.A0(CTR_DRV[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_DRV[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2192), .COUT(n2193), .S0(n45[7]), .S1(n45[8]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_add_4_9.INIT0 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_9.INIT1 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_9.INJECT1_0 = "NO";
    defparam CLOCK_R_504_add_4_9.INJECT1_1 = "NO";
    CCU2D CLOCK_R_504_add_4_7 (.A0(CTR_DRV[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CTR_DRV[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2191), .COUT(n2192), .S0(n45[5]), .S1(n45[6]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_504_add_4_7.INIT0 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_7.INIT1 = 16'hfaaa;
    defparam CLOCK_R_504_add_4_7.INJECT1_0 = "NO";
    defparam CLOCK_R_504_add_4_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \i2s_master(24,128,1) 
//

module \i2s_master(24,128,1)  (DAC_LRCK_c_c, DAC_DATA_c, WCLK_R, DAC_BCK_c_c, 
            WCLK_EDGE, WCLK_EDGE_N_123, n2840, BCLK_N_118, READY_FLAG_N_120, 
            BCLK_GATE_RELEASE, WCLK_N_175, n1531, \DATA_IN_R_T[23] , 
            \DATA_IN_R_T[21] , \DATA_IN_R_T[20] , \DATA_IN_R_T[19] , \DATA_IN_R_T[18] , 
            \DATA_IN_R_T[17] , \DATA_IN_R_T[16] , \DATA_IN_R_T[15] , \DATA_IN_R_T[14] , 
            \DATA_IN_R_T[13] , \DATA_IN_R_T[12] , \DATA_IN_R_T[11] , \DATA_IN_R_T[10] , 
            \DATA_IN_R_T[9] , \DATA_IN_R_T[8] , \DATA_IN_R_T[7] , \DATA_IN_R_T[6] , 
            \DATA_IN_R_T[5] , \DATA_IN_R_T[4] , \DATA_IN_R_T[3] , \DATA_IN_R_T[2] , 
            \DATA_IN_R_T[1] , \DATA_IN_R_T[0] );
    input DAC_LRCK_c_c;
    output DAC_DATA_c;
    output WCLK_R;
    input DAC_BCK_c_c;
    output WCLK_EDGE;
    input WCLK_EDGE_N_123;
    input n2840;
    input BCLK_N_118;
    output READY_FLAG_N_120;
    input BCLK_GATE_RELEASE;
    input WCLK_N_175;
    input n1531;
    input \DATA_IN_R_T[23] ;
    input \DATA_IN_R_T[21] ;
    input \DATA_IN_R_T[20] ;
    input \DATA_IN_R_T[19] ;
    input \DATA_IN_R_T[18] ;
    input \DATA_IN_R_T[17] ;
    input \DATA_IN_R_T[16] ;
    input \DATA_IN_R_T[15] ;
    input \DATA_IN_R_T[14] ;
    input \DATA_IN_R_T[13] ;
    input \DATA_IN_R_T[12] ;
    input \DATA_IN_R_T[11] ;
    input \DATA_IN_R_T[10] ;
    input \DATA_IN_R_T[9] ;
    input \DATA_IN_R_T[8] ;
    input \DATA_IN_R_T[7] ;
    input \DATA_IN_R_T[6] ;
    input \DATA_IN_R_T[5] ;
    input \DATA_IN_R_T[4] ;
    input \DATA_IN_R_T[3] ;
    input \DATA_IN_R_T[2] ;
    input \DATA_IN_R_T[1] ;
    input \DATA_IN_R_T[0] ;
    
    wire DAC_LRCK_c_c /* synthesis is_clock=1, SET_AS_NETWORK=DAC_LRCK_c_c */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(21[6:14])
    wire BCLK_SR /* synthesis is_clock=1, is_inv_clock=1, SET_AS_NETWORK=\I2SM/BCLK_SR */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(59[9:16])
    wire DAC_BCK_c_c /* synthesis is_clock=1, SET_AS_NETWORK=DAC_BCK_c_c */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(20[6:13])
    wire BCLK_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(48[9:22])
    wire BCLK_GATE_RELEASE /* synthesis is_clock=1, SET_AS_NETWORK=\I2SS/BCLK_GATE_RELEASE */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(58[9:26])
    wire WCLK_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(47[9:23])
    wire [23:0]DATA_OUT_SR_L;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(45[9:22])
    
    wire READY;
    wire [23:0]DATA_OUT_SR_R;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(46[9:22])
    wire [23:0]DATA_OUT_L_BUF;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(47[9:23])
    wire [23:0]DATA_OUT_SR_L_23__N_124;
    
    wire READY_FLAG, BIT_CTR_RST_N, DATA_EMPTY_N_184, BCLK_GATE, BIT_CTR_RST_N_N_182;
    wire [4:0]BIT_CTR;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(52[9:16])
    wire [4:0]n25;
    
    wire n2657, n2317;
    
    LUT4 DATA_T_I_0_4_lut (.A(DATA_OUT_SR_L[23]), .B(READY), .C(DATA_OUT_SR_R[23]), 
         .D(DAC_LRCK_c_c), .Z(DAC_DATA_c)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(224[10:28])
    defparam DATA_T_I_0_4_lut.init = 16'hc088;
    FD1S3IX DATA_OUT_SR_R__i11 (.D(DATA_OUT_SR_R[10]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i11.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i10 (.D(DATA_OUT_SR_R[9]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i10.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i9 (.D(DATA_OUT_SR_R[8]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i9.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i8 (.D(DATA_OUT_SR_R[7]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i8.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i7 (.D(DATA_OUT_SR_R[6]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i7.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i14_3_lut (.A(DATA_OUT_L_BUF[13]), .B(DATA_OUT_SR_L[12]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i14_3_lut.init = 16'hcaca;
    FD1S3IX DATA_OUT_SR_R__i6 (.D(DATA_OUT_SR_R[5]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i6.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i12_3_lut (.A(DATA_OUT_L_BUF[11]), .B(DATA_OUT_SR_L[10]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i12_3_lut.init = 16'hcaca;
    FD1S3IX DATA_OUT_SR_R__i5 (.D(DATA_OUT_SR_R[4]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i5.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i4 (.D(DATA_OUT_SR_R[3]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i4.GSR = "ENABLED";
    FD1S3AX WCLK_R_59 (.D(DAC_LRCK_c_c), .CK(DAC_BCK_c_c), .Q(WCLK_R)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(102[3] 107[10])
    defparam WCLK_R_59.GSR = "ENABLED";
    FD1S3AX WCLK_EDGE_60 (.D(WCLK_EDGE_N_123), .CK(DAC_BCK_c_c), .Q(WCLK_EDGE)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(102[3] 107[10])
    defparam WCLK_EDGE_60.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i3 (.D(DATA_OUT_SR_R[2]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i3.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i2 (.D(DATA_OUT_SR_R[1]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i2.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i1 (.D(DATA_OUT_SR_R[0]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i1.GSR = "ENABLED";
    FD1S3AX READY_FLAG_57 (.D(n2840), .CK(DAC_LRCK_c_c), .Q(READY_FLAG)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=223, LSE_RLINE=223 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(82[3] 94[10])
    defparam READY_FLAG_57.GSR = "ENABLED";
    FD1S3AX READY_T_83 (.D(READY_FLAG), .CK(DAC_LRCK_c_c), .Q(READY)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(89[3] 101[10])
    defparam READY_T_83.GSR = "ENABLED";
    FD1S3DX BIT_CTR_RST_N_87 (.D(DATA_EMPTY_N_184), .CK(BCLK_N_118), .CD(READY_FLAG_N_120), 
            .Q(BIT_CTR_RST_N)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(139[3] 151[10])
    defparam BIT_CTR_RST_N_87.GSR = "ENABLED";
    FD1S3DX BCLK_GATE_89 (.D(n2840), .CK(BCLK_GATE_RELEASE), .CD(BIT_CTR_RST_N_N_182), 
            .Q(BCLK_GATE)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(184[3] 192[10])
    defparam BCLK_GATE_89.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i0 (.D(DATA_OUT_SR_L[23]), .CK(BCLK_SR), .CD(WCLK_N_175), 
            .Q(DATA_OUT_SR_L[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i0.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i0 (.D(DATA_OUT_SR_R[23]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i0.GSR = "ENABLED";
    FD1S3DX BIT_CTR_503__i0 (.D(n25[0]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_182), 
            .Q(BIT_CTR[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_503__i0.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i13_3_lut (.A(DATA_OUT_L_BUF[12]), .B(DATA_OUT_SR_L[11]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i13_3_lut.init = 16'hcaca;
    LUT4 i1491_2_lut_rep_28 (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n2657)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1491_2_lut_rep_28.init = 16'h8888;
    LUT4 i1495_2_lut_3_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1495_2_lut_3_lut.init = 16'h7878;
    LUT4 i1502_2_lut_3_lut_4_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[3]), 
         .D(BIT_CTR[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1502_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX DATA_OUT_SR_L_i23 (.D(DATA_OUT_SR_L_23__N_124[23]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[23])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i23.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i10_3_lut (.A(DATA_OUT_L_BUF[9]), .B(DATA_OUT_SR_L[8]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i10_3_lut.init = 16'hcaca;
    FD1S3AX DATA_OUT_SR_L_i22 (.D(DATA_OUT_SR_L_23__N_124[22]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[22])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i22.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i21 (.D(DATA_OUT_SR_L_23__N_124[21]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[21])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i21.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i20 (.D(DATA_OUT_SR_L_23__N_124[20]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[20])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i20.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i19 (.D(DATA_OUT_SR_L_23__N_124[19]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[19])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i19.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i9_3_lut (.A(DATA_OUT_L_BUF[8]), .B(DATA_OUT_SR_L[7]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i8_3_lut (.A(DATA_OUT_L_BUF[7]), .B(DATA_OUT_SR_L[6]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i8_3_lut.init = 16'hcaca;
    FD1S3AX DATA_OUT_SR_L_i18 (.D(DATA_OUT_SR_L_23__N_124[18]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[18])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i18.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i7_3_lut (.A(DATA_OUT_L_BUF[6]), .B(DATA_OUT_SR_L[5]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i6_3_lut (.A(DATA_OUT_L_BUF[5]), .B(DATA_OUT_SR_L[4]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i5_3_lut (.A(DATA_OUT_L_BUF[4]), .B(DATA_OUT_SR_L[3]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i5_3_lut.init = 16'hcaca;
    FD1S3AX DATA_OUT_SR_L_i17 (.D(DATA_OUT_SR_L_23__N_124[17]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[17])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i17.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i16 (.D(DATA_OUT_SR_L_23__N_124[16]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i16.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i15 (.D(DATA_OUT_SR_L_23__N_124[15]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i15.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i4_3_lut (.A(DATA_OUT_L_BUF[3]), .B(DATA_OUT_SR_L[2]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i4_3_lut.init = 16'hcaca;
    FD1S3AX DATA_OUT_SR_L_i14 (.D(DATA_OUT_SR_L_23__N_124[14]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i14.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(BIT_CTR[4]), .B(BIT_CTR[3]), .C(n2317), .D(BIT_CTR[0]), 
         .Z(DATA_EMPTY_N_184)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hdfff;
    LUT4 i1674_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[2]), .Z(n2317)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1674_2_lut.init = 16'h8888;
    LUT4 BIT_CTR_RST_N_I_0_1_lut (.A(BIT_CTR_RST_N), .Z(BIT_CTR_RST_N_N_182)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(157[7:26])
    defparam BIT_CTR_RST_N_I_0_1_lut.init = 16'h5555;
    FD1S3AX DATA_OUT_SR_L_i13 (.D(DATA_OUT_SR_L_23__N_124[13]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i13.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i3_3_lut (.A(DATA_OUT_L_BUF[2]), .B(DATA_OUT_SR_L[1]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i2_3_lut (.A(DATA_OUT_L_BUF[1]), .B(DATA_OUT_SR_L[0]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i2_3_lut.init = 16'hcaca;
    FD1S3AX DATA_OUT_SR_L_i12 (.D(DATA_OUT_SR_L_23__N_124[12]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i12.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i11 (.D(DATA_OUT_SR_L_23__N_124[11]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i11.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i10 (.D(DATA_OUT_SR_L_23__N_124[10]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i10.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i9 (.D(DATA_OUT_SR_L_23__N_124[9]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i9.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i8 (.D(DATA_OUT_SR_L_23__N_124[8]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i8.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i7 (.D(DATA_OUT_SR_L_23__N_124[7]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i7.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i6 (.D(DATA_OUT_SR_L_23__N_124[6]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i6.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i5 (.D(DATA_OUT_SR_L_23__N_124[5]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i5.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i4 (.D(DATA_OUT_SR_L_23__N_124[4]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i4.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i3 (.D(DATA_OUT_SR_L_23__N_124[3]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i3.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i2 (.D(DATA_OUT_SR_L_23__N_124[2]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i2.GSR = "ENABLED";
    FD1S3AX DATA_OUT_SR_L_i1 (.D(DATA_OUT_SR_L_23__N_124[1]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(229[3] 237[10])
    defparam DATA_OUT_SR_L_i1.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i23 (.D(\DATA_IN_R_T[23] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[23])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i23.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i22 (.D(\DATA_IN_R_T[21] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[22])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i22.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i21 (.D(\DATA_IN_R_T[20] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[21])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i21.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i20 (.D(\DATA_IN_R_T[19] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[20])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i20.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i19 (.D(\DATA_IN_R_T[18] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[19])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i19.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i18 (.D(\DATA_IN_R_T[17] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[18])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i18.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i17 (.D(\DATA_IN_R_T[16] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[17])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i17.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i16 (.D(\DATA_IN_R_T[15] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i16.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i15 (.D(\DATA_IN_R_T[14] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i15.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i14 (.D(\DATA_IN_R_T[13] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i14.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i13 (.D(\DATA_IN_R_T[12] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i13.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i12 (.D(\DATA_IN_R_T[11] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i12.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i11 (.D(\DATA_IN_R_T[10] ), .CK(WCLK_N_175), 
            .CD(n1531), .Q(DATA_OUT_L_BUF[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i11.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i10 (.D(\DATA_IN_R_T[9] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i10.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i9 (.D(\DATA_IN_R_T[8] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i9.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i8 (.D(\DATA_IN_R_T[7] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i8.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i7 (.D(\DATA_IN_R_T[6] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i7.GSR = "ENABLED";
    LUT4 i1486_1_lut (.A(BIT_CTR[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1486_1_lut.init = 16'h5555;
    FD1S3IX DATA_OUT_L_BUF_i6 (.D(\DATA_IN_R_T[5] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i6.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i5 (.D(\DATA_IN_R_T[4] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i5.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i4 (.D(\DATA_IN_R_T[3] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i4.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i3 (.D(\DATA_IN_R_T[2] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i3.GSR = "ENABLED";
    FD1S3IX DATA_OUT_L_BUF_i2 (.D(\DATA_IN_R_T[1] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i2.GSR = "ENABLED";
    LUT4 i1509_3_lut_4_lut (.A(BIT_CTR[2]), .B(n2657), .C(BIT_CTR[3]), 
         .D(BIT_CTR[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1509_3_lut_4_lut.init = 16'h7f80;
    FD1S3IX DATA_OUT_SR_R__i13 (.D(DATA_OUT_SR_R[12]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i13.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i20_3_lut (.A(DATA_OUT_L_BUF[19]), .B(DATA_OUT_SR_L[18]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i20_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i19_3_lut (.A(DATA_OUT_L_BUF[18]), .B(DATA_OUT_SR_L[17]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i19_3_lut.init = 16'hcaca;
    FD1S3IX DATA_OUT_SR_R__i14 (.D(DATA_OUT_SR_R[13]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i14.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i15 (.D(DATA_OUT_SR_R[14]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i15.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i16 (.D(DATA_OUT_SR_R[15]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i16.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i17 (.D(DATA_OUT_SR_R[16]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[17])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i17.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i18 (.D(DATA_OUT_SR_R[17]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[18])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i18.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i19 (.D(DATA_OUT_SR_R[18]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[19])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i19.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i20 (.D(DATA_OUT_SR_R[19]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[20])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i20.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i21 (.D(DATA_OUT_SR_R[20]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[21])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i21.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i22 (.D(DATA_OUT_SR_R[21]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[22])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i22.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i23 (.D(DATA_OUT_SR_R[22]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[23])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i23.GSR = "ENABLED";
    FD1S3DX BIT_CTR_503__i1 (.D(n25[1]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_182), 
            .Q(BIT_CTR[1]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_503__i1.GSR = "ENABLED";
    FD1S3DX BIT_CTR_503__i2 (.D(n25[2]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_182), 
            .Q(BIT_CTR[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_503__i2.GSR = "ENABLED";
    FD1S3DX BIT_CTR_503__i3 (.D(n25[3]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_182), 
            .Q(BIT_CTR[3]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_503__i3.GSR = "ENABLED";
    FD1S3DX BIT_CTR_503__i4 (.D(n25[4]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_182), 
            .Q(BIT_CTR[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_503__i4.GSR = "ENABLED";
    LUT4 i1488_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1488_2_lut.init = 16'h6666;
    LUT4 DATA_OUT_SR_L_22__I_0_i18_3_lut (.A(DATA_OUT_L_BUF[17]), .B(DATA_OUT_SR_L[16]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i18_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i17_3_lut (.A(DATA_OUT_L_BUF[16]), .B(DATA_OUT_SR_L[15]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i17_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i24_3_lut (.A(DATA_OUT_L_BUF[23]), .B(DATA_OUT_SR_L[22]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i24_3_lut.init = 16'hcaca;
    FD1S3IX DATA_OUT_L_BUF_i1 (.D(\DATA_IN_R_T[0] ), .CK(WCLK_N_175), .CD(n1531), 
            .Q(DATA_OUT_L_BUF[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(200[3] 204[10])
    defparam DATA_OUT_L_BUF_i1.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R__i12 (.D(DATA_OUT_SR_R[11]), .CK(BCLK_SR), .CD(DAC_LRCK_c_c), 
            .Q(DATA_OUT_SR_R[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=235, LSE_RLINE=235 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(243[3] 251[10])
    defparam DATA_OUT_SR_R__i12.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i23_3_lut (.A(DATA_OUT_L_BUF[22]), .B(DATA_OUT_SR_L[21]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i23_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i16_3_lut (.A(DATA_OUT_L_BUF[15]), .B(DATA_OUT_SR_L[14]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i16_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i15_3_lut (.A(DATA_OUT_L_BUF[14]), .B(DATA_OUT_SR_L[13]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i15_3_lut.init = 16'hcaca;
    LUT4 READY_FLAG_I_0_1_lut (.A(READY_FLAG), .Z(READY_FLAG_N_120)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(115[7:23])
    defparam READY_FLAG_I_0_1_lut.init = 16'h5555;
    LUT4 i1793_2_lut (.A(DAC_BCK_c_c), .B(BCLK_GATE), .Z(BCLK_SR)) /* synthesis lut_function=(!(A (B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/std_1164.vhd(1013[30:45])
    defparam i1793_2_lut.init = 16'h7777;
    LUT4 DATA_OUT_SR_L_22__I_0_i11_3_lut (.A(DATA_OUT_L_BUF[10]), .B(DATA_OUT_SR_L[9]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i22_3_lut (.A(DATA_OUT_L_BUF[21]), .B(DATA_OUT_SR_L[20]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i22_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i21_3_lut (.A(DATA_OUT_L_BUF[20]), .B(DATA_OUT_SR_L[19]), 
         .C(DAC_LRCK_c_c), .Z(DATA_OUT_SR_L_23__N_124[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(231[4] 235[11])
    defparam DATA_OUT_SR_L_22__I_0_i21_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module input_handler
//

module input_handler (\SYS_CLK_TREE[14] , BTN_RIGHT_OUT_H, BTN_CLR, n2840, 
            BTN_RIGHT_IN_c);
    input \SYS_CLK_TREE[14] ;
    output BTN_RIGHT_OUT_H;
    input BTN_CLR;
    input n2840;
    input BTN_RIGHT_IN_c;
    
    wire \SYS_CLK_TREE[14]  /* synthesis is_clock=1, SET_AS_NETWORK=SYS_CLK_TREE[14] */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire IN_DEBOUNCE /* synthesis is_inv_clock=1, is_clock=1, SET_AS_NETWORK=\BTN1/IN_DEBOUNCE */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(22[9:20])
    wire [19:0]IN_BUTTON_SR;   // c:/fpga/projects/fxbox/src/input_handler.vhd(21[9:21])
    
    wire IN_BUTTON_N_302, n25, n38, n34, n26, n36, n30, n32, 
        n22;
    
    FD1S3AX IN_BUTTON_SR_i0 (.D(IN_BUTTON_N_302), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i0.GSR = "ENABLED";
    FD1S3DX OUT_BUTTON_T_17 (.D(n2840), .CK(IN_DEBOUNCE), .CD(BTN_CLR), 
            .Q(BTN_RIGHT_OUT_H)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(50[3] 54[10])
    defparam OUT_BUTTON_T_17.GSR = "ENABLED";
    LUT4 IN_BUTTON_I_0_1_lut (.A(BTN_RIGHT_IN_c), .Z(IN_BUTTON_N_302)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(40[70:83])
    defparam IN_BUTTON_I_0_1_lut.init = 16'h5555;
    LUT4 i19_4_lut (.A(n25), .B(n38), .C(n34), .D(n26), .Z(IN_DEBOUNCE)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(IN_BUTTON_SR[8]), .B(IN_BUTTON_SR[13]), .Z(n25)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(IN_BUTTON_SR[12]), .B(n36), .C(n30), .D(IN_BUTTON_SR[15]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(IN_BUTTON_SR[5]), .B(IN_BUTTON_SR[19]), .C(IN_BUTTON_SR[10]), 
         .D(IN_BUTTON_SR[4]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(IN_BUTTON_SR[17]), .B(IN_BUTTON_SR[1]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i16_4_lut (.A(IN_BUTTON_SR[7]), .B(n32), .C(n22), .D(IN_BUTTON_SR[18]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i10_2_lut (.A(IN_BUTTON_SR[2]), .B(IN_BUTTON_SR[11]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i12_4_lut (.A(IN_BUTTON_SR[6]), .B(IN_BUTTON_SR[9]), .C(IN_BUTTON_SR[0]), 
         .D(IN_BUTTON_SR[14]), .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(IN_BUTTON_SR[16]), .B(IN_BUTTON_SR[3]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(30[26:41])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3AX IN_BUTTON_SR_i1 (.D(IN_BUTTON_SR[0]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i1.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i2 (.D(IN_BUTTON_SR[1]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i2.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i3 (.D(IN_BUTTON_SR[2]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i3.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i4 (.D(IN_BUTTON_SR[3]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i4.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i5 (.D(IN_BUTTON_SR[4]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i5.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i6 (.D(IN_BUTTON_SR[5]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i6.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i7 (.D(IN_BUTTON_SR[6]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i7.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i8 (.D(IN_BUTTON_SR[7]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i8.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i9 (.D(IN_BUTTON_SR[8]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i9.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i10 (.D(IN_BUTTON_SR[9]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i10.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i11 (.D(IN_BUTTON_SR[10]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i11.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i12 (.D(IN_BUTTON_SR[11]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i12.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i13 (.D(IN_BUTTON_SR[12]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i13.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i14 (.D(IN_BUTTON_SR[13]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i14.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i15 (.D(IN_BUTTON_SR[14]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i15.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i16 (.D(IN_BUTTON_SR[15]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i16.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i17 (.D(IN_BUTTON_SR[16]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[17])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i17.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i18 (.D(IN_BUTTON_SR[17]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[18])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i18.GSR = "ENABLED";
    FD1S3AX IN_BUTTON_SR_i19 (.D(IN_BUTTON_SR[18]), .CK(\SYS_CLK_TREE[14] ), 
            .Q(IN_BUTTON_SR[19])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=21, LSE_LLINE=263, LSE_RLINE=263 */ ;   // c:/fpga/projects/fxbox/src/input_handler.vhd(39[3] 41[10])
    defparam IN_BUTTON_SR_i19.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module dac_controller
//

module dac_controller (\SYS_CLK_TREE[5] , n2840, DAC_RST_N_c, DAC_I2C_SDA_c, 
            DAC_I2C_SCL_c);
    input \SYS_CLK_TREE[5] ;
    input n2840;
    input DAC_RST_N_c;
    output DAC_I2C_SDA_c;
    output DAC_I2C_SCL_c;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire DAC_DGOOD /* synthesis is_clock=1, SET_AS_NETWORK=\DAC0/DAC_DGOOD */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(37[9:18])
    wire [44:0]RST_WAIT_SR;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(38[9:20])
    
    wire n2654;
    wire [3:0]PS_I2CM_3__N_85;
    
    wire RUN_I2CM_N_31, READY_I2CM;
    
    FD1S3DX RST_WAIT_SR_i0 (.D(n2840), .CK(\SYS_CLK_TREE[5] ), .CD(n2654), 
            .Q(RST_WAIT_SR[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i0.GSR = "ENABLED";
    FD1S3DX RUN_I2CM_18 (.D(n2840), .CK(DAC_DGOOD), .CD(RUN_I2CM_N_31), 
            .Q(PS_I2CM_3__N_85[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(106[3] 114[10])
    defparam RUN_I2CM_18.GSR = "ENABLED";
    LUT4 MRST_N_I_0_1_lut_rep_25 (.A(DAC_RST_N_c), .Z(n2654)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(100[25:37])
    defparam MRST_N_I_0_1_lut_rep_25.init = 16'h5555;
    LUT4 MRST_N_N_30_I_0_2_lut_2_lut (.A(DAC_RST_N_c), .B(READY_I2CM), .Z(RUN_I2CM_N_31)) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(100[25:37])
    defparam MRST_N_N_30_I_0_2_lut_2_lut.init = 16'hdddd;
    FD1S3DX RST_WAIT_SR_i44 (.D(RST_WAIT_SR[43]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(DAC_DGOOD)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i44.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i43 (.D(RST_WAIT_SR[42]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[43])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i43.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i42 (.D(RST_WAIT_SR[41]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[42])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i42.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i41 (.D(RST_WAIT_SR[40]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[41])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i41.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i40 (.D(RST_WAIT_SR[39]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[40])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i40.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i39 (.D(RST_WAIT_SR[38]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[39])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i39.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i38 (.D(RST_WAIT_SR[37]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[38])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i38.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i37 (.D(RST_WAIT_SR[36]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[37])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i37.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i36 (.D(RST_WAIT_SR[35]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[36])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i36.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i35 (.D(RST_WAIT_SR[34]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[35])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i35.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i34 (.D(RST_WAIT_SR[33]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[34])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i34.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i33 (.D(RST_WAIT_SR[32]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[33])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i33.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i32 (.D(RST_WAIT_SR[31]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[32])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i32.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i31 (.D(RST_WAIT_SR[30]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[31])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i31.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i30 (.D(RST_WAIT_SR[29]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[30])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i30.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i29 (.D(RST_WAIT_SR[28]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[29])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i29.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i28 (.D(RST_WAIT_SR[27]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[28])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i28.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i27 (.D(RST_WAIT_SR[26]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[27])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i27.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i26 (.D(RST_WAIT_SR[25]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[26])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i26.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i25 (.D(RST_WAIT_SR[24]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[25])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i25.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i24 (.D(RST_WAIT_SR[23]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[24])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i24.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i23 (.D(RST_WAIT_SR[22]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[23])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i23.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i22 (.D(RST_WAIT_SR[21]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[22])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i22.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i21 (.D(RST_WAIT_SR[20]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[21])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i21.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i20 (.D(RST_WAIT_SR[19]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[20])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i20.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i19 (.D(RST_WAIT_SR[18]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[19])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i19.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i18 (.D(RST_WAIT_SR[17]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[18])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i18.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i17 (.D(RST_WAIT_SR[16]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[17])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i17.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i16 (.D(RST_WAIT_SR[15]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i16.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i15 (.D(RST_WAIT_SR[14]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i15.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i14 (.D(RST_WAIT_SR[13]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i14.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i13 (.D(RST_WAIT_SR[12]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i13.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i12 (.D(RST_WAIT_SR[11]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i12.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i11 (.D(RST_WAIT_SR[10]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i11.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i10 (.D(RST_WAIT_SR[9]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i10.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i9 (.D(RST_WAIT_SR[8]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i9.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i8 (.D(RST_WAIT_SR[7]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i8.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i7 (.D(RST_WAIT_SR[6]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i7.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i6 (.D(RST_WAIT_SR[5]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i6.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i5 (.D(RST_WAIT_SR[4]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i5.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i4 (.D(RST_WAIT_SR[3]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i4.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i3 (.D(RST_WAIT_SR[2]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i3.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i2 (.D(RST_WAIT_SR[1]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i2.GSR = "ENABLED";
    FD1S3DX RST_WAIT_SR_i1 (.D(RST_WAIT_SR[0]), .CK(\SYS_CLK_TREE[5] ), 
            .CD(n2654), .Q(RST_WAIT_SR[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=22, LSE_LLINE=215, LSE_RLINE=215 */ ;   // c:/fpga/projects/fxbox/src/dac_controller.vhd(86[3] 94[10])
    defparam RST_WAIT_SR_i1.GSR = "ENABLED";
    i2c_master_U1 I2CM1 (.\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ), .READY_I2CM(READY_I2CM), 
            .DAC_I2C_SDA_c(DAC_I2C_SDA_c), .\PS_I2CM_3__N_85[0] (PS_I2CM_3__N_85[0]), 
            .DAC_I2C_SCL_c(DAC_I2C_SCL_c));   // c:/fpga/projects/fxbox/src/dac_controller.vhd(55[10:20])
    
endmodule
//
// Verilog Description of module i2c_master_U1
//

module i2c_master_U1 (\SYS_CLK_TREE[5] , READY_I2CM, DAC_I2C_SDA_c, \PS_I2CM_3__N_85[0] , 
            DAC_I2C_SCL_c);
    input \SYS_CLK_TREE[5] ;
    output READY_I2CM;
    output DAC_I2C_SDA_c;
    input \PS_I2CM_3__N_85[0] ;
    output DAC_I2C_SCL_c;
    
    wire SYS_CLK_TREE_5_enable_4 /* synthesis is_clock=1, SET_AS_NETWORK=SYS_CLK_TREE[5]_enable_4 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire [4:0]CLOCK_CT;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(76[9:17])
    wire [3:0]PS_I2CM_3__N_81;
    wire [4:0]D_IN;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(78[9:13])
    wire [4:0]D_IN_4__N_32;
    
    wire LOAD, LOAD_N_92, SCL_EN, SCL_EN_N_93;
    wire [15:0]n699;
    
    wire SDA_R_N_94, n1263;
    wire [2:0]n955;
    
    wire n1289, n1500, n1288, n2651, n1749, n6, n6_adj_304, n2557, 
        n2556, n2327, n2555, n1262, n1258;
    wire [3:0]PS_I2CM_3__N_57;
    
    wire n1238;
    wire [2:0]n954;
    
    LUT4 i1070_2_lut_rep_24 (.A(CLOCK_CT[0]), .B(CLOCK_CT[1]), .Z(SYS_CLK_TREE_5_enable_4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(127[2] 129[22])
    defparam i1070_2_lut_rep_24.init = 16'h2222;
    LUT4 i47_1_lut_2_lut (.A(CLOCK_CT[0]), .B(CLOCK_CT[1]), .Z(PS_I2CM_3__N_81[0])) /* synthesis lut_function=((B)+!A) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(127[2] 129[22])
    defparam i47_1_lut_2_lut.init = 16'hdddd;
    FD1S3AX D_IN_i1 (.D(D_IN_4__N_32[2]), .CK(\SYS_CLK_TREE[5] ), .Q(D_IN[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=55, LSE_RLINE=55 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(240[3] 251[10])
    defparam D_IN_i1.GSR = "ENABLED";
    FD1S3AX LOAD_102 (.D(LOAD_N_92), .CK(\SYS_CLK_TREE[5] ), .Q(LOAD)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=55, LSE_RLINE=55 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(205[3] 218[10])
    defparam LOAD_102.GSR = "ENABLED";
    FD1S3AX SCL_EN_105 (.D(SCL_EN_N_93), .CK(\SYS_CLK_TREE[5] ), .Q(SCL_EN)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=55, LSE_RLINE=55 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(260[3] 276[10])
    defparam SCL_EN_105.GSR = "ENABLED";
    FD1S3JX READY_DATA_107 (.D(n699[9]), .CK(\SYS_CLK_TREE[5] ), .PD(n699[7]), 
            .Q(READY_I2CM)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=55, LSE_RLINE=55 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(303[3] 313[10])
    defparam READY_DATA_107.GSR = "ENABLED";
    FD1S3AX SDA_R_108 (.D(SDA_R_N_94), .CK(SYS_CLK_TREE_5_enable_4), .Q(DAC_I2C_SDA_c)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=55, LSE_RLINE=55 */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(322[3] 347[10])
    defparam SDA_R_108.GSR = "ENABLED";
    FD1S3JX PS_I2CM_FSM_i1 (.D(n1263), .CK(\SYS_CLK_TREE[5] ), .PD(n699[12]), 
            .Q(n699[0]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i1.GSR = "ENABLED";
    LUT4 i642_3_lut (.A(n955[0]), .B(n955[2]), .C(n699[4]), .Z(n1289)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(324[4] 345[13])
    defparam i642_3_lut.init = 16'hcaca;
    LUT4 i641_4_lut (.A(n1500), .B(n955[1]), .C(n699[6]), .D(n699[4]), 
         .Z(n1288)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(324[4] 345[13])
    defparam i641_4_lut.init = 16'hccca;
    LUT4 i616_2_lut (.A(n699[0]), .B(\PS_I2CM_3__N_85[0] ), .Z(n1263)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i616_2_lut.init = 16'h2222;
    FD1S3IX ADDR_BIT_R_96_i0 (.D(n1749), .CK(\SYS_CLK_TREE[5] ), .CD(n2651), 
            .Q(n955[0]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam ADDR_BIT_R_96_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(CLOCK_CT[1]), .B(CLOCK_CT[4]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1068_2_lut (.A(CLOCK_CT[1]), .B(SCL_EN), .Z(DAC_I2C_SCL_c)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(115[2] 117[32])
    defparam i1068_2_lut.init = 16'hbbbb;
    LUT4 i20_2_lut (.A(CLOCK_CT[4]), .B(CLOCK_CT[2]), .Z(n6_adj_304)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam i20_2_lut.init = 16'h6666;
    PFUMX i1915 (.BLUT(n2557), .ALUT(n2556), .C0(D_IN_4__N_32[2]), .Z(LOAD_N_92));
    LUT4 n715_bdd_2_lut_2026 (.A(n699[0]), .B(n699[12]), .Z(n2557)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n715_bdd_2_lut_2026.init = 16'heeee;
    LUT4 i1809_2_lut (.A(n699[4]), .B(n699[8]), .Z(n2327)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(324[4] 345[13])
    defparam i1809_2_lut.init = 16'heeee;
    LUT4 i3_4_lut (.A(n699[0]), .B(n699[1]), .C(n699[11]), .D(n699[12]), 
         .Z(n1500)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    PFUMX mux_465_i1 (.BLUT(n1288), .ALUT(n1289), .C0(n2327), .Z(SDA_R_N_94));
    LUT4 i1812_2_lut (.A(n699[2]), .B(n1500), .Z(SCL_EN_N_93)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1812_2_lut.init = 16'h1111;
    LUT4 i1818_2_lut (.A(CLOCK_CT[4]), .B(CLOCK_CT[2]), .Z(n1749)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1818_2_lut.init = 16'h1111;
    LUT4 n2555_bdd_2_lut (.A(n2555), .B(CLOCK_CT[3]), .Z(n2556)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n2555_bdd_2_lut.init = 16'h2222;
    LUT4 CLOCK_CT_3__bdd_4_lut (.A(CLOCK_CT[4]), .B(CLOCK_CT[2]), .C(CLOCK_CT[0]), 
         .D(CLOCK_CT[1]), .Z(n2555)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam CLOCK_CT_3__bdd_4_lut.init = 16'h0010;
    FD1S3AX PS_I2CM_FSM_i2 (.D(n1262), .CK(\SYS_CLK_TREE[5] ), .Q(n699[1]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i2.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i3 (.D(n699[1]), .SP(SYS_CLK_TREE_5_enable_4), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n699[2]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i3.GSR = "ENABLED";
    FD1S3AX PS_I2CM_FSM_i4 (.D(n1258), .CK(\SYS_CLK_TREE[5] ), .Q(n699[3]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i4.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i5 (.D(n699[3]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n699[4]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i5.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i6 (.D(n699[4]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n699[5]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i6.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i7 (.D(n699[5]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n699[6]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i7.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i8 (.D(n699[6]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n699[7]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i8.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i9 (.D(n699[7]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n699[8]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i9.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i10 (.D(n699[8]), .SP(PS_I2CM_3__N_57[3]), .CK(\SYS_CLK_TREE[5] ), 
            .Q(n699[9]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i10.GSR = "ENABLED";
    FD1S3AX PS_I2CM_FSM_i11 (.D(n1238), .CK(\SYS_CLK_TREE[5] ), .Q(n699[10]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i11.GSR = "ENABLED";
    FD1P3AX PS_I2CM_FSM_i12 (.D(n699[10]), .SP(SYS_CLK_TREE_5_enable_4), 
            .CK(\SYS_CLK_TREE[5] ), .Q(n699[11]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i12.GSR = "ENABLED";
    FD1S3IX PS_I2CM_FSM_i13 (.D(n699[11]), .CK(\SYS_CLK_TREE[5] ), .CD(PS_I2CM_3__N_81[0]), 
            .Q(n699[12]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam PS_I2CM_FSM_i13.GSR = "ENABLED";
    FD1S3IX ADDR_BIT_R_96_i1 (.D(n6_adj_304), .CK(\SYS_CLK_TREE[5] ), .CD(n2651), 
            .Q(n955[1]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam ADDR_BIT_R_96_i1.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(n699[5]), .B(n699[7]), .C(n699[9]), .Z(D_IN_4__N_32[2])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    FD1S3AX ADDR_BIT_R_96_i2 (.D(n954[2]), .CK(\SYS_CLK_TREE[5] ), .Q(n955[2]));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(153[30:62])
    defparam ADDR_BIT_R_96_i2.GSR = "ENABLED";
    LUT4 i591_4_lut (.A(n699[10]), .B(PS_I2CM_3__N_57[3]), .C(SYS_CLK_TREE_5_enable_4), 
         .D(n699[9]), .Z(n1238)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i591_4_lut.init = 16'hce0a;
    LUT4 i524_1_lut_rep_22 (.A(CLOCK_CT[3]), .Z(n2651)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(132[25:32])
    defparam i524_1_lut_rep_22.init = 16'h5555;
    LUT4 i615_4_lut (.A(n699[1]), .B(\PS_I2CM_3__N_85[0] ), .C(SYS_CLK_TREE_5_enable_4), 
         .D(n699[0]), .Z(n1262)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i615_4_lut.init = 16'hce0a;
    LUT4 i4_4_lut (.A(CLOCK_CT[3]), .B(CLOCK_CT[2]), .C(CLOCK_CT[0]), 
         .D(n6), .Z(PS_I2CM_3__N_57[3])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i611_4_lut (.A(n699[3]), .B(SYS_CLK_TREE_5_enable_4), .C(PS_I2CM_3__N_57[3]), 
         .D(n699[2]), .Z(n1258)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(358[4] 448[13])
    defparam i611_4_lut.init = 16'hce0a;
    LUT4 i13_4_lut_3_lut (.A(CLOCK_CT[3]), .B(CLOCK_CT[4]), .C(CLOCK_CT[2]), 
         .Z(n954[2])) /* synthesis lut_function=(!(A (B+!(C))+!A (C))) */ ;   // c:/fpga/projects/fxbox/src/i2c_master.vhd(132[25:32])
    defparam i13_4_lut_3_lut.init = 16'h2525;
    \clock_tree(5)_U0  CT0 (.CLOCK_CT({CLOCK_CT}), .\D_IN[2] (D_IN[2]), 
            .LOAD(LOAD), .\SYS_CLK_TREE[5] (\SYS_CLK_TREE[5] ));   // c:/fpga/projects/fxbox/src/i2c_master.vhd(104[8:18])
    
endmodule
//
// Verilog Description of module \clock_tree(5)_U0 
//

module \clock_tree(5)_U0  (CLOCK_CT, \D_IN[2] , LOAD, \SYS_CLK_TREE[5] );
    output [4:0]CLOCK_CT;
    input \D_IN[2] ;
    input LOAD;
    input \SYS_CLK_TREE[5] ;
    
    wire \SYS_CLK_TREE[5]  /* synthesis SET_AS_NETWORK=SYS_CLK_TREE[5], is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/box_top.vhd(141[9:21])
    wire [4:0]n32;
    
    wire n2656;
    wire [4:0]n25;
    
    LUT4 CLOCK_R_505_mux_6_i1_3_lut (.A(CLOCK_CT[0]), .B(\D_IN[2] ), .C(LOAD), 
         .Z(n32[0])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_505_mux_6_i1_3_lut.init = 16'hc5c5;
    FD1S3AX CLOCK_R_505__i0 (.D(n32[0]), .CK(\SYS_CLK_TREE[5] ), .Q(CLOCK_CT[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_505__i0.GSR = "ENABLED";
    LUT4 i1527_2_lut_rep_27 (.A(CLOCK_CT[1]), .B(CLOCK_CT[0]), .Z(n2656)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1527_2_lut_rep_27.init = 16'h8888;
    LUT4 i1538_2_lut_3_lut_4_lut (.A(CLOCK_CT[1]), .B(CLOCK_CT[0]), .C(CLOCK_CT[3]), 
         .D(CLOCK_CT[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1538_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX CLOCK_R_505__i1 (.D(n32[1]), .CK(\SYS_CLK_TREE[5] ), .Q(CLOCK_CT[1]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_505__i1.GSR = "ENABLED";
    FD1S3AX CLOCK_R_505__i2 (.D(n32[2]), .CK(\SYS_CLK_TREE[5] ), .Q(CLOCK_CT[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_505__i2.GSR = "ENABLED";
    FD1S3JX CLOCK_R_505__i3 (.D(n25[3]), .CK(\SYS_CLK_TREE[5] ), .PD(LOAD), 
            .Q(CLOCK_CT[3]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_505__i3.GSR = "ENABLED";
    FD1S3JX CLOCK_R_505__i4 (.D(n25[4]), .CK(\SYS_CLK_TREE[5] ), .PD(LOAD), 
            .Q(CLOCK_CT[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_505__i4.GSR = "ENABLED";
    LUT4 CLOCK_R_505_mux_6_i3_4_lut (.A(CLOCK_CT[2]), .B(\D_IN[2] ), .C(LOAD), 
         .D(n2656), .Z(n32[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_505_mux_6_i3_4_lut.init = 16'hc5ca;
    LUT4 CLOCK_R_505_mux_6_i2_4_lut (.A(CLOCK_CT[1]), .B(\D_IN[2] ), .C(LOAD), 
         .D(CLOCK_CT[0]), .Z(n32[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLOCK_R_505_mux_6_i2_4_lut.init = 16'hc5ca;
    LUT4 i1545_3_lut_4_lut (.A(CLOCK_CT[2]), .B(n2656), .C(CLOCK_CT[3]), 
         .D(CLOCK_CT[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i1545_3_lut_4_lut.init = 16'h7f80;
    
endmodule
