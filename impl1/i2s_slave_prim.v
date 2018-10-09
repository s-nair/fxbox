// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Sep 24 21:54:34 2018
//
// Verilog Description of module i2s_slave
//

module i2s_slave (MRST_N, BCLK, WCLK, DATA, DATA_IN_L, DATA_IN_R, 
            READY);   // c:/fpga/projects/fxbox/i2s_slave.vhd(26[8:17])
    input MRST_N;   // c:/fpga/projects/fxbox/i2s_slave.vhd(30[10:16])
    input BCLK;   // c:/fpga/projects/fxbox/i2s_slave.vhd(31[5:9])
    input WCLK;   // c:/fpga/projects/fxbox/i2s_slave.vhd(32[5:9])
    input DATA;   // c:/fpga/projects/fxbox/i2s_slave.vhd(33[5:9])
    output [23:0]DATA_IN_L;   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    output [23:0]DATA_IN_R;   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    output READY;   // c:/fpga/projects/fxbox/i2s_slave.vhd(36[5:10])
    
    wire BCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_c */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(31[5:9])
    wire WCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=WCLK_c */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(32[5:9])
    wire WCLK_EDGE /* synthesis is_clock=1, SET_AS_NETWORK=WCLK_EDGE */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(51[9:18])
    wire BCLK_SR_L /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_SR_L */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(54[9:18])
    wire BCLK_SR_R /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_SR_R */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(55[9:18])
    wire BCLK_N_11 /* synthesis is_inv_clock=1 */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(48[9:22])
    wire BCLK_c_derived_5 /* synthesis is_clock=1, SET_AS_NETWORK=BCLK_c_derived_5 */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(31[5:9])
    
    wire n502, MRST_N_c, DATA_c, DATA_IN_L_c_23, DATA_IN_L_c_22, DATA_IN_L_c_21, 
        DATA_IN_L_c_20, DATA_IN_L_c_19, DATA_IN_L_c_18, DATA_IN_L_c_17, 
        DATA_IN_L_c_16, DATA_IN_L_c_15, DATA_IN_L_c_14, DATA_IN_L_c_13, 
        DATA_IN_L_c_12, DATA_IN_L_c_11, DATA_IN_L_c_10, DATA_IN_L_c_9, 
        DATA_IN_L_c_8, DATA_IN_L_c_7, DATA_IN_L_c_6, DATA_IN_L_c_5, 
        DATA_IN_L_c_4, DATA_IN_L_c_3, DATA_IN_L_c_2, DATA_IN_L_c_1, 
        DATA_IN_L_c_0, DATA_IN_R_c_23, DATA_IN_R_c_22, DATA_IN_R_c_21, 
        DATA_IN_R_c_20, DATA_IN_R_c_19, DATA_IN_R_c_18, DATA_IN_R_c_17, 
        DATA_IN_R_c_16, DATA_IN_R_c_15, DATA_IN_R_c_14, DATA_IN_R_c_13, 
        DATA_IN_R_c_12, DATA_IN_R_c_11, DATA_IN_R_c_10, DATA_IN_R_c_9, 
        DATA_IN_R_c_8, DATA_IN_R_c_7, DATA_IN_R_c_6, DATA_IN_R_c_5, 
        DATA_IN_R_c_4, DATA_IN_R_c_3, DATA_IN_R_c_2, DATA_IN_R_c_1, 
        DATA_IN_R_c_0, READY_c, READY_FLAG;
    wire [4:0]BIT_CTR;   // c:/fpga/projects/fxbox/i2s_slave.vhd(47[9:16])
    
    wire BIT_CTR_RST_N, WCLK_R, BCLK_GATE, MRST_N_N_15, WCLK_EDGE_N_16, 
        READY_FLAG_N_13, DATA_FULL_N_9, VCC_net, n505, n508, GND_net, 
        n26, n27, n28, n29, n30;
    
    LUT4 i1_2_lut_3_lut (.A(BCLK_c), .B(BCLK_GATE), .C(WCLK_c), .Z(BCLK_SR_R)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0808;
    FD1S3AX WCLK_R_53 (.D(WCLK_c), .CK(BCLK_c), .Q(WCLK_R));   // c:/fpga/projects/fxbox/i2s_slave.vhd(97[3] 102[10])
    defparam WCLK_R_53.GSR = "DISABLED";
    FD1S3AX WCLK_EDGE_54 (.D(WCLK_EDGE_N_16), .CK(BCLK_c), .Q(WCLK_EDGE));   // c:/fpga/projects/fxbox/i2s_slave.vhd(97[3] 102[10])
    defparam WCLK_EDGE_54.GSR = "DISABLED";
    FD1S3DX BIT_CTR_RST_N_56 (.D(DATA_FULL_N_9), .CK(BCLK_N_11), .CD(READY_FLAG_N_13), 
            .Q(BIT_CTR_RST_N));   // c:/fpga/projects/fxbox/i2s_slave.vhd(127[3] 139[10])
    defparam BIT_CTR_RST_N_56.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i3 (.D(DATA_IN_R_c_1), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_2));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i3.GSR = "DISABLED";
    LUT4 i100_2_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n29)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i100_2_lut.init = 16'h6666;
    FD1S3AX DATA_IN_R_T_i2 (.D(DATA_IN_R_c_0), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_1));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i2.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i24 (.D(DATA_IN_L_c_22), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_23));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i24.GSR = "DISABLED";
    FD1S3AX BCLK_GATE_58 (.D(n508), .CK(WCLK_EDGE), .Q(BCLK_GATE));   // c:/fpga/projects/fxbox/i2s_slave.vhd(172[3] 180[10])
    defparam BCLK_GATE_58.GSR = "ENABLED";
    FD1S3AX DATA_IN_R_T_i1 (.D(DATA_c), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_0));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i1.GSR = "DISABLED";
    OB DATA_IN_L_pad_22 (.I(DATA_IN_L_c_22), .O(DATA_IN_L[22]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    FD1S3DX READY_52 (.D(READY_FLAG), .CK(WCLK_c), .CD(MRST_N_N_15), .Q(READY_c));   // c:/fpga/projects/fxbox/i2s_slave.vhd(77[3] 89[10])
    defparam READY_52.GSR = "DISABLED";
    FD1S3AX BIT_CTR_65__i0 (.D(n30), .CK(BCLK_c_derived_5), .Q(BIT_CTR[0]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_65__i0.GSR = "ENABLED";
    FD1S3DX READY_FLAG_51 (.D(n508), .CK(WCLK_c), .CD(MRST_N_N_15), .Q(READY_FLAG));   // c:/fpga/projects/fxbox/i2s_slave.vhd(77[3] 89[10])
    defparam READY_FLAG_51.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i23 (.D(DATA_IN_L_c_21), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_22));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i23.GSR = "DISABLED";
    LUT4 MRST_N_I_0_1_lut (.A(MRST_N_c), .Z(MRST_N_N_15)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(77[7:19])
    defparam MRST_N_I_0_1_lut.init = 16'h5555;
    FD1S3AX DATA_IN_L_T_i22 (.D(DATA_IN_L_c_20), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_21));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i22.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_1 (.A(BCLK_c), .B(BCLK_GATE), .Z(BCLK_c_derived_5)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1.init = 16'h8888;
    LUT4 i98_1_lut (.A(BIT_CTR[0]), .Z(n30)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i98_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_adj_1 (.A(BCLK_c), .B(BCLK_GATE), .C(WCLK_c), 
         .Z(BCLK_SR_L)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_1.init = 16'h8080;
    GSR GSR_INST (.GSR(BIT_CTR_RST_N));
    LUT4 i142_2_lut (.A(BIT_CTR[3]), .B(BIT_CTR[4]), .Z(n502)) /* synthesis lut_function=(A (B)) */ ;
    defparam i142_2_lut.init = 16'h8888;
    OB DATA_IN_L_pad_23 (.I(DATA_IN_L_c_23), .O(DATA_IN_L[23]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    FD1S3AX DATA_IN_L_T_i21 (.D(DATA_IN_L_c_19), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_20));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i21.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i20 (.D(DATA_IN_L_c_18), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_19));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i20.GSR = "DISABLED";
    VLO i147 (.Z(GND_net));
    FD1S3AX DATA_IN_L_T_i19 (.D(DATA_IN_L_c_17), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_18));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i19.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i18 (.D(DATA_IN_L_c_16), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_17));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i18.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i17 (.D(DATA_IN_L_c_15), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_16));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i17.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i16 (.D(DATA_IN_L_c_14), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_15));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i16.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i15 (.D(DATA_IN_L_c_13), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_14));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i15.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i14 (.D(DATA_IN_L_c_12), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_13));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i14.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i13 (.D(DATA_IN_L_c_11), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_12));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i13.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i12 (.D(DATA_IN_L_c_10), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_11));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i12.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i11 (.D(DATA_IN_L_c_9), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_10));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i11.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i10 (.D(DATA_IN_L_c_8), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_9));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i10.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i9 (.D(DATA_IN_L_c_7), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_8));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i9.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i8 (.D(DATA_IN_L_c_6), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_7));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i8.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i7 (.D(DATA_IN_L_c_5), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_6));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i7.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i6 (.D(DATA_IN_L_c_4), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_5));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i6.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i5 (.D(DATA_IN_L_c_3), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_4));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i5.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i4 (.D(DATA_IN_L_c_2), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_3));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i4.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i3 (.D(DATA_IN_L_c_1), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_2));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i3.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i2 (.D(DATA_IN_L_c_0), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_1));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i2.GSR = "DISABLED";
    FD1S3AX DATA_IN_L_T_i1 (.D(DATA_c), .CK(BCLK_SR_L), .Q(DATA_IN_L_c_0));   // c:/fpga/projects/fxbox/i2s_slave.vhd(192[3] 196[10])
    defparam DATA_IN_L_T_i1.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i4 (.D(DATA_IN_R_c_2), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_3));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i4.GSR = "DISABLED";
    OB DATA_IN_L_pad_21 (.I(DATA_IN_L_c_21), .O(DATA_IN_L[21]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_20 (.I(DATA_IN_L_c_20), .O(DATA_IN_L[20]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_19 (.I(DATA_IN_L_c_19), .O(DATA_IN_L[19]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_18 (.I(DATA_IN_L_c_18), .O(DATA_IN_L[18]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_17 (.I(DATA_IN_L_c_17), .O(DATA_IN_L[17]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_16 (.I(DATA_IN_L_c_16), .O(DATA_IN_L[16]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_15 (.I(DATA_IN_L_c_15), .O(DATA_IN_L[15]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_14 (.I(DATA_IN_L_c_14), .O(DATA_IN_L[14]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_13 (.I(DATA_IN_L_c_13), .O(DATA_IN_L[13]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_12 (.I(DATA_IN_L_c_12), .O(DATA_IN_L[12]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_11 (.I(DATA_IN_L_c_11), .O(DATA_IN_L[11]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_10 (.I(DATA_IN_L_c_10), .O(DATA_IN_L[10]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_9 (.I(DATA_IN_L_c_9), .O(DATA_IN_L[9]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_8 (.I(DATA_IN_L_c_8), .O(DATA_IN_L[8]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_7 (.I(DATA_IN_L_c_7), .O(DATA_IN_L[7]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_6 (.I(DATA_IN_L_c_6), .O(DATA_IN_L[6]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_5 (.I(DATA_IN_L_c_5), .O(DATA_IN_L[5]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_4 (.I(DATA_IN_L_c_4), .O(DATA_IN_L[4]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_3 (.I(DATA_IN_L_c_3), .O(DATA_IN_L[3]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_2 (.I(DATA_IN_L_c_2), .O(DATA_IN_L[2]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_1 (.I(DATA_IN_L_c_1), .O(DATA_IN_L[1]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_L_pad_0 (.I(DATA_IN_L_c_0), .O(DATA_IN_L[0]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(34[5:14])
    OB DATA_IN_R_pad_23 (.I(DATA_IN_R_c_23), .O(DATA_IN_R[23]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_22 (.I(DATA_IN_R_c_22), .O(DATA_IN_R[22]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_21 (.I(DATA_IN_R_c_21), .O(DATA_IN_R[21]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_20 (.I(DATA_IN_R_c_20), .O(DATA_IN_R[20]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_19 (.I(DATA_IN_R_c_19), .O(DATA_IN_R[19]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_18 (.I(DATA_IN_R_c_18), .O(DATA_IN_R[18]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_17 (.I(DATA_IN_R_c_17), .O(DATA_IN_R[17]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_16 (.I(DATA_IN_R_c_16), .O(DATA_IN_R[16]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_15 (.I(DATA_IN_R_c_15), .O(DATA_IN_R[15]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_14 (.I(DATA_IN_R_c_14), .O(DATA_IN_R[14]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_13 (.I(DATA_IN_R_c_13), .O(DATA_IN_R[13]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_12 (.I(DATA_IN_R_c_12), .O(DATA_IN_R[12]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_11 (.I(DATA_IN_R_c_11), .O(DATA_IN_R[11]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_10 (.I(DATA_IN_R_c_10), .O(DATA_IN_R[10]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_9 (.I(DATA_IN_R_c_9), .O(DATA_IN_R[9]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_8 (.I(DATA_IN_R_c_8), .O(DATA_IN_R[8]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_7 (.I(DATA_IN_R_c_7), .O(DATA_IN_R[7]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_6 (.I(DATA_IN_R_c_6), .O(DATA_IN_R[6]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_5 (.I(DATA_IN_R_c_5), .O(DATA_IN_R[5]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_4 (.I(DATA_IN_R_c_4), .O(DATA_IN_R[4]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_3 (.I(DATA_IN_R_c_3), .O(DATA_IN_R[3]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_2 (.I(DATA_IN_R_c_2), .O(DATA_IN_R[2]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_1 (.I(DATA_IN_R_c_1), .O(DATA_IN_R[1]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB DATA_IN_R_pad_0 (.I(DATA_IN_R_c_0), .O(DATA_IN_R[0]));   // c:/fpga/projects/fxbox/i2s_slave.vhd(35[5:14])
    OB READY_pad (.I(READY_c), .O(READY));   // c:/fpga/projects/fxbox/i2s_slave.vhd(36[5:10])
    IB MRST_N_pad (.I(MRST_N), .O(MRST_N_c));   // c:/fpga/projects/fxbox/i2s_slave.vhd(30[10:16])
    IB BCLK_pad (.I(BCLK), .O(BCLK_c));   // c:/fpga/projects/fxbox/i2s_slave.vhd(31[5:9])
    IB WCLK_pad (.I(WCLK), .O(WCLK_c));   // c:/fpga/projects/fxbox/i2s_slave.vhd(32[5:9])
    IB DATA_pad (.I(DATA), .O(DATA_c));   // c:/fpga/projects/fxbox/i2s_slave.vhd(33[5:9])
    FD1S3AX DATA_IN_R_T_i5 (.D(DATA_IN_R_c_3), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_4));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i5.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i6 (.D(DATA_IN_R_c_4), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_5));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i6.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i7 (.D(DATA_IN_R_c_5), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_6));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i7.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i8 (.D(DATA_IN_R_c_6), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_7));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i8.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i9 (.D(DATA_IN_R_c_7), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_8));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i9.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i10 (.D(DATA_IN_R_c_8), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_9));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i10.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i11 (.D(DATA_IN_R_c_9), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_10));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i11.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i12 (.D(DATA_IN_R_c_10), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_11));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i12.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i13 (.D(DATA_IN_R_c_11), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_12));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i13.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i14 (.D(DATA_IN_R_c_12), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_13));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i14.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i15 (.D(DATA_IN_R_c_13), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_14));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i15.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i16 (.D(DATA_IN_R_c_14), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_15));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i16.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i17 (.D(DATA_IN_R_c_15), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_16));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i17.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i18 (.D(DATA_IN_R_c_16), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_17));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i18.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i19 (.D(DATA_IN_R_c_17), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_18));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i19.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i20 (.D(DATA_IN_R_c_18), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_19));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i20.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i21 (.D(DATA_IN_R_c_19), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_20));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i21.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i22 (.D(DATA_IN_R_c_20), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_21));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i22.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i23 (.D(DATA_IN_R_c_21), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_22));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i23.GSR = "DISABLED";
    FD1S3AX DATA_IN_R_T_i24 (.D(DATA_IN_R_c_22), .CK(BCLK_SR_R), .Q(DATA_IN_R_c_23));   // c:/fpga/projects/fxbox/i2s_slave.vhd(202[3] 206[10])
    defparam DATA_IN_R_T_i24.GSR = "DISABLED";
    FD1S3AX BIT_CTR_65__i1 (.D(n29), .CK(BCLK_c_derived_5), .Q(BIT_CTR[1]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_65__i1.GSR = "ENABLED";
    FD1S3AX BIT_CTR_65__i2 (.D(n28), .CK(BCLK_c_derived_5), .Q(BIT_CTR[2]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_65__i2.GSR = "ENABLED";
    FD1S3AX BIT_CTR_65__i3 (.D(n27), .CK(BCLK_c_derived_5), .Q(BIT_CTR[3]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_65__i3.GSR = "ENABLED";
    FD1S3AX BIT_CTR_65__i4 (.D(n26), .CK(BCLK_c_derived_5), .Q(BIT_CTR[4]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam BIT_CTR_65__i4.GSR = "ENABLED";
    LUT4 i103_2_lut_rep_2 (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .Z(n505)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i103_2_lut_rep_2.init = 16'h8888;
    LUT4 i107_2_lut_3_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[2]), 
         .Z(n28)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i107_2_lut_3_lut.init = 16'h7878;
    LUT4 i114_2_lut_3_lut_4_lut (.A(BIT_CTR[1]), .B(BIT_CTR[0]), .C(BIT_CTR[3]), 
         .D(BIT_CTR[2]), .Z(n27)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i114_2_lut_3_lut_4_lut.init = 16'h78f0;
    INV i150 (.A(BCLK_c), .Z(BCLK_N_11));   // c:/fpga/projects/fxbox/i2s_slave.vhd(31[5:9])
    LUT4 i121_3_lut_4_lut (.A(BIT_CTR[2]), .B(n505), .C(BIT_CTR[3]), .D(BIT_CTR[4]), 
         .Z(n26)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i121_3_lut_4_lut.init = 16'h7f80;
    LUT4 WCLK_I_0_2_lut (.A(WCLK_c), .B(WCLK_R), .Z(WCLK_EDGE_N_16)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(100[17:32])
    defparam WCLK_I_0_2_lut.init = 16'h6666;
    VHI i148 (.Z(VCC_net));
    LUT4 i3_4_lut (.A(BIT_CTR[0]), .B(BIT_CTR[2]), .C(BIT_CTR[1]), .D(n502), 
         .Z(DATA_FULL_N_9)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n508)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 READY_FLAG_I_0_1_lut (.A(READY_FLAG), .Z(READY_FLAG_N_13)) /* synthesis lut_function=(!(A)) */ ;   // c:/fpga/projects/fxbox/i2s_slave.vhd(127[7:23])
    defparam READY_FLAG_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

