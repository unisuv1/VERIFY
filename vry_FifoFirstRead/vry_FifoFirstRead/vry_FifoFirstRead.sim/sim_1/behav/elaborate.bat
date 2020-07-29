@echo off
set xv_path=D:\\install\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto f8edeeb6154a4a0497748919600d21b2 -m64 --debug typical --relax -L fifo_generator_v12_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_vry_FifoFirstRead_behav xil_defaultlib.tb_vry_FifoFirstRead xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
