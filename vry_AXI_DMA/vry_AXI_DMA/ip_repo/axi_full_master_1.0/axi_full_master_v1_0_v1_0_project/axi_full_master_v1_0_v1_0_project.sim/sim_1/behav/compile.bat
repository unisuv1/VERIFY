@echo off
set xv_path=D:\\install\\Xilinx\\Vivado\\2014.4\\bin
echo "xvlog -m64 -prj tb_axi_full_master_vlog.prj"
call %xv_path%/xvlog  -m64 -prj tb_axi_full_master_vlog.prj -log compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
