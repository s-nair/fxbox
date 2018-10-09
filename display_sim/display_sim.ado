setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/fpga/projects/FxBox/display_sim/display_sim.adf"]} { 
	design create display_sim "C:/fpga/projects/FxBox"
  set newDesign 1
}
design open "C:/fpga/projects/FxBox/display_sim"
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
addfile "C:/fpga/projects/FxBox/pdpram/._Real_._Math_.vhd"
addfile "C:/fpga/projects/FxBox/src/clock_tree.vhd"
addfile "C:/fpga/projects/FxBox/src/input_handler.vhd"
addfile "C:/fpga/projects/FxBox/rom/screen_echo.vhd"
addfile "C:/fpga/projects/FxBox/rom/screen_reverb.vhd"
addfile "C:/fpga/projects/FxBox/rom/screen_clean.vhd"
addfile "C:/fpga/projects/FxBox/rom/ascii_table.vhd"
addfile "C:/fpga/projects/FxBox/pdpram/ram_data.vhd"
addfile "C:/fpga/projects/FxBox/src/i2c_master.vhd"
addfile "C:/fpga/projects/FxBox/src/i2c_controller.vhd"
addfile "C:/fpga/projects/FxBox/src/display_driver.vhd"
addfile "C:/fpga/projects/FxBox/src/box_top.vhd"
addfile "C:/fpga/projects/FxBox/src/tb/box_top_tb.vhd"
addfile "C:/fpga/projects/FxBox/rom/ascii_table.vhd"
addfile "C:/fpga/projects/FxBox/rom/screen_clean.vhd"
addfile "C:/fpga/projects/FxBox/rom/screen_reverb.vhd"
addfile "C:/fpga/projects/FxBox/rom/screen_echo.vhd"
addfile "C:/fpga/projects/FxBox/pdpram/ram_data.vhd"
vlib "C:/fpga/projects/FxBox/display_sim/work"
set worklib work
adel -all
vcom -dbg -work work "C:/fpga/projects/FxBox/src/pkg/fxbox_pkg.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/pdpram/._Real_._Math_.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/src/clock_tree.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/src/input_handler.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/rom/screen_echo.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/rom/screen_reverb.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/rom/screen_clean.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/rom/ascii_table.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/pdpram/ram_data.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/src/i2c_master.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/src/i2c_controller.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/src/display_driver.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/src/box_top.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/src/tb/box_top_tb.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/rom/ascii_table.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/rom/screen_clean.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/rom/screen_reverb.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/rom/screen_echo.vhd"
vcom -dbg -work work "C:/fpga/projects/FxBox/pdpram/ram_data.vhd"
entity testbench
vsim  +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
