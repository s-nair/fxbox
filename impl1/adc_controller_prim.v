// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Wed Sep 12 22:12:12 2018
//
// Verilog Description of module adc_controller
//

module adc_controller (MRST_N, ADC_CLK, ADC_BCK, ADC_LRCK, ADC_PON_CLK, 
            ADC_DATA, ADC_CLIPL_P, ADC_SM, ADC_FMT1, ADC_FMT0, ADC_FS2, 
            ADC_FS1, ADC_FS0, ADC_HPFD_P, ADC_SCKI_EN, ADC_RST_N);   // c:/fpga/projects/fxbox/adc_controller.vhd(11[8:22])
    input MRST_N;   // c:/fpga/projects/fxbox/adc_controller.vhd(12[10:16])
    input ADC_CLK;   // c:/fpga/projects/fxbox/adc_controller.vhd(13[4:11])
    input ADC_BCK;   // c:/fpga/projects/fxbox/adc_controller.vhd(14[4:11])
    input ADC_LRCK;   // c:/fpga/projects/fxbox/adc_controller.vhd(15[4:12])
    input ADC_PON_CLK;   // c:/fpga/projects/fxbox/adc_controller.vhd(16[4:15])
    input ADC_DATA;   // c:/fpga/projects/fxbox/adc_controller.vhd(17[4:12])
    input ADC_CLIPL_P;   // c:/fpga/projects/fxbox/adc_controller.vhd(18[4:15])
    output ADC_SM;   // c:/fpga/projects/fxbox/adc_controller.vhd(19[4:10])
    output ADC_FMT1;   // c:/fpga/projects/fxbox/adc_controller.vhd(20[4:12])
    output ADC_FMT0;   // c:/fpga/projects/fxbox/adc_controller.vhd(21[4:12])
    output ADC_FS2;   // c:/fpga/projects/fxbox/adc_controller.vhd(22[4:11])
    output ADC_FS1;   // c:/fpga/projects/fxbox/adc_controller.vhd(23[4:11])
    output ADC_FS0;   // c:/fpga/projects/fxbox/adc_controller.vhd(24[4:11])
    output ADC_HPFD_P;   // c:/fpga/projects/fxbox/adc_controller.vhd(25[4:14])
    output ADC_SCKI_EN;   // c:/fpga/projects/fxbox/adc_controller.vhd(26[4:15])
    output ADC_RST_N;   // c:/fpga/projects/fxbox/adc_controller.vhd(27[4:13])
    
    wire ADC_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=ADC_CLK_c */ ;   // c:/fpga/projects/fxbox/adc_controller.vhd(13[4:11])
    
    wire GND_net, VCC_net, ADC_SCKI_EN_c_c, ADC_RST_N_c;
    wire [4:0]RST_WAIT_SR;   // c:/fpga/projects/fxbox/adc_controller.vhd(34[9:20])
    
    wire n33;
    
    VHI i2 (.Z(VCC_net));
    GSR GSR_INST (.GSR(ADC_SCKI_EN_c_c));
    OB ADC_FMT1_pad (.I(GND_net), .O(ADC_FMT1));   // c:/fpga/projects/fxbox/adc_controller.vhd(20[4:12])
    OB ADC_SM_pad (.I(GND_net), .O(ADC_SM));   // c:/fpga/projects/fxbox/adc_controller.vhd(19[4:10])
    OB ADC_FMT0_pad (.I(GND_net), .O(ADC_FMT0));   // c:/fpga/projects/fxbox/adc_controller.vhd(21[4:12])
    OB ADC_FS2_pad (.I(GND_net), .O(ADC_FS2));   // c:/fpga/projects/fxbox/adc_controller.vhd(22[4:11])
    OB ADC_FS1_pad (.I(VCC_net), .O(ADC_FS1));   // c:/fpga/projects/fxbox/adc_controller.vhd(23[4:11])
    OB ADC_FS0_pad (.I(GND_net), .O(ADC_FS0));   // c:/fpga/projects/fxbox/adc_controller.vhd(24[4:11])
    OB ADC_HPFD_P_pad (.I(GND_net), .O(ADC_HPFD_P));   // c:/fpga/projects/fxbox/adc_controller.vhd(25[4:14])
    OB ADC_SCKI_EN_pad (.I(ADC_SCKI_EN_c_c), .O(ADC_SCKI_EN));   // c:/fpga/projects/fxbox/adc_controller.vhd(26[4:15])
    OB ADC_RST_N_pad (.I(ADC_RST_N_c), .O(ADC_RST_N));   // c:/fpga/projects/fxbox/adc_controller.vhd(27[4:13])
    IB ADC_SCKI_EN_c_pad (.I(MRST_N), .O(ADC_SCKI_EN_c_c));   // c:/fpga/projects/fxbox/adc_controller.vhd(12[10:16])
    IB ADC_CLK_pad (.I(ADC_CLK), .O(ADC_CLK_c));   // c:/fpga/projects/fxbox/adc_controller.vhd(13[4:11])
    FD1S3AX RST_WAIT_SR_i1 (.D(RST_WAIT_SR[0]), .CK(ADC_CLK_c), .Q(RST_WAIT_SR[1]));   // c:/fpga/projects/fxbox/adc_controller.vhd(64[3] 72[10])
    defparam RST_WAIT_SR_i1.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i2 (.D(RST_WAIT_SR[1]), .CK(ADC_CLK_c), .Q(RST_WAIT_SR[2]));   // c:/fpga/projects/fxbox/adc_controller.vhd(64[3] 72[10])
    defparam RST_WAIT_SR_i2.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i3 (.D(RST_WAIT_SR[2]), .CK(ADC_CLK_c), .Q(RST_WAIT_SR[3]));   // c:/fpga/projects/fxbox/adc_controller.vhd(64[3] 72[10])
    defparam RST_WAIT_SR_i3.GSR = "ENABLED";
    FD1S3AX RST_WAIT_SR_i4 (.D(RST_WAIT_SR[3]), .CK(ADC_CLK_c), .Q(ADC_RST_N_c));   // c:/fpga/projects/fxbox/adc_controller.vhd(64[3] 72[10])
    defparam RST_WAIT_SR_i4.GSR = "ENABLED";
    LUT4 m1_lut (.Z(n33)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1S3AX RST_WAIT_SR_i0 (.D(n33), .CK(ADC_CLK_c), .Q(RST_WAIT_SR[0]));   // c:/fpga/projects/fxbox/adc_controller.vhd(64[3] 72[10])
    defparam RST_WAIT_SR_i0.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

