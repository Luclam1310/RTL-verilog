@echo off
set xv_path=C:\\XILIN\\Vivado\\2015.2\\bin
call %xv_path%/xsim code_Sosanh_4bit_behav -key {Behavioral:sim_1:Functional:code_Sosanh_4bit} -tclbatch code_Sosanh_4bit.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
