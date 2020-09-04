@echo off
set xv_path=D:\\install\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim tb_pwm_behav -key {Behavioral:sim_1:Functional:tb_pwm} -tclbatch tb_pwm.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
