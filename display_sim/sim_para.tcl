lappend auto_path "C:/lscc/diamond/3.10_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {display_sim}
set ::bali::simulation::Para(PROJECTPATH) {C:/fpga/projects/FxBox}
set ::bali::simulation::Para(FILELIST) {"C:/fpga/projects/FxBox/src/pkg/fxbox_pkg.vhd" "C:/fpga/projects/FxBox/pdpram/._Real_._Math_.vhd" "C:/fpga/projects/FxBox/src/clock_tree.vhd" "C:/fpga/projects/FxBox/src/input_handler.vhd" "C:/fpga/projects/FxBox/rom/screen_echo.vhd" "C:/fpga/projects/FxBox/rom/screen_reverb.vhd" "C:/fpga/projects/FxBox/rom/screen_clean.vhd" "C:/fpga/projects/FxBox/rom/ascii_table.vhd" "C:/fpga/projects/FxBox/pdpram/ram_data.vhd" "C:/fpga/projects/FxBox/src/i2c_master.vhd" "C:/fpga/projects/FxBox/src/i2c_controller.vhd" "C:/fpga/projects/FxBox/src/display_driver.vhd" "C:/fpga/projects/FxBox/src/box_top.vhd" "C:/fpga/projects/FxBox/src/tb/box_top_tb.vhd" "C:/fpga/projects/FxBox/rom/ascii_table.vhd" "C:/fpga/projects/FxBox/rom/screen_clean.vhd" "C:/fpga/projects/FxBox/rom/screen_reverb.vhd" "C:/fpga/projects/FxBox/rom/screen_echo.vhd" "C:/fpga/projects/FxBox/pdpram/ram_data.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {testbench}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
