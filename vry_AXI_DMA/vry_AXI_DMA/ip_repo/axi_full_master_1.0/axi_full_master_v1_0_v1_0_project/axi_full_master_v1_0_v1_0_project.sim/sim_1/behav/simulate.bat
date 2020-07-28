@echo off
set xv_path=D:\\install\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim tb_axi_full_master_behav -key {Behavioral:sim_1:Functional:tb_axi_full_master} -tclbatch tb_axi_full_master.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
