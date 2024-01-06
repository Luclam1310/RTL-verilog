@echo off
set xv_path=C:\\XILIN\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 19715304332b4fe98ce770bc6f6b2fab -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot code_Mux2_1_behav xil_defaultlib.code_Mux2_1 xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
