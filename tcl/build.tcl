source [pwd]/tcl/config.tcl
source [pwd]/tcl/project.tcl

# Synthesis
launch_run synth_1 -jobs 4
wait_on_run synth_1

# Implementation
launch_run impl_1 -jobs 4 -to_step write_bitstream
wait_on_run impl_1
