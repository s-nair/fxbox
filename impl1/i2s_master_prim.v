// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Fri Sep 28 20:29:03 2018
//
// Verilog Description of module i2s_master
//

module i2s_master (MRST_N, BCLK, WCLK, DATA, DATA_OUT_L, DATA_OUT_R, 
            READY);   // c:/fpga/projects/fxbox/i2s_master.vhd(26[8:18])
    input MRST_N;   // c:/fpga/projects/fxbox/i2s_master.vhd(30[10:16])
    input BCLK;   // c:/fpga/projects/fxbox/i2s_master.vhd(31[5:9])
    input WCLK;   // c:/fpga/projects/fxbox/i2s_master.vhd(32[5:9])
    output DATA;   // c:/fpga/projects/fxbox/i2s_master.vhd(33[5:9])
    input [23:0]DATA_OUT_L;   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    input [23:0]DATA_OUT_R;   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    output READY;   // c:/fpga/projects/fxbox/i2s_master.vhd(36[5:10])
    
    wire BCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_c */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(31[5:9])
    wire WCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=WCLK_c */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(32[5:9])
    wire WCLK_EDGE /* synthesis is_clock=1, SET_AS_NETWORK=WCLK_EDGE */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(56[9:18])
    wire BCLK_SR /* synthesis is_clock=1, is_inv_clock=1, SET_AS_NETWORK=BCLK_SR */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(58[9:16])
    wire BCLK_N_63 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(53[9:22])
    wire WCLK_N_52 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(47[9:23])
    
    wire MRST_N_c, DATA_c, DATA_OUT_L_c_23, DATA_OUT_L_c_22, DATA_OUT_L_c_21, 
        DATA_OUT_L_c_20, DATA_OUT_L_c_19, DATA_OUT_L_c_18, DATA_OUT_L_c_17, 
        DATA_OUT_L_c_16, DATA_OUT_L_c_15, DATA_OUT_L_c_14, DATA_OUT_L_c_13, 
        DATA_OUT_L_c_12, DATA_OUT_L_c_11, DATA_OUT_L_c_10, DATA_OUT_L_c_9, 
        DATA_OUT_L_c_8, DATA_OUT_L_c_7, DATA_OUT_L_c_6, DATA_OUT_L_c_5, 
        DATA_OUT_L_c_4, DATA_OUT_L_c_3, DATA_OUT_L_c_2, DATA_OUT_L_c_1, 
        DATA_OUT_L_c_0, DATA_OUT_R_c_23, DATA_OUT_R_c_22, DATA_OUT_R_c_21, 
        DATA_OUT_R_c_20, DATA_OUT_R_c_19, DATA_OUT_R_c_18, DATA_OUT_R_c_17, 
        DATA_OUT_R_c_16, DATA_OUT_R_c_15, DATA_OUT_R_c_14, DATA_OUT_R_c_13, 
        DATA_OUT_R_c_12, DATA_OUT_R_c_11, DATA_OUT_R_c_10, DATA_OUT_R_c_9, 
        DATA_OUT_R_c_8, DATA_OUT_R_c_7, DATA_OUT_R_c_6, DATA_OUT_R_c_5, 
        DATA_OUT_R_c_4, DATA_OUT_R_c_3, DATA_OUT_R_c_2, DATA_OUT_R_c_1, 
        DATA_OUT_R_c_0, READY_c, READY_FLAG;
    wire [23:0]DATA_OUT_SR_L;   // c:/fpga/projects/fxbox/i2s_master.vhd(45[9:22])
    wire [23:0]DATA_OUT_SR_R;   // c:/fpga/projects/fxbox/i2s_master.vhd(46[9:22])
    wire [23:0]DATA_OUT_L_BUF;   // c:/fpga/projects/fxbox/i2s_master.vhd(47[9:23])
    wire [23:0]DATA_OUT_R_BUF;   // c:/fpga/projects/fxbox/i2s_master.vhd(48[9:23])
    wire [4:0]BIT_CTR;   // c:/fpga/projects/fxbox/i2s_master.vhd(52[9:16])
    
    wire BIT_CTR_RST_N, WCLK_R, BCLK_GATE, MRST_N_N_67, WCLK_EDGE_N_68, 
        READY_FLAG_N_65, DATA_EMPTY_N_61, VCC_net;
    wire [23:0]DATA_OUT_SR_L_23__N_1;
    wire [23:0]DATA_OUT_SR_R_23__N_27;
    
    wire n669, GND_net, n26, n27, n28, n29, n30, n666, n658;
    
    INV i169 (.A(BCLK_c), .Z(BCLK_N_63));   // c:/fpga/projects/fxbox/i2s_master.vhd(31[5:9])
    LUT4 i2_4_lut (.A(BIT_CTR[4]), .B(BIT_CTR[3]), .C(n658), .D(BIT_CTR[0]), 
         .Z(DATA_EMPTY_N_61)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hdfff;
    FD1S3AX WCLK_R_74 (.D(WCLK_c), .CK(BCLK_c), .Q(WCLK_R));   // c:/fpga/projects/fxbox/i2s_master.vhd(104[3] 109[10])
    defparam WCLK_R_74.GSR = "DISABLED";
    FD1S3AX WCLK_EDGE_75 (.D(WCLK_EDGE_N_68), .CK(BCLK_c), .Q(WCLK_EDGE));   // c:/fpga/projects/fxbox/i2s_master.vhd(104[3] 109[10])
    defparam WCLK_EDGE_75.GSR = "DISABLED";
    FD1S3DX BIT_CTR_RST_N_77 (.D(DATA_EMPTY_N_61), .CK(BCLK_N_63), .CD(READY_FLAG_N_65), 
            .Q(BIT_CTR_RST_N));   // c:/fpga/projects/fxbox/i2s_master.vhd(134[3] 146[10])
    defparam BIT_CTR_RST_N_77.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i2 (.D(DATA_OUT_R_c_2), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[2]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i2.GSR = "DISABLED";
    VHI i167 (.Z(VCC_net));
    LUT4 i132_2_lut_3_lut_4_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[3]), 
         .D(BIT_CTR[2]), .Z(n27)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i132_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX BCLK_GATE_79 (.D(n669), .CK(WCLK_EDGE), .Q(BCLK_GATE));   // c:/fpga/projects/fxbox/i2s_master.vhd(179[3] 187[10])
    defparam BCLK_GATE_79.GSR = "ENABLED";
    FD1S3AX DATA_OUT_R_BUF_i0 (.D(DATA_OUT_R_c_0), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[0]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i0.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i0 (.D(DATA_OUT_SR_L_23__N_1[0]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[0]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i0.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i0 (.D(DATA_OUT_SR_R_23__N_27[0]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[0]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i0.GSR = "DISABLED";
    FD1S3AX BIT_CTR_90__i0 (.D(n30), .CK(BCLK_SR), .Q(BIT_CTR[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_90__i0.GSR = "ENABLED";
    LUT4 i118_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n29)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i118_2_lut.init = 16'h6666;
    FD1S3DX READY_FLAG_72 (.D(n669), .CK(WCLK_c), .CD(MRST_N_N_67), .Q(READY_FLAG));   // c:/fpga/projects/fxbox/i2s_master.vhd(84[3] 96[10])
    defparam READY_FLAG_72.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i1 (.D(DATA_OUT_R_c_1), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[1]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i1.GSR = "DISABLED";
    OB READY_pad (.I(READY_c), .O(READY));   // c:/fpga/projects/fxbox/i2s_master.vhd(36[5:10])
    FD1S3AX DATA_OUT_L_BUF_i23 (.D(DATA_OUT_L_c_23), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[23]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i23.GSR = "DISABLED";
    LUT4 DATA_OUT_SR_R_22__I_0_i24_3_lut (.A(DATA_OUT_SR_R[22]), .B(DATA_OUT_R_BUF[23]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i24_3_lut.init = 16'hcaca;
    FD1S3AX DATA_OUT_L_BUF_i22 (.D(DATA_OUT_L_c_22), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[22]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i22.GSR = "DISABLED";
    LUT4 READY_FLAG_I_0_1_lut (.A(READY_FLAG), .Z(READY_FLAG_N_65)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(134[7:23])
    defparam READY_FLAG_I_0_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(BIT_CTR_RST_N));
    LUT4 DATA_OUT_SR_R_22__I_0_i23_3_lut (.A(DATA_OUT_SR_R[21]), .B(DATA_OUT_R_BUF[22]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i23_3_lut.init = 16'hcaca;
    OB DATA_pad (.I(DATA_c), .O(DATA));   // c:/fpga/projects/fxbox/i2s_master.vhd(33[5:9])
    LUT4 DATA_OUT_SR_R_22__I_0_i22_3_lut (.A(DATA_OUT_SR_R[20]), .B(DATA_OUT_R_BUF[21]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i22_3_lut.init = 16'hcaca;
    FD1S3AX DATA_OUT_L_BUF_i21 (.D(DATA_OUT_L_c_21), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[21]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i21.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i20 (.D(DATA_OUT_L_c_20), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[20]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i20.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i19 (.D(DATA_OUT_L_c_19), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[19]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i19.GSR = "DISABLED";
    INV i170 (.A(WCLK_c), .Z(WCLK_N_52));   // c:/fpga/projects/fxbox/i2s_master.vhd(32[5:9])
    FD1S3AX DATA_OUT_L_BUF_i18 (.D(DATA_OUT_L_c_18), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[18]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i18.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i17 (.D(DATA_OUT_L_c_17), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[17]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i17.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i16 (.D(DATA_OUT_L_c_16), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[16]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i16.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i15 (.D(DATA_OUT_L_c_15), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[15]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i15.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i14 (.D(DATA_OUT_L_c_14), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[14]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i14.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i13 (.D(DATA_OUT_L_c_13), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[13]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i13.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i12 (.D(DATA_OUT_L_c_12), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[12]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i12.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i11 (.D(DATA_OUT_L_c_11), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[11]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i11.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i10 (.D(DATA_OUT_L_c_10), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[10]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i10.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i9 (.D(DATA_OUT_L_c_9), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[9]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i9.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i8 (.D(DATA_OUT_L_c_8), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[8]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i8.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i7 (.D(DATA_OUT_L_c_7), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[7]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i7.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i6 (.D(DATA_OUT_L_c_6), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[6]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i6.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i5 (.D(DATA_OUT_L_c_5), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[5]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i5.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i4 (.D(DATA_OUT_L_c_4), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[4]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i4.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i3 (.D(DATA_OUT_L_c_3), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[3]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i3.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i2 (.D(DATA_OUT_L_c_2), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[2]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i2.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i1 (.D(DATA_OUT_L_c_1), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[1]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i1.GSR = "DISABLED";
    FD1S3AX DATA_OUT_L_BUF_i0 (.D(DATA_OUT_L_c_0), .CK(WCLK_N_52), .Q(DATA_OUT_L_BUF[0]));   // c:/fpga/projects/fxbox/i2s_master.vhd(195[3] 199[10])
    defparam DATA_OUT_L_BUF_i0.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i3 (.D(DATA_OUT_R_c_3), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[3]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i3.GSR = "DISABLED";
    IB MRST_N_pad (.I(MRST_N), .O(MRST_N_c));   // c:/fpga/projects/fxbox/i2s_master.vhd(30[10:16])
    IB BCLK_pad (.I(BCLK), .O(BCLK_c));   // c:/fpga/projects/fxbox/i2s_master.vhd(31[5:9])
    IB WCLK_pad (.I(WCLK), .O(WCLK_c));   // c:/fpga/projects/fxbox/i2s_master.vhd(32[5:9])
    IB DATA_OUT_L_pad_23 (.I(DATA_OUT_L[23]), .O(DATA_OUT_L_c_23));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_22 (.I(DATA_OUT_L[22]), .O(DATA_OUT_L_c_22));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_21 (.I(DATA_OUT_L[21]), .O(DATA_OUT_L_c_21));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_20 (.I(DATA_OUT_L[20]), .O(DATA_OUT_L_c_20));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_19 (.I(DATA_OUT_L[19]), .O(DATA_OUT_L_c_19));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_18 (.I(DATA_OUT_L[18]), .O(DATA_OUT_L_c_18));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_17 (.I(DATA_OUT_L[17]), .O(DATA_OUT_L_c_17));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_16 (.I(DATA_OUT_L[16]), .O(DATA_OUT_L_c_16));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_15 (.I(DATA_OUT_L[15]), .O(DATA_OUT_L_c_15));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_14 (.I(DATA_OUT_L[14]), .O(DATA_OUT_L_c_14));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_13 (.I(DATA_OUT_L[13]), .O(DATA_OUT_L_c_13));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_12 (.I(DATA_OUT_L[12]), .O(DATA_OUT_L_c_12));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_11 (.I(DATA_OUT_L[11]), .O(DATA_OUT_L_c_11));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_10 (.I(DATA_OUT_L[10]), .O(DATA_OUT_L_c_10));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_9 (.I(DATA_OUT_L[9]), .O(DATA_OUT_L_c_9));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_8 (.I(DATA_OUT_L[8]), .O(DATA_OUT_L_c_8));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_7 (.I(DATA_OUT_L[7]), .O(DATA_OUT_L_c_7));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_6 (.I(DATA_OUT_L[6]), .O(DATA_OUT_L_c_6));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_5 (.I(DATA_OUT_L[5]), .O(DATA_OUT_L_c_5));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_4 (.I(DATA_OUT_L[4]), .O(DATA_OUT_L_c_4));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_3 (.I(DATA_OUT_L[3]), .O(DATA_OUT_L_c_3));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_2 (.I(DATA_OUT_L[2]), .O(DATA_OUT_L_c_2));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_1 (.I(DATA_OUT_L[1]), .O(DATA_OUT_L_c_1));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_L_pad_0 (.I(DATA_OUT_L[0]), .O(DATA_OUT_L_c_0));   // c:/fpga/projects/fxbox/i2s_master.vhd(34[5:15])
    IB DATA_OUT_R_pad_23 (.I(DATA_OUT_R[23]), .O(DATA_OUT_R_c_23));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_22 (.I(DATA_OUT_R[22]), .O(DATA_OUT_R_c_22));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_21 (.I(DATA_OUT_R[21]), .O(DATA_OUT_R_c_21));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_20 (.I(DATA_OUT_R[20]), .O(DATA_OUT_R_c_20));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_19 (.I(DATA_OUT_R[19]), .O(DATA_OUT_R_c_19));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_18 (.I(DATA_OUT_R[18]), .O(DATA_OUT_R_c_18));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_17 (.I(DATA_OUT_R[17]), .O(DATA_OUT_R_c_17));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_16 (.I(DATA_OUT_R[16]), .O(DATA_OUT_R_c_16));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_15 (.I(DATA_OUT_R[15]), .O(DATA_OUT_R_c_15));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_14 (.I(DATA_OUT_R[14]), .O(DATA_OUT_R_c_14));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_13 (.I(DATA_OUT_R[13]), .O(DATA_OUT_R_c_13));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_12 (.I(DATA_OUT_R[12]), .O(DATA_OUT_R_c_12));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_11 (.I(DATA_OUT_R[11]), .O(DATA_OUT_R_c_11));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_10 (.I(DATA_OUT_R[10]), .O(DATA_OUT_R_c_10));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_9 (.I(DATA_OUT_R[9]), .O(DATA_OUT_R_c_9));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_8 (.I(DATA_OUT_R[8]), .O(DATA_OUT_R_c_8));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_7 (.I(DATA_OUT_R[7]), .O(DATA_OUT_R_c_7));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_6 (.I(DATA_OUT_R[6]), .O(DATA_OUT_R_c_6));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_5 (.I(DATA_OUT_R[5]), .O(DATA_OUT_R_c_5));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_4 (.I(DATA_OUT_R[4]), .O(DATA_OUT_R_c_4));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_3 (.I(DATA_OUT_R[3]), .O(DATA_OUT_R_c_3));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_2 (.I(DATA_OUT_R[2]), .O(DATA_OUT_R_c_2));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_1 (.I(DATA_OUT_R[1]), .O(DATA_OUT_R_c_1));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    IB DATA_OUT_R_pad_0 (.I(DATA_OUT_R[0]), .O(DATA_OUT_R_c_0));   // c:/fpga/projects/fxbox/i2s_master.vhd(35[5:15])
    FD1S3AX DATA_OUT_R_BUF_i4 (.D(DATA_OUT_R_c_4), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[4]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i4.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i5 (.D(DATA_OUT_R_c_5), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[5]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i5.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i6 (.D(DATA_OUT_R_c_6), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[6]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i6.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i7 (.D(DATA_OUT_R_c_7), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[7]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i7.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i8 (.D(DATA_OUT_R_c_8), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[8]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i8.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i9 (.D(DATA_OUT_R_c_9), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[9]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i9.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i10 (.D(DATA_OUT_R_c_10), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[10]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i10.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i11 (.D(DATA_OUT_R_c_11), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[11]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i11.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i12 (.D(DATA_OUT_R_c_12), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[12]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i12.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i13 (.D(DATA_OUT_R_c_13), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[13]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i13.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i14 (.D(DATA_OUT_R_c_14), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[14]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i14.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i15 (.D(DATA_OUT_R_c_15), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[15]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i15.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i16 (.D(DATA_OUT_R_c_16), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[16]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i16.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i17 (.D(DATA_OUT_R_c_17), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[17]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i17.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i18 (.D(DATA_OUT_R_c_18), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[18]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i18.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i19 (.D(DATA_OUT_R_c_19), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[19]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i19.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i20 (.D(DATA_OUT_R_c_20), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[20]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i20.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i21 (.D(DATA_OUT_R_c_21), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[21]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i21.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i22 (.D(DATA_OUT_R_c_22), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[22]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i22.GSR = "DISABLED";
    FD1S3AX DATA_OUT_R_BUF_i23 (.D(DATA_OUT_R_c_23), .CK(WCLK_c), .Q(DATA_OUT_R_BUF[23]));   // c:/fpga/projects/fxbox/i2s_master.vhd(204[3] 208[10])
    defparam DATA_OUT_R_BUF_i23.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i1 (.D(DATA_OUT_SR_L_23__N_1[1]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[1]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i1.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i2 (.D(DATA_OUT_SR_L_23__N_1[2]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[2]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i2.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i3 (.D(DATA_OUT_SR_L_23__N_1[3]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[3]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i3.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i4 (.D(DATA_OUT_SR_L_23__N_1[4]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[4]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i4.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i5 (.D(DATA_OUT_SR_L_23__N_1[5]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[5]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i5.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i6 (.D(DATA_OUT_SR_L_23__N_1[6]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[6]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i6.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i7 (.D(DATA_OUT_SR_L_23__N_1[7]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[7]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i7.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i8 (.D(DATA_OUT_SR_L_23__N_1[8]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[8]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i8.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i9 (.D(DATA_OUT_SR_L_23__N_1[9]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[9]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i9.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i10 (.D(DATA_OUT_SR_L_23__N_1[10]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[10]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i10.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i11 (.D(DATA_OUT_SR_L_23__N_1[11]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[11]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i11.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i12 (.D(DATA_OUT_SR_L_23__N_1[12]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[12]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i12.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i13 (.D(DATA_OUT_SR_L_23__N_1[13]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[13]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i13.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i14 (.D(DATA_OUT_SR_L_23__N_1[14]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[14]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i14.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i15 (.D(DATA_OUT_SR_L_23__N_1[15]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[15]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i15.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i16 (.D(DATA_OUT_SR_L_23__N_1[16]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[16]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i16.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i17 (.D(DATA_OUT_SR_L_23__N_1[17]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[17]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i17.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i18 (.D(DATA_OUT_SR_L_23__N_1[18]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[18]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i18.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i19 (.D(DATA_OUT_SR_L_23__N_1[19]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[19]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i19.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i20 (.D(DATA_OUT_SR_L_23__N_1[20]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[20]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i20.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i21 (.D(DATA_OUT_SR_L_23__N_1[21]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[21]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i21.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i22 (.D(DATA_OUT_SR_L_23__N_1[22]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[22]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i22.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_L_i23 (.D(DATA_OUT_SR_L_23__N_1[23]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_L[23]));   // c:/fpga/projects/fxbox/i2s_master.vhd(222[3] 230[10])
    defparam DATA_OUT_SR_L_i23.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i1 (.D(DATA_OUT_SR_R_23__N_27[1]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[1]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i1.GSR = "DISABLED";
    LUT4 DATA_OUT_SR_R_22__I_0_i21_3_lut (.A(DATA_OUT_SR_R[19]), .B(DATA_OUT_R_BUF[20]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i21_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i20_3_lut (.A(DATA_OUT_SR_R[18]), .B(DATA_OUT_R_BUF[19]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i20_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i19_3_lut (.A(DATA_OUT_SR_R[17]), .B(DATA_OUT_R_BUF[18]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i19_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i18_3_lut (.A(DATA_OUT_SR_R[16]), .B(DATA_OUT_R_BUF[17]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i18_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i17_3_lut (.A(DATA_OUT_SR_R[15]), .B(DATA_OUT_R_BUF[16]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i17_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i16_3_lut (.A(DATA_OUT_SR_R[14]), .B(DATA_OUT_R_BUF[15]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i16_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i15_3_lut (.A(DATA_OUT_SR_R[13]), .B(DATA_OUT_R_BUF[14]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i15_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i14_3_lut (.A(DATA_OUT_SR_R[12]), .B(DATA_OUT_R_BUF[13]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i14_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i13_3_lut (.A(DATA_OUT_SR_R[11]), .B(DATA_OUT_R_BUF[12]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i13_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i12_3_lut (.A(DATA_OUT_SR_R[10]), .B(DATA_OUT_R_BUF[11]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i12_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i11_3_lut (.A(DATA_OUT_SR_R[9]), .B(DATA_OUT_R_BUF[10]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i10_3_lut (.A(DATA_OUT_SR_R[8]), .B(DATA_OUT_R_BUF[9]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i10_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i9_3_lut (.A(DATA_OUT_SR_R[7]), .B(DATA_OUT_R_BUF[8]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i8_3_lut (.A(DATA_OUT_SR_R[6]), .B(DATA_OUT_R_BUF[7]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i7_3_lut (.A(DATA_OUT_SR_R[5]), .B(DATA_OUT_R_BUF[6]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i6_3_lut (.A(DATA_OUT_SR_R[4]), .B(DATA_OUT_R_BUF[5]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i5_3_lut (.A(DATA_OUT_SR_R[3]), .B(DATA_OUT_R_BUF[4]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i4_3_lut (.A(DATA_OUT_SR_R[2]), .B(DATA_OUT_R_BUF[3]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i3_3_lut (.A(DATA_OUT_SR_R[1]), .B(DATA_OUT_R_BUF[2]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_R_22__I_0_i2_3_lut (.A(DATA_OUT_SR_R[0]), .B(DATA_OUT_R_BUF[1]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i24_3_lut (.A(DATA_OUT_L_BUF[23]), .B(DATA_OUT_SR_L[22]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i24_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i23_3_lut (.A(DATA_OUT_L_BUF[22]), .B(DATA_OUT_SR_L[21]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i23_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i22_3_lut (.A(DATA_OUT_L_BUF[21]), .B(DATA_OUT_SR_L[20]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i22_3_lut.init = 16'hcaca;
    FD1S3AX DATA_OUT_SR_R_i2 (.D(DATA_OUT_SR_R_23__N_27[2]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[2]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i2.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i3 (.D(DATA_OUT_SR_R_23__N_27[3]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[3]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i3.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i4 (.D(DATA_OUT_SR_R_23__N_27[4]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[4]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i4.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i5 (.D(DATA_OUT_SR_R_23__N_27[5]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[5]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i5.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i6 (.D(DATA_OUT_SR_R_23__N_27[6]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[6]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i6.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i7 (.D(DATA_OUT_SR_R_23__N_27[7]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[7]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i7.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i8 (.D(DATA_OUT_SR_R_23__N_27[8]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[8]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i8.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i9 (.D(DATA_OUT_SR_R_23__N_27[9]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[9]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i9.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i10 (.D(DATA_OUT_SR_R_23__N_27[10]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[10]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i10.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i11 (.D(DATA_OUT_SR_R_23__N_27[11]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[11]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i11.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i12 (.D(DATA_OUT_SR_R_23__N_27[12]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[12]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i12.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i13 (.D(DATA_OUT_SR_R_23__N_27[13]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[13]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i13.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i14 (.D(DATA_OUT_SR_R_23__N_27[14]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[14]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i14.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i15 (.D(DATA_OUT_SR_R_23__N_27[15]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[15]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i15.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i16 (.D(DATA_OUT_SR_R_23__N_27[16]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[16]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i16.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i17 (.D(DATA_OUT_SR_R_23__N_27[17]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[17]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i17.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i18 (.D(DATA_OUT_SR_R_23__N_27[18]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[18]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i18.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i19 (.D(DATA_OUT_SR_R_23__N_27[19]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[19]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i19.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i20 (.D(DATA_OUT_SR_R_23__N_27[20]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[20]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i20.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i21 (.D(DATA_OUT_SR_R_23__N_27[21]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[21]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i21.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i22 (.D(DATA_OUT_SR_R_23__N_27[22]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[22]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i22.GSR = "DISABLED";
    FD1S3AX DATA_OUT_SR_R_i23 (.D(DATA_OUT_SR_R_23__N_27[23]), .CK(BCLK_SR), 
            .Q(DATA_OUT_SR_R[23]));   // c:/fpga/projects/fxbox/i2s_master.vhd(236[3] 244[10])
    defparam DATA_OUT_SR_R_i23.GSR = "DISABLED";
    FD1S3AX BIT_CTR_90__i1 (.D(n29), .CK(BCLK_SR), .Q(BIT_CTR[1]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_90__i1.GSR = "ENABLED";
    LUT4 DATA_OUT_SR_L_22__I_0_i21_3_lut (.A(DATA_OUT_L_BUF[20]), .B(DATA_OUT_SR_L[19]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i21_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i20_3_lut (.A(DATA_OUT_L_BUF[19]), .B(DATA_OUT_SR_L[18]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i20_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i19_3_lut (.A(DATA_OUT_L_BUF[18]), .B(DATA_OUT_SR_L[17]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i19_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i18_3_lut (.A(DATA_OUT_L_BUF[17]), .B(DATA_OUT_SR_L[16]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i18_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i17_3_lut (.A(DATA_OUT_L_BUF[16]), .B(DATA_OUT_SR_L[15]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i17_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i16_3_lut (.A(DATA_OUT_L_BUF[15]), .B(DATA_OUT_SR_L[14]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i16_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i15_3_lut (.A(DATA_OUT_L_BUF[14]), .B(DATA_OUT_SR_L[13]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i15_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i14_3_lut (.A(DATA_OUT_L_BUF[13]), .B(DATA_OUT_SR_L[12]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i14_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i13_3_lut (.A(DATA_OUT_L_BUF[12]), .B(DATA_OUT_SR_L[11]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i13_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i12_3_lut (.A(DATA_OUT_L_BUF[11]), .B(DATA_OUT_SR_L[10]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i12_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i11_3_lut (.A(DATA_OUT_L_BUF[10]), .B(DATA_OUT_SR_L[9]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i10_3_lut (.A(DATA_OUT_L_BUF[9]), .B(DATA_OUT_SR_L[8]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i10_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i9_3_lut (.A(DATA_OUT_L_BUF[8]), .B(DATA_OUT_SR_L[7]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i8_3_lut (.A(DATA_OUT_L_BUF[7]), .B(DATA_OUT_SR_L[6]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i7_3_lut (.A(DATA_OUT_L_BUF[6]), .B(DATA_OUT_SR_L[5]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i6_3_lut (.A(DATA_OUT_L_BUF[5]), .B(DATA_OUT_SR_L[4]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i5_3_lut (.A(DATA_OUT_L_BUF[4]), .B(DATA_OUT_SR_L[3]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i4_3_lut (.A(DATA_OUT_L_BUF[3]), .B(DATA_OUT_SR_L[2]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i3_3_lut (.A(DATA_OUT_L_BUF[2]), .B(DATA_OUT_SR_L[1]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 DATA_OUT_SR_L_22__I_0_i2_3_lut (.A(DATA_OUT_L_BUF[1]), .B(DATA_OUT_SR_L[0]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 DATA_T_I_0_4_lut (.A(DATA_OUT_SR_R[23]), .B(READY_c), .C(DATA_OUT_SR_L[23]), 
         .D(WCLK_c), .Z(DATA_c)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(217[10:28])
    defparam DATA_T_I_0_4_lut.init = 16'hc088;
    LUT4 MRST_N_I_0_1_lut (.A(MRST_N_c), .Z(MRST_N_N_67)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(84[7:19])
    defparam MRST_N_I_0_1_lut.init = 16'h5555;
    LUT4 i116_1_lut (.A(BIT_CTR[0]), .Z(n30)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i116_1_lut.init = 16'h5555;
    FD1S3AX BIT_CTR_90__i2 (.D(n28), .CK(BCLK_SR), .Q(BIT_CTR[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_90__i2.GSR = "ENABLED";
    FD1S3AX BIT_CTR_90__i3 (.D(n27), .CK(BCLK_SR), .Q(BIT_CTR[3]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_90__i3.GSR = "ENABLED";
    FD1S3AX BIT_CTR_90__i4 (.D(n26), .CK(BCLK_SR), .Q(BIT_CTR[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_90__i4.GSR = "ENABLED";
    FD1S3DX READY_T_73 (.D(READY_FLAG), .CK(WCLK_c), .CD(MRST_N_N_67), 
            .Q(READY_c));   // c:/fpga/projects/fxbox/i2s_master.vhd(84[3] 96[10])
    defparam READY_T_73.GSR = "DISABLED";
    LUT4 DATA_OUT_SR_R_22__I_0_i1_3_lut (.A(DATA_OUT_SR_R[23]), .B(DATA_OUT_R_BUF[0]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_R_23__N_27[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(238[4] 242[11])
    defparam DATA_OUT_SR_R_22__I_0_i1_3_lut.init = 16'hcaca;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 DATA_OUT_SR_L_22__I_0_i1_3_lut (.A(DATA_OUT_L_BUF[0]), .B(DATA_OUT_SR_L[23]), 
         .C(WCLK_c), .Z(DATA_OUT_SR_L_23__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(224[4] 228[11])
    defparam DATA_OUT_SR_L_22__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i163_2_lut (.A(BCLK_c), .B(BCLK_GATE), .Z(BCLK_SR)) /* synthesis lut_function=(!(A (B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/std_1164.vhd(1013[30:45])
    defparam i163_2_lut.init = 16'h7777;
    LUT4 i121_2_lut_rep_2 (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n666)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i121_2_lut_rep_2.init = 16'h8888;
    LUT4 i125_2_lut_3_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[2]), 
         .Z(n28)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i125_2_lut_3_lut.init = 16'h7878;
    VLO i166 (.Z(GND_net));
    LUT4 i156_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[2]), .Z(n658)) /* synthesis lut_function=(A (B)) */ ;
    defparam i156_2_lut.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i139_3_lut_4_lut (.A(BIT_CTR[2]), .B(n666), .C(BIT_CTR[3]), .D(BIT_CTR[4]), 
         .Z(n26)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i139_3_lut_4_lut.init = 16'h7f80;
    LUT4 m1_lut (.Z(n669)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 WCLK_I_0_2_lut (.A(WCLK_c), .B(WCLK_R), .Z(WCLK_EDGE_N_68)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/projects/fxbox/i2s_master.vhd(107[17:32])
    defparam WCLK_I_0_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

