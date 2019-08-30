source [pwd]/tcl/config.tcl

create_project $project [pwd]/VivadoProject -part $part -force
set_property board_part $board [current_project]

add_files [glob [pwd]/rtl/*.v]

set_property top $top [current_fileset]
set_property file_type SystemVerilog [get_files [glob [pwd]/rtl/*.v]]
update_compile_order -fileset sources_1

add_files -fileset constrs_1 [glob [pwd]/*.xdc]

set_property strategy Flow_RuntimeOptimized [get_runs synth_1]
set_property strategy Flow_Quick [get_runs impl_1]
update_compile_order
