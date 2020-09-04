@echo off
set xv_path=D:\\install\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 55fde5f60f5949a3b149fa4e05015a1c -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_vry_BottlePrint_behav xil_defaultlib.tb_vry_BottlePrint -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
