@echo off
set xv_path=D:\\install\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 261fb7fb0d894769838a7690e5abf11a -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L secureip --snapshot tb_vry_declare_func_impl xil_defaultlib.tb_vry_declare xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
