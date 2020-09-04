@echo off
set xv_path=D:\\install\\Xilinx\\Vivado\\2014.4\\bin
echo "xvhdl -m64 -prj tb_vry_BottlePrint_vhdl.prj"
call %xv_path%/xvhdl  -m64 -prj tb_vry_BottlePrint_vhdl.prj -log compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
