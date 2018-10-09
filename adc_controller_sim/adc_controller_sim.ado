setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/fpga/projects/FxBox/adc_controller_sim/adc_controller_sim.adf"]} { 
	design create adc_controller_sim "C:/fpga/projects/FxBox"
  set newDesign 1
}
design open "C:/fpga/projects/FxBox/adc_controller_sim"
cd "C:/fpga/projects/FxBox"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/fpga/projects/FxBox/src/pkg/fxbox_pkg.vhd"
addfile "C:/fpga/projects/FxBox/adc_controller.vhd"
addfile "C:/fpga/projects/FxBox/adc_controller_tb.vhd"
vlib "C:/fpga/projects/FxBox/adc_controller_sim/work"
set worklib work
adel -all
vcom -dbg -work work "C:/fpga/projects/FxBox/src/pkg/fxbox_pkg.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/adc_controller.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/adc_controller_tb.vhd"
entity testbench
vsim  +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
