// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Fri Sep 28 21:48:23 2018
//
// Verilog Description of module i2s_loopback
//

module i2s_loopback (WCLK_OUT, BCLK_OUT, DATA_OUT, WCLK_IN, BCLK_IN, 
            DATA_IN, LED_L, LED_R, CLK_INP, RESET);   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(11[8:20])
    output WCLK_OUT;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(12[9:17])
    output BCLK_OUT;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(13[4:12])
    output DATA_OUT;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(14[4:12])
    input WCLK_IN;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(15[4:11])
    input BCLK_IN;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(16[4:11])
    input DATA_IN;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(17[4:11])
    output LED_L;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(18[4:9])
    output LED_R;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(19[4:9])
    output CLK_INP;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(20[4:11])
    input RESET;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(21[4:9])
    
    wire WCLK_OUT_c_6 /* synthesis is_clock=1, SET_AS_NETWORK=WCLK_OUT_c_6 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(12[9:17])
    wire BCLK_OUT_c /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_OUT_c */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(13[4:12])
    wire WCLK_IN_c /* synthesis is_clock=1, SET_AS_NETWORK=WCLK_IN_c */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(15[4:11])
    wire BCLK_IN_c /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_IN_c */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(16[4:11])
    wire CLK_INP_c /* synthesis is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(20[4:11])
    wire BCLK_OUT_N_11 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(85[9:17])
    wire BCLK_GATE_RELEASE /* synthesis is_clock=1, SET_AS_NETWORK=\I2SM/BCLK_GATE_RELEASE */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(62[9:26])
    wire BCLK_GATE_RELEASE_adj_113 /* synthesis is_clock=1, SET_AS_NETWORK=\I2SS/BCLK_GATE_RELEASE */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(57[9:26])
    wire BCLK_N_93 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(48[9:22])
    
    wire GND_net, VCC_net, DATA_OUT_c, DATA_IN_c, LED_L_c, LED_R_c, 
        RESET_c;
    wire [23:0]DATA_IN_L;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(78[9:18])
    wire [23:0]DATA_IN_R;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(78[20:29])
    
    wire PLL_LOCK, n6, n5, n4, n3, n2, PLL_LOCK_N_9, n23, n22, 
        n21, n20, n19, n18, n17, n36, n37, n38, n39, n40, 
        n316, WCLK_EDGE, n35, n34, n7, n6_adj_99, n5_adj_100, 
        n4_adj_101, n3_adj_102, n2_adj_103, n17_adj_104, n16, n15, 
        n14, n532, n524, n13, n518, MRST_N_N_81, READY_FLAG_N_79, 
        n16_adj_105, n15_adj_106, n14_adj_107, n13_adj_108, n12, n38_adj_109, 
        n28, n26, n355, n353, n24, n20_adj_110, n16_adj_111, WCLK_EDGE_adj_112, 
        n477, n468, n469, n40_adj_114, n39_adj_115, n38_adj_116, 
        n37_adj_117, n36_adj_118, n35_adj_119, n34_adj_120, n33, n32, 
        n31, n30, n29, n28_adj_121, n27, n26_adj_122, n25, n24_adj_123, 
        n23_adj_124, n22_adj_125, n21_adj_126, n20_adj_127, n19_adj_128, 
        n18_adj_129, n17_adj_130, n16_adj_131, n15_adj_132, n14_adj_133, 
        n13_adj_134, n12_adj_135, n11, n10, n9, n8, n7_adj_136, 
        n6_adj_137, n5_adj_138, n4_adj_139, n3_adj_140, n2_adj_141, 
        n499, n631, n467, n40_adj_142, n39_adj_143, n37_adj_144, 
        n36_adj_145, n35_adj_146, n34_adj_147, n33_adj_148, n32_adj_149, 
        n31_adj_150, n30_adj_151, n29_adj_152, n28_adj_153, n27_adj_154, 
        n26_adj_155, n25_adj_156, n24_adj_157, READY_FLAG_N_95, n11_adj_158, 
        n10_adj_159, n9_adj_160, n8_adj_161, n7_adj_162;
    
    VHI i2 (.Z(VCC_net));
    OSCH OSC0 (.STDBY(GND_net), .OSC(CLK_INP_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSC0.NOM_FREQ = "7.00";
    \i2s_slave(24,128,2)  I2SS (.DATA_IN_L({DATA_IN_L}), .DATA_IN_c(DATA_IN_c), 
            .BCLK_IN_c(BCLK_IN_c), .WCLK_IN_c(WCLK_IN_c), .WCLK_EDGE(WCLK_EDGE_adj_112), 
            .BCLK_N_93(BCLK_N_93), .READY_FLAG_N_95(READY_FLAG_N_95), .n168({BCLK_GATE_RELEASE_adj_113}), 
            .n631(n631), .DATA_IN_R({DATA_IN_R}));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(112[8:17])
    IB WCLK_IN_pad (.I(WCLK_IN), .O(WCLK_IN_c));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(15[4:11])
    GSR GSR_INST (.GSR(RESET_c)) /* synthesis syn_black_box=true, syn_noprune=1, syn_instantiated=1 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(89[9:12])
    LUT4 i1_2_lut (.A(DATA_IN_L[23]), .B(DATA_IN_L[7]), .Z(n16_adj_111)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i140_1_lut (.A(WCLK_OUT_c_6), .Z(n316)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i140_1_lut.init = 16'h5555;
    OB CLK_INP_pad (.I(CLK_INP_c), .O(CLK_INP));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(20[4:11])
    OB LED_R_pad (.I(LED_R_c), .O(LED_R));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(19[4:9])
    LUT4 i11_4_lut (.A(DATA_IN_L[17]), .B(DATA_IN_L[19]), .C(DATA_IN_L[5]), 
         .D(DATA_IN_L[9]), .Z(n26)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'h8000;
    LUT4 i5_2_lut (.A(DATA_IN_L[15]), .B(DATA_IN_L[3]), .Z(n20_adj_110)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    FD1S3DX BIT_DELAY_SR__0__i1 (.D(WCLK_EDGE), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n40_adj_114));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i1.GSR = "ENABLED";
    LUT4 PLL_LOCK_I_0_1_lut (.A(PLL_LOCK), .Z(PLL_LOCK_N_9)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(138[7:21])
    defparam PLL_LOCK_I_0_1_lut.init = 16'h5555;
    CCU2D CLK_TREE_57_add_4_7 (.A0(n2_adj_103), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(WCLK_OUT_c_6), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n469), .S0(n35), .S1(n34));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57_add_4_7.INIT0 = 16'hfaaa;
    defparam CLK_TREE_57_add_4_7.INIT1 = 16'hfaaa;
    defparam CLK_TREE_57_add_4_7.INJECT1_0 = "NO";
    defparam CLK_TREE_57_add_4_7.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(n17_adj_104), .B(DATA_IN_R[13]), .C(n16), .D(n532), 
         .Z(n499)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(154[20:31])
    defparam i9_4_lut.init = 16'hfeff;
    OB LED_L_pad (.I(LED_L_c), .O(LED_L));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(18[4:9])
    OB DATA_OUT_pad (.I(DATA_OUT_c), .O(DATA_OUT));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(14[4:12])
    OB BCLK_OUT_pad (.I(BCLK_OUT_c), .O(BCLK_OUT));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(13[4:12])
    OB WCLK_OUT_pad (.I(WCLK_OUT_c_6), .O(WCLK_OUT));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(12[9:17])
    CCU2D CLK_TREE_57_add_4_3 (.A0(n6_adj_99), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n5_adj_100), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n467), .COUT(n468), .S0(n39), .S1(n38));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57_add_4_3.INIT0 = 16'hfaaa;
    defparam CLK_TREE_57_add_4_3.INIT1 = 16'hfaaa;
    defparam CLK_TREE_57_add_4_3.INJECT1_0 = "NO";
    defparam CLK_TREE_57_add_4_3.INJECT1_1 = "NO";
    FD1S3DX BIT_DELAY_SR__1__i3 (.D(n39_adj_143), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n38_adj_109));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i3.GSR = "ENABLED";
    LUT4 i175_2_lut (.A(DATA_IN_R[10]), .B(DATA_IN_R[8]), .Z(n353)) /* synthesis lut_function=(A (B)) */ ;
    defparam i175_2_lut.init = 16'h8888;
    FD1S3DX CLK_TREE_57__i0 (.D(n40), .CK(BCLK_OUT_N_11), .CD(PLL_LOCK_N_9), 
            .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57__i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n15), .B(n477), .C(n13), .D(n14), .Z(LED_L_c)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(150[20:31])
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i6_4_lut (.A(DATA_IN_L[10]), .B(DATA_IN_L[12]), .C(DATA_IN_L[14]), 
         .D(DATA_IN_L[22]), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(150[20:31])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 MRST_N_I_0_1_lut (.A(RESET_c), .Z(MRST_N_N_81)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(84[7:19])
    defparam MRST_N_I_0_1_lut.init = 16'h5555;
    INV i401 (.A(BCLK_IN_c), .Z(BCLK_N_93));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(16[4:11])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i5_3_lut (.A(DATA_IN_L[2]), .B(DATA_IN_L[16]), .C(DATA_IN_L[20]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(150[20:31])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i330_4_lut (.A(DATA_IN_R[11]), .B(DATA_IN_R[4]), .C(DATA_IN_R[23]), 
         .D(DATA_IN_R[2]), .Z(n518)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i330_4_lut.init = 16'h8000;
    LUT4 i177_2_lut (.A(DATA_IN_R[6]), .B(DATA_IN_R[3]), .Z(n355)) /* synthesis lut_function=(A (B)) */ ;
    defparam i177_2_lut.init = 16'h8888;
    IB BCLK_IN_pad (.I(BCLK_IN), .O(BCLK_IN_c));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(16[4:11])
    FD1S3DX BIT_DELAY_SR__1__i4 (.D(n38_adj_109), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n37_adj_144));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i4.GSR = "ENABLED";
    LUT4 i13_4_lut (.A(DATA_IN_L[4]), .B(n26), .C(n20_adj_110), .D(DATA_IN_L[13]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    sclk_pll PLL0 (.BCLK_OUT_N_11(BCLK_OUT_N_11), .BCLK_OUT_c(BCLK_OUT_c), 
            .CLK_INP_c(CLK_INP_c), .MRST_N_N_81(MRST_N_N_81), .VCC_net(VCC_net), 
            .PLL_LOCK(PLL_LOCK), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(96[9:17])
    FD1S3DX BIT_DELAY_SR__1__i40 (.D(n2), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(BCLK_GATE_RELEASE_adj_113));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i40.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i39 (.D(n3), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n2));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i39.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i38 (.D(n4), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n3));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i38.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i37 (.D(n5), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n4));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i37.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i36 (.D(n6), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n5));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i36.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i35 (.D(n7_adj_162), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n6));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i35.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i34 (.D(n8_adj_161), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n7_adj_162));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i34.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i33 (.D(n9_adj_160), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n8_adj_161));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i33.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i32 (.D(n10_adj_159), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n9_adj_160));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i32.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i31 (.D(n11_adj_158), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n10_adj_159));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i31.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i30 (.D(n12), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n11_adj_158));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i30.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i29 (.D(n13_adj_108), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n12));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i29.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i28 (.D(n14_adj_107), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n13_adj_108));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i28.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i27 (.D(n15_adj_106), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n14_adj_107));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i27.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i26 (.D(n16_adj_105), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n15_adj_106));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i26.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i25 (.D(n17), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n16_adj_105));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i25.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i24 (.D(n18), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n17));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i24.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i23 (.D(n19), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n18));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i23.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i22 (.D(n20), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n19));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i22.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i21 (.D(n21), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n20));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i21.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i20 (.D(n22), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n21));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i20.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i19 (.D(n23), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n22));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i19.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i18 (.D(n24_adj_157), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n23));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i18.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i17 (.D(n25_adj_156), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n24_adj_157));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i17.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i16 (.D(n26_adj_155), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n25_adj_156));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i16.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i15 (.D(n27_adj_154), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n26_adj_155));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i15.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i14 (.D(n28_adj_153), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n27_adj_154));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i14.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i13 (.D(n29_adj_152), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n28_adj_153));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i13.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i12 (.D(n30_adj_151), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n29_adj_152));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i12.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i11 (.D(n31_adj_150), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n30_adj_151));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i11.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i10 (.D(n32_adj_149), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n31_adj_150));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i10.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i9 (.D(n33_adj_148), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n32_adj_149));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i9.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i8 (.D(n34_adj_147), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n33_adj_148));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i8.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i7 (.D(n35_adj_146), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n34_adj_147));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i7.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i6 (.D(n36_adj_145), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n35_adj_146));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i6.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i5 (.D(n37_adj_144), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n36_adj_145));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i5.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__1__i2 (.D(n40_adj_142), .CK(BCLK_IN_c), .CD(READY_FLAG_N_95), 
            .Q(n39_adj_143));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i2.GSR = "ENABLED";
    IB DATA_IN_pad (.I(DATA_IN), .O(DATA_IN_c));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(17[4:11])
    IB RESET_pad (.I(RESET), .O(RESET_c));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(21[4:9])
    FD1S3DX BIT_DELAY_SR__1__i1 (.D(WCLK_EDGE_adj_112), .CK(BCLK_IN_c), 
            .CD(READY_FLAG_N_95), .Q(n40_adj_142));   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[3] 118[10])
    defparam BIT_DELAY_SR__1__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_2 (.A(n353), .B(n499), .C(n518), .D(n355), .Z(LED_R_c)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(154[20:31])
    defparam i1_4_lut_adj_2.init = 16'hdfff;
    LUT4 i7_4_lut (.A(DATA_IN_R[12]), .B(DATA_IN_R[21]), .C(DATA_IN_R[17]), 
         .D(DATA_IN_R[16]), .Z(n17_adj_104)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(154[20:31])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut_adj_3 (.A(DATA_IN_R[20]), .B(DATA_IN_R[9]), .C(DATA_IN_R[5]), 
         .D(DATA_IN_R[1]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(154[20:31])
    defparam i6_4_lut_adj_3.init = 16'hfffe;
    LUT4 i344_4_lut (.A(DATA_IN_R[14]), .B(n524), .C(DATA_IN_R[0]), .D(DATA_IN_R[22]), 
         .Z(n532)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i344_4_lut.init = 16'h8000;
    LUT4 i336_4_lut (.A(DATA_IN_R[7]), .B(DATA_IN_R[18]), .C(DATA_IN_R[15]), 
         .D(DATA_IN_R[19]), .Z(n524)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i336_4_lut.init = 16'h8000;
    LUT4 i14_4_lut (.A(DATA_IN_L[11]), .B(n28), .C(n24), .D(n16_adj_111), 
         .Z(n477)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i14_4_lut.init = 16'h8000;
    CCU2D CLK_TREE_57_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n7), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n467), .S1(n40));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57_add_4_1.INIT0 = 16'hF000;
    defparam CLK_TREE_57_add_4_1.INIT1 = 16'h0555;
    defparam CLK_TREE_57_add_4_1.INJECT1_0 = "NO";
    defparam CLK_TREE_57_add_4_1.INJECT1_1 = "NO";
    CCU2D CLK_TREE_57_add_4_5 (.A0(n4_adj_101), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3_adj_102), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n468), .COUT(n469), .S0(n37), .S1(n36));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57_add_4_5.INIT0 = 16'hfaaa;
    defparam CLK_TREE_57_add_4_5.INIT1 = 16'hfaaa;
    defparam CLK_TREE_57_add_4_5.INJECT1_0 = "NO";
    defparam CLK_TREE_57_add_4_5.INJECT1_1 = "NO";
    FD1S3DX BIT_DELAY_SR__0__i2 (.D(n40_adj_114), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n39_adj_115));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i2.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i3 (.D(n39_adj_115), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n38_adj_116));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i3.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i4 (.D(n38_adj_116), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n37_adj_117));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i4.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i5 (.D(n37_adj_117), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n36_adj_118));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i5.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i6 (.D(n36_adj_118), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n35_adj_119));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i6.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i7 (.D(n35_adj_119), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n34_adj_120));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i7.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i8 (.D(n34_adj_120), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n33));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i8.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i9 (.D(n33), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n32));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i9.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i10 (.D(n32), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n31));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i10.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i11 (.D(n31), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n30));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i11.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i12 (.D(n30), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n29));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i12.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i13 (.D(n29), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n28_adj_121));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i13.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i14 (.D(n28_adj_121), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n27));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i14.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i15 (.D(n27), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n26_adj_122));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i15.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i16 (.D(n26_adj_122), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n25));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i16.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i17 (.D(n25), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n24_adj_123));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i17.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i18 (.D(n24_adj_123), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n23_adj_124));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i18.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i19 (.D(n23_adj_124), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n22_adj_125));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i19.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i20 (.D(n22_adj_125), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n21_adj_126));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i20.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i21 (.D(n21_adj_126), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n20_adj_127));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i21.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i22 (.D(n20_adj_127), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n19_adj_128));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i22.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i23 (.D(n19_adj_128), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n18_adj_129));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i23.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i24 (.D(n18_adj_129), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n17_adj_130));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i24.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i25 (.D(n17_adj_130), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n16_adj_131));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i25.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i26 (.D(n16_adj_131), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n15_adj_132));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i26.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i27 (.D(n15_adj_132), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n14_adj_133));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i27.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i28 (.D(n14_adj_133), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n13_adj_134));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i28.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i29 (.D(n13_adj_134), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n12_adj_135));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i29.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i30 (.D(n12_adj_135), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n11));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i30.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i31 (.D(n11), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n10));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i31.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i32 (.D(n10), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n9));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i32.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i33 (.D(n9), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n8));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i33.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i34 (.D(n8), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n7_adj_136));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i34.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i35 (.D(n7_adj_136), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n6_adj_137));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i35.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i36 (.D(n6_adj_137), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n5_adj_138));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i36.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i37 (.D(n5_adj_138), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n4_adj_139));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i37.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i38 (.D(n4_adj_139), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n3_adj_140));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i38.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i39 (.D(n3_adj_140), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(n2_adj_141));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i39.GSR = "ENABLED";
    FD1S3DX BIT_DELAY_SR__0__i40 (.D(n2_adj_141), .CK(BCLK_OUT_c), .CD(READY_FLAG_N_79), 
            .Q(BCLK_GATE_RELEASE));   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[3] 125[10])
    defparam BIT_DELAY_SR__0__i40.GSR = "ENABLED";
    \i2s_master(24,128,2)  I2SM (.WCLK_OUT_c_6(WCLK_OUT_c_6), .BCLK_OUT_c(BCLK_OUT_c), 
            .WCLK_EDGE(WCLK_EDGE), .BCLK_OUT_N_11(BCLK_OUT_N_11), .READY_FLAG_N_79(READY_FLAG_N_79), 
            .n167({BCLK_GATE_RELEASE}), .n631(n631), .n316(n316), .DATA_OUT_c(DATA_OUT_c));   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(100[8:18])
    FD1S3DX CLK_TREE_57__i1 (.D(n39), .CK(BCLK_OUT_N_11), .CD(PLL_LOCK_N_9), 
            .Q(n6_adj_99)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57__i1.GSR = "ENABLED";
    FD1S3DX CLK_TREE_57__i2 (.D(n38), .CK(BCLK_OUT_N_11), .CD(PLL_LOCK_N_9), 
            .Q(n5_adj_100)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57__i2.GSR = "ENABLED";
    FD1S3DX CLK_TREE_57__i3 (.D(n37), .CK(BCLK_OUT_N_11), .CD(PLL_LOCK_N_9), 
            .Q(n4_adj_101)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57__i3.GSR = "ENABLED";
    FD1S3DX CLK_TREE_57__i4 (.D(n36), .CK(BCLK_OUT_N_11), .CD(PLL_LOCK_N_9), 
            .Q(n3_adj_102)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57__i4.GSR = "ENABLED";
    FD1S3DX CLK_TREE_57__i5 (.D(n35), .CK(BCLK_OUT_N_11), .CD(PLL_LOCK_N_9), 
            .Q(n2_adj_103)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57__i5.GSR = "ENABLED";
    FD1S3DX CLK_TREE_57__i6 (.D(n34), .CK(BCLK_OUT_N_11), .CD(PLL_LOCK_N_9), 
            .Q(WCLK_OUT_c_6)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam CLK_TREE_57__i6.GSR = "ENABLED";
    LUT4 i4_2_lut (.A(DATA_IN_L[18]), .B(DATA_IN_L[6]), .Z(n13)) /* synthesis lut_function=(A+(B)) */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(150[20:31])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 m1_lut (.Z(n631)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i9_4_lut_adj_4 (.A(DATA_IN_L[1]), .B(DATA_IN_L[8]), .C(DATA_IN_L[0]), 
         .D(DATA_IN_L[21]), .Z(n24)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut_adj_4.init = 16'h8000;
    
endmodule
//
// Verilog Description of module \i2s_slave(24,128,2) 
//

module \i2s_slave(24,128,2)  (DATA_IN_L, DATA_IN_c, BCLK_IN_c, WCLK_IN_c, 
            WCLK_EDGE, BCLK_N_93, READY_FLAG_N_95, n168, n631, DATA_IN_R);
    output [23:0]DATA_IN_L;
    input DATA_IN_c;
    input BCLK_IN_c;
    input WCLK_IN_c;
    output WCLK_EDGE;
    input BCLK_N_93;
    output READY_FLAG_N_95;
    input [0:0]n168;
    input n631;
    output [23:0]DATA_IN_R;
    
    wire BCLK_SR_L /* synthesis is_clock=1, SET_AS_NETWORK=\I2SS/BCLK_SR_L */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(54[9:18])
    wire BCLK_IN_c /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_IN_c */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(16[4:11])
    wire WCLK_IN_c /* synthesis is_clock=1, SET_AS_NETWORK=WCLK_IN_c */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(15[4:11])
    wire BCLK_N_93 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(48[9:22])
    wire [0:0]n168_c /* synthesis is_clock=1, SET_AS_NETWORK=\I2SS/BCLK_GATE_RELEASE */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(57[9:26])
    wire BCLK_SR_R /* synthesis is_clock=1, SET_AS_NETWORK=\I2SS/BCLK_SR_R */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(55[9:18])
    wire BCLK_IN_c_derived_5 /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_IN_c_derived_5 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(16[4:11])
    
    wire WCLK_R, WCLK_EDGE_N_98, BIT_CTR_RST_N, DATA_FULL_N_91, BCLK_GATE, 
        BIT_CTR_RST_N_N_89, READY_FLAG;
    wire [4:0]BIT_CTR;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(47[9:16])
    wire [4:0]n25;
    
    wire n590, n512;
    
    FD1S3AX DATA_IN_L_T_i0 (.D(DATA_IN_c), .CK(BCLK_SR_L), .Q(DATA_IN_L[0])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i0.GSR = "ENABLED";
    FD1S3AX WCLK_R_53 (.D(WCLK_IN_c), .CK(BCLK_IN_c), .Q(WCLK_R)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(97[3] 102[10])
    defparam WCLK_R_53.GSR = "ENABLED";
    FD1S3AX WCLK_EDGE_54 (.D(WCLK_EDGE_N_98), .CK(BCLK_IN_c), .Q(WCLK_EDGE)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(97[3] 102[10])
    defparam WCLK_EDGE_54.GSR = "ENABLED";
    FD1S3DX BIT_CTR_RST_N_56 (.D(DATA_FULL_N_91), .CK(BCLK_N_93), .CD(READY_FLAG_N_95), 
            .Q(BIT_CTR_RST_N)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(127[3] 139[10])
    defparam BIT_CTR_RST_N_56.GSR = "ENABLED";
    FD1S3DX BCLK_GATE_58 (.D(n631), .CK(n168[0]), .CD(BIT_CTR_RST_N_N_89), 
            .Q(BCLK_GATE)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(171[3] 179[10])
    defparam BCLK_GATE_58.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i0 (.D(DATA_IN_c), .CK(BCLK_SR_R), .Q(DATA_IN_R[0])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i0.GSR = "ENABLED";
    FD1S3AX READY_FLAG_51 (.D(n631), .CK(WCLK_IN_c), .Q(READY_FLAG)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(77[3] 89[10])
    defparam READY_FLAG_51.GSR = "ENABLED";
    LUT4 i221_1_lut (.A(BIT_CTR[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i221_1_lut.init = 16'h5555;
    LUT4 i223_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i223_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut (.A(BCLK_IN_c), .B(BCLK_GATE), .C(WCLK_IN_c), 
         .Z(BCLK_SR_L)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(164[13:49])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1S3DX BIT_CTR_59__i0 (.D(n25[0]), .CK(BCLK_IN_c_derived_5), .CD(BIT_CTR_RST_N_N_89), 
            .Q(BIT_CTR[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_59__i0.GSR = "ENABLED";
    LUT4 i158_2_lut_rep_2 (.A(BCLK_IN_c), .B(BCLK_GATE), .Z(BCLK_IN_c_derived_5)) /* synthesis lut_function=(A (B)) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(164[13:49])
    defparam i158_2_lut_rep_2.init = 16'h8888;
    LUT4 i244_3_lut_4_lut (.A(BIT_CTR[2]), .B(n590), .C(BIT_CTR[3]), .D(BIT_CTR[4]), 
         .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i244_3_lut_4_lut.init = 16'h7f80;
    LUT4 WCLK_I_0_2_lut (.A(WCLK_IN_c), .B(WCLK_R), .Z(WCLK_EDGE_N_98)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(100[17:32])
    defparam WCLK_I_0_2_lut.init = 16'h6666;
    LUT4 READY_FLAG_I_0_1_lut (.A(READY_FLAG), .Z(READY_FLAG_N_95)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(110[7:23])
    defparam READY_FLAG_I_0_1_lut.init = 16'h5555;
    LUT4 i3_4_lut (.A(BIT_CTR[0]), .B(BIT_CTR[2]), .C(BIT_CTR[1]), .D(n512), 
         .Z(DATA_FULL_N_91)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i324_2_lut (.A(BIT_CTR[3]), .B(BIT_CTR[4]), .Z(n512)) /* synthesis lut_function=(A (B)) */ ;
    defparam i324_2_lut.init = 16'h8888;
    LUT4 BIT_CTR_RST_N_I_0_1_lut (.A(BIT_CTR_RST_N), .Z(BIT_CTR_RST_N_N_89)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(145[7:26])
    defparam BIT_CTR_RST_N_I_0_1_lut.init = 16'h5555;
    FD1S3AX DATA_IN_L_T_i1 (.D(DATA_IN_L[0]), .CK(BCLK_SR_L), .Q(DATA_IN_L[1])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_1 (.A(BCLK_IN_c), .B(BCLK_GATE), .C(WCLK_IN_c), 
         .Z(BCLK_SR_R)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(164[13:49])
    defparam i1_2_lut_3_lut_adj_1.init = 16'h0808;
    LUT4 i226_2_lut_rep_4 (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n590)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i226_2_lut_rep_4.init = 16'h8888;
    LUT4 i230_2_lut_3_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i230_2_lut_3_lut.init = 16'h7878;
    LUT4 i237_2_lut_3_lut_4_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[3]), 
         .D(BIT_CTR[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i237_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX DATA_IN_L_T_i2 (.D(DATA_IN_L[1]), .CK(BCLK_SR_L), .Q(DATA_IN_L[2])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i2.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i3 (.D(DATA_IN_L[2]), .CK(BCLK_SR_L), .Q(DATA_IN_L[3])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i3.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i4 (.D(DATA_IN_L[3]), .CK(BCLK_SR_L), .Q(DATA_IN_L[4])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i4.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i5 (.D(DATA_IN_L[4]), .CK(BCLK_SR_L), .Q(DATA_IN_L[5])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i5.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i6 (.D(DATA_IN_L[5]), .CK(BCLK_SR_L), .Q(DATA_IN_L[6])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i6.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i7 (.D(DATA_IN_L[6]), .CK(BCLK_SR_L), .Q(DATA_IN_L[7])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i7.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i8 (.D(DATA_IN_L[7]), .CK(BCLK_SR_L), .Q(DATA_IN_L[8])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i8.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i9 (.D(DATA_IN_L[8]), .CK(BCLK_SR_L), .Q(DATA_IN_L[9])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i9.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i10 (.D(DATA_IN_L[9]), .CK(BCLK_SR_L), .Q(DATA_IN_L[10])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i10.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i11 (.D(DATA_IN_L[10]), .CK(BCLK_SR_L), .Q(DATA_IN_L[11])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i11.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i12 (.D(DATA_IN_L[11]), .CK(BCLK_SR_L), .Q(DATA_IN_L[12])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i12.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i13 (.D(DATA_IN_L[12]), .CK(BCLK_SR_L), .Q(DATA_IN_L[13])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i13.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i14 (.D(DATA_IN_L[13]), .CK(BCLK_SR_L), .Q(DATA_IN_L[14])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i14.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i15 (.D(DATA_IN_L[14]), .CK(BCLK_SR_L), .Q(DATA_IN_L[15])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i15.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i16 (.D(DATA_IN_L[15]), .CK(BCLK_SR_L), .Q(DATA_IN_L[16])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i16.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i17 (.D(DATA_IN_L[16]), .CK(BCLK_SR_L), .Q(DATA_IN_L[17])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i17.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i18 (.D(DATA_IN_L[17]), .CK(BCLK_SR_L), .Q(DATA_IN_L[18])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i18.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i19 (.D(DATA_IN_L[18]), .CK(BCLK_SR_L), .Q(DATA_IN_L[19])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i19.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i20 (.D(DATA_IN_L[19]), .CK(BCLK_SR_L), .Q(DATA_IN_L[20])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i20.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i21 (.D(DATA_IN_L[20]), .CK(BCLK_SR_L), .Q(DATA_IN_L[21])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i21.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i22 (.D(DATA_IN_L[21]), .CK(BCLK_SR_L), .Q(DATA_IN_L[22])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i22.GSR = "ENABLED";
    FD1S3AX DATA_IN_L_T_i23 (.D(DATA_IN_L[22]), .CK(BCLK_SR_L), .Q(DATA_IN_L[23])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(191[3] 195[10])
    defparam DATA_IN_L_T_i23.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i1 (.D(DATA_IN_R[0]), .CK(BCLK_SR_R), .Q(DATA_IN_R[1])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i1.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i2 (.D(DATA_IN_R[1]), .CK(BCLK_SR_R), .Q(DATA_IN_R[2])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i2.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i3 (.D(DATA_IN_R[2]), .CK(BCLK_SR_R), .Q(DATA_IN_R[3])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i3.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i4 (.D(DATA_IN_R[3]), .CK(BCLK_SR_R), .Q(DATA_IN_R[4])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i4.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i5 (.D(DATA_IN_R[4]), .CK(BCLK_SR_R), .Q(DATA_IN_R[5])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i5.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i6 (.D(DATA_IN_R[5]), .CK(BCLK_SR_R), .Q(DATA_IN_R[6])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i6.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i7 (.D(DATA_IN_R[6]), .CK(BCLK_SR_R), .Q(DATA_IN_R[7])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i7.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i8 (.D(DATA_IN_R[7]), .CK(BCLK_SR_R), .Q(DATA_IN_R[8])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i8.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i9 (.D(DATA_IN_R[8]), .CK(BCLK_SR_R), .Q(DATA_IN_R[9])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i9.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i10 (.D(DATA_IN_R[9]), .CK(BCLK_SR_R), .Q(DATA_IN_R[10])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i10.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i11 (.D(DATA_IN_R[10]), .CK(BCLK_SR_R), .Q(DATA_IN_R[11])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i11.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i12 (.D(DATA_IN_R[11]), .CK(BCLK_SR_R), .Q(DATA_IN_R[12])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i12.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i13 (.D(DATA_IN_R[12]), .CK(BCLK_SR_R), .Q(DATA_IN_R[13])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i13.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i14 (.D(DATA_IN_R[13]), .CK(BCLK_SR_R), .Q(DATA_IN_R[14])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i14.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i15 (.D(DATA_IN_R[14]), .CK(BCLK_SR_R), .Q(DATA_IN_R[15])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i15.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i16 (.D(DATA_IN_R[15]), .CK(BCLK_SR_R), .Q(DATA_IN_R[16])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i16.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i17 (.D(DATA_IN_R[16]), .CK(BCLK_SR_R), .Q(DATA_IN_R[17])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i17.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i18 (.D(DATA_IN_R[17]), .CK(BCLK_SR_R), .Q(DATA_IN_R[18])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i18.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i19 (.D(DATA_IN_R[18]), .CK(BCLK_SR_R), .Q(DATA_IN_R[19])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i19.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i20 (.D(DATA_IN_R[19]), .CK(BCLK_SR_R), .Q(DATA_IN_R[20])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i20.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i21 (.D(DATA_IN_R[20]), .CK(BCLK_SR_R), .Q(DATA_IN_R[21])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i21.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i22 (.D(DATA_IN_R[21]), .CK(BCLK_SR_R), .Q(DATA_IN_R[22])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i22.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i23 (.D(DATA_IN_R[22]), .CK(BCLK_SR_R), .Q(DATA_IN_R[23])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/fpga/projects/fxbox/src/i2s_slave.vhd(201[3] 205[10])
    defparam DATA_IN_R_T_i23.GSR = "ENABLED";
    FD1S3DX BIT_CTR_59__i1 (.D(n25[1]), .CK(BCLK_IN_c_derived_5), .CD(BIT_CTR_RST_N_N_89), 
            .Q(BIT_CTR[1]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_59__i1.GSR = "ENABLED";
    FD1S3DX BIT_CTR_59__i2 (.D(n25[2]), .CK(BCLK_IN_c_derived_5), .CD(BIT_CTR_RST_N_N_89), 
            .Q(BIT_CTR[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_59__i2.GSR = "ENABLED";
    FD1S3DX BIT_CTR_59__i3 (.D(n25[3]), .CK(BCLK_IN_c_derived_5), .CD(BIT_CTR_RST_N_N_89), 
            .Q(BIT_CTR[3]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_59__i3.GSR = "ENABLED";
    FD1S3DX BIT_CTR_59__i4 (.D(n25[4]), .CK(BCLK_IN_c_derived_5), .CD(BIT_CTR_RST_N_N_89), 
            .Q(BIT_CTR[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_59__i4.GSR = "ENABLED";
    
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
// Verilog Description of module sclk_pll
//

module sclk_pll (BCLK_OUT_N_11, BCLK_OUT_c, CLK_INP_c, MRST_N_N_81, 
            VCC_net, PLL_LOCK, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    output BCLK_OUT_N_11;
    output BCLK_OUT_c;
    input CLK_INP_c;
    input MRST_N_N_81;
    input VCC_net;
    output PLL_LOCK;
    input GND_net;
    
    wire BCLK_OUT_N_11 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(85[9:17])
    wire BCLK_OUT_c /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_OUT_c */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(13[4:12])
    wire CLK_INP_c /* synthesis is_clock=1 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(20[4:11])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/fpga/projects/fxbox/pll/sclk/sclk_pll.vhd(20[9:14])
    
    INV i402 (.A(BCLK_OUT_c), .Z(BCLK_OUT_N_11));
    EHXPLLJ PLLInst_0 (.CLKI(CLK_INP_c), .CLKFB(CLKOP), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(MRST_N_N_81), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(VCC_net), .ENCLKOS(VCC_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(CLKOP), .CLKOS(BCLK_OUT_c), .LOCK(PLL_LOCK)) /* synthesis FREQUENCY_PIN_CLKOS="6.144012", FREQUENCY_PIN_CLKOP="18.432037", FREQUENCY_PIN_CLKI="7.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=39, LSE_LCOL=9, LSE_RCOL=17, LSE_LLINE=96, LSE_RLINE=96 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(96[9:17])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 33;
    defparam PLLInst_0.CLKOS_DIV = 99;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 32;
    defparam PLLInst_0.CLKOS_CPHASE = 98;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "ENABLED";
    defparam PLLInst_0.FRACN_DIV = 41494;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module \i2s_master(24,128,2) 
//

module \i2s_master(24,128,2)  (WCLK_OUT_c_6, BCLK_OUT_c, WCLK_EDGE, BCLK_OUT_N_11, 
            READY_FLAG_N_79, n167, n631, n316, DATA_OUT_c);
    input WCLK_OUT_c_6;
    input BCLK_OUT_c;
    output WCLK_EDGE;
    input BCLK_OUT_N_11;
    output READY_FLAG_N_79;
    input [0:0]n167;
    input n631;
    input n316;
    output DATA_OUT_c;
    
    wire BCLK_SR /* synthesis is_clock=1, is_inv_clock=1, SET_AS_NETWORK=\I2SM/BCLK_SR */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(58[9:16])
    wire WCLK_OUT_c_6 /* synthesis is_clock=1, SET_AS_NETWORK=WCLK_OUT_c_6 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(12[9:17])
    wire BCLK_OUT_c /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_OUT_c */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(13[4:12])
    wire BCLK_OUT_N_11 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/src/test/i2s_loopback.vhd(85[9:17])
    wire [0:0]n167_c /* synthesis is_clock=1, SET_AS_NETWORK=\I2SM/BCLK_GATE_RELEASE */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(62[9:26])
    wire [23:0]DATA_OUT_SR_R;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(46[9:22])
    
    wire READY, READY_FLAG, WCLK_R, WCLK_EDGE_N_82, BIT_CTR_RST_N, 
        DATA_EMPTY_N_75, BCLK_GATE, BIT_CTR_RST_N_N_73;
    wire [23:0]DATA_OUT_SR_L;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(45[9:22])
    wire [4:0]BIT_CTR;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(52[9:16])
    wire [4:0]n25;
    
    wire n522, n589;
    
    FD1S3JX DATA_OUT_SR_R_i23 (.D(DATA_OUT_SR_R[22]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[23])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i23.GSR = "ENABLED";
    FD1S3AX READY_T_70 (.D(READY_FLAG), .CK(WCLK_OUT_c_6), .Q(READY)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(84[3] 96[10])
    defparam READY_T_70.GSR = "ENABLED";
    FD1S3AX WCLK_R_71 (.D(WCLK_OUT_c_6), .CK(BCLK_OUT_c), .Q(WCLK_R)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(104[3] 109[10])
    defparam WCLK_R_71.GSR = "ENABLED";
    FD1S3AX WCLK_EDGE_72 (.D(WCLK_EDGE_N_82), .CK(BCLK_OUT_c), .Q(WCLK_EDGE)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(104[3] 109[10])
    defparam WCLK_EDGE_72.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i22 (.D(DATA_OUT_SR_R[21]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[22])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i22.GSR = "ENABLED";
    FD1S3DX BIT_CTR_RST_N_74 (.D(DATA_EMPTY_N_75), .CK(BCLK_OUT_N_11), .CD(READY_FLAG_N_79), 
            .Q(BIT_CTR_RST_N)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(134[3] 146[10])
    defparam BIT_CTR_RST_N_74.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R_i21 (.D(DATA_OUT_SR_R[20]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[21])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i21.GSR = "ENABLED";
    FD1S3DX BCLK_GATE_76 (.D(n631), .CK(n167[0]), .CD(BIT_CTR_RST_N_N_73), 
            .Q(BCLK_GATE)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(179[3] 187[10])
    defparam BCLK_GATE_76.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i0 (.D(DATA_OUT_SR_R[23]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[0])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i0.GSR = "ENABLED";
    FD1S3AX READY_FLAG_69 (.D(n631), .CK(WCLK_OUT_c_6), .Q(READY_FLAG)) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(84[3] 96[10])
    defparam READY_FLAG_69.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R_i20 (.D(DATA_OUT_SR_R[19]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[20])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i20.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i19 (.D(DATA_OUT_SR_R[18]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[19])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i19.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i0 (.D(DATA_OUT_SR_L[23]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[0])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i0.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i18 (.D(DATA_OUT_SR_R[17]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[18])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i18.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R_i17 (.D(DATA_OUT_SR_R[16]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[17])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i17.GSR = "ENABLED";
    LUT4 DATA_T_I_0_4_lut (.A(DATA_OUT_SR_R[23]), .B(READY), .C(DATA_OUT_SR_L[23]), 
         .D(WCLK_OUT_c_6), .Z(DATA_OUT_c)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(217[10:28])
    defparam DATA_T_I_0_4_lut.init = 16'hc088;
    LUT4 i257_1_lut (.A(BIT_CTR[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i257_1_lut.init = 16'h5555;
    FD1S3IX DATA_OUT_SR_R_i16 (.D(DATA_OUT_SR_R[15]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[16])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i16.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i15 (.D(DATA_OUT_SR_R[14]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[15])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i15.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i14 (.D(DATA_OUT_SR_R[13]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[14])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i14.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R_i13 (.D(DATA_OUT_SR_R[12]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[13])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i13.GSR = "ENABLED";
    LUT4 i259_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i259_2_lut.init = 16'h6666;
    FD1S3IX DATA_OUT_SR_R_i12 (.D(DATA_OUT_SR_R[11]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[12])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i12.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i11 (.D(DATA_OUT_SR_R[10]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[11])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i11.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i10 (.D(DATA_OUT_SR_R[9]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[10])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i10.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R_i9 (.D(DATA_OUT_SR_R[8]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[9])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i9.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i8 (.D(DATA_OUT_SR_R[7]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[8])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i8.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(BIT_CTR[2]), .B(BIT_CTR[3]), .C(n522), .D(BIT_CTR[0]), 
         .Z(DATA_EMPTY_N_75)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hdfff;
    LUT4 i262_2_lut_rep_3 (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n589)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i262_2_lut_rep_3.init = 16'h8888;
    FD1S3JX DATA_OUT_SR_R_i7 (.D(DATA_OUT_SR_R[6]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[7])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i7.GSR = "ENABLED";
    LUT4 i334_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[4]), .Z(n522)) /* synthesis lut_function=(A (B)) */ ;
    defparam i334_2_lut.init = 16'h8888;
    FD1S3JX DATA_OUT_SR_R_i6 (.D(DATA_OUT_SR_R[5]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[6])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i6.GSR = "ENABLED";
    LUT4 i273_2_lut_3_lut_4_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[3]), 
         .D(BIT_CTR[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i273_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 BIT_CTR_RST_N_I_0_1_lut (.A(BIT_CTR_RST_N), .Z(BIT_CTR_RST_N_N_73)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(152[7:26])
    defparam BIT_CTR_RST_N_I_0_1_lut.init = 16'h5555;
    LUT4 i266_2_lut_3_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i266_2_lut_3_lut.init = 16'h7878;
    FD1S3IX DATA_OUT_SR_R_i5 (.D(DATA_OUT_SR_R[4]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[5])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i5.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i4 (.D(DATA_OUT_SR_R[3]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[4])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i4.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i3 (.D(DATA_OUT_SR_R[2]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[3])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i3.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_R_i2 (.D(DATA_OUT_SR_R[1]), .CK(BCLK_SR), .PD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[2])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i2.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_R_i1 (.D(DATA_OUT_SR_R[0]), .CK(BCLK_SR), .CD(WCLK_OUT_c_6), 
            .Q(DATA_OUT_SR_R[1])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i1.GSR = "ENABLED";
    FD1S3DX BIT_CTR_58__i0 (.D(n25[0]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_73), 
            .Q(BIT_CTR[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_58__i0.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i23 (.D(DATA_OUT_SR_L[22]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[23])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i23.GSR = "ENABLED";
    LUT4 i280_3_lut_4_lut (.A(BIT_CTR[2]), .B(n589), .C(BIT_CTR[3]), .D(BIT_CTR[4]), 
         .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i280_3_lut_4_lut.init = 16'h7f80;
    FD1S3IX DATA_OUT_SR_L_i22 (.D(DATA_OUT_SR_L[21]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[22])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i22.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i21 (.D(DATA_OUT_SR_L[20]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[21])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i21.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i20 (.D(DATA_OUT_SR_L[19]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[20])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i20.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i19 (.D(DATA_OUT_SR_L[18]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[19])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i19.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i18 (.D(DATA_OUT_SR_L[17]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[18])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i18.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i17 (.D(DATA_OUT_SR_L[16]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[17])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i17.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i16 (.D(DATA_OUT_SR_L[15]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[16])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i16.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i15 (.D(DATA_OUT_SR_L[14]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[15])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i15.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i14 (.D(DATA_OUT_SR_L[13]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[14])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i14.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i13 (.D(DATA_OUT_SR_L[12]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[13])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i13.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i12 (.D(DATA_OUT_SR_L[11]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[12])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i12.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i11 (.D(DATA_OUT_SR_L[10]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[11])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i11.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i10 (.D(DATA_OUT_SR_L[9]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[10])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i10.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i9 (.D(DATA_OUT_SR_L[8]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[9])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i9.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i8 (.D(DATA_OUT_SR_L[7]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[8])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i8.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i7 (.D(DATA_OUT_SR_L[6]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[7])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i7.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i6 (.D(DATA_OUT_SR_L[5]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[6])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i6.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i5 (.D(DATA_OUT_SR_L[4]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[5])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i5.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i4 (.D(DATA_OUT_SR_L[3]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[4])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i4.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i3 (.D(DATA_OUT_SR_L[2]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[3])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i3.GSR = "ENABLED";
    FD1S3IX DATA_OUT_SR_L_i2 (.D(DATA_OUT_SR_L[1]), .CK(BCLK_SR), .CD(n316), 
            .Q(DATA_OUT_SR_L[2])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i2.GSR = "ENABLED";
    FD1S3JX DATA_OUT_SR_L_i1 (.D(DATA_OUT_SR_L[0]), .CK(BCLK_SR), .PD(n316), 
            .Q(DATA_OUT_SR_L[1])) /* synthesis LSE_LINE_FILE_ID=39, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i1.GSR = "ENABLED";
    LUT4 i356_2_lut (.A(BCLK_OUT_c), .B(BCLK_GATE), .Z(BCLK_SR)) /* synthesis lut_function=(!(A (B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/std_1164.vhd(1013[30:45])
    defparam i356_2_lut.init = 16'h7777;
    LUT4 WCLK_I_0_2_lut (.A(WCLK_OUT_c_6), .B(WCLK_R), .Z(WCLK_EDGE_N_82)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(107[17:32])
    defparam WCLK_I_0_2_lut.init = 16'h6666;
    LUT4 READY_FLAG_I_0_1_lut (.A(READY_FLAG), .Z(READY_FLAG_N_79)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/src/i2s_master.vhd(117[7:23])
    defparam READY_FLAG_I_0_1_lut.init = 16'h5555;
    FD1S3DX BIT_CTR_58__i1 (.D(n25[1]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_73), 
            .Q(BIT_CTR[1]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_58__i1.GSR = "ENABLED";
    FD1S3DX BIT_CTR_58__i2 (.D(n25[2]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_73), 
            .Q(BIT_CTR[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_58__i2.GSR = "ENABLED";
    FD1S3DX BIT_CTR_58__i3 (.D(n25[3]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_73), 
            .Q(BIT_CTR[3]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_58__i3.GSR = "ENABLED";
    FD1S3DX BIT_CTR_58__i4 (.D(n25[4]), .CK(BCLK_SR), .CD(BIT_CTR_RST_N_N_73), 
            .Q(BIT_CTR[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_58__i4.GSR = "ENABLED";
    
endmodule
