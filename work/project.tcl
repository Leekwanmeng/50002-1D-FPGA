set projDir "C:/Users/KM/Documents/mojo/bomber_game/work/planAhead"
set projName "bomber_game"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/mojo_top_0.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/alu_1.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/reset_conditioner_2.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/edge_detector_3.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/button_conditioner_4.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/edge_detector_3.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/button_conditioner_4.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/edge_detector_3.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/button_conditioner_4.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/edge_detector_3.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/button_conditioner_4.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/edge_detector_3.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/button_conditioner_4.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/edge_detector_13.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/pn_gen_14.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/character_map_15.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/display_red_16.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/display_blue_17.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/adder_18.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/comparator_19.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/shifter_20.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/Boolean_21.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/pipeline_22.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/pipeline_22.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/pipeline_22.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/pipeline_22.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/pipeline_22.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/counter_27.v" "C:/Users/KM/Documents/mojo/bomber_game/work/verilog/counter_27.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/KM/Documents/mojo/bomber_game/constraint/custom.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
