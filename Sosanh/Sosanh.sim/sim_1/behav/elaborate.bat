@echo off
set xv_path=C:\\XILIN\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto da0bbe99700e4931b09b3cf8b34a0428 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot code_Sosanh_behav xil_defaultlib.code_Sosanh xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
