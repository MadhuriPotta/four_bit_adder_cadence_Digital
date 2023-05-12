# RTL Script to run Basic Synthesis Flow
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib/    
set_db hdl_search_path /home/mkhobragade/ADD4

set_db library slow.lib
read_hdl FA.v
read_hdl 4bit.v
elaborate 
# read_sdc /home/mkhobragade/counter4bit/constraints_sdc.sdc
set_top_module four_bit_adder
set_dont_use *XL
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt


write_hdl > FA_netlist.v
write_sdc > FA_block.sdc
report_area > FA_area.rep
# report_gates > counter_gate.rep
report_power > FA_power.rep
report_timing > FA_timing.rep
report_qor > FA_qor.rep
gui_show


