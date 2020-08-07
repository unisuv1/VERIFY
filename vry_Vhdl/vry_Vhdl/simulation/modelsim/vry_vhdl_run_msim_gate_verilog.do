transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/install/altera/14.0/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {d:/install/altera/14.0/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {vry_vhdl_8_1200mv_0c_slow.vo}

vlog -vlog01compat -work work +incdir+E:/UV/FPGA/VERIFY/vry_Vhdl/vry_Vhdl/sim {E:/UV/FPGA/VERIFY/vry_Vhdl/vry_Vhdl/sim/tb_vry_vhdl.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_vry_vhdl

add wave *
view structure
view signals
run 1 us
