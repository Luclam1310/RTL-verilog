@echo off
set xv_path=C:\\XILIN\\Vivado\\2015.2\\bin
call %xv_path%/xsim code_Full_Adder_behav -key {Behavioral:sim_1:Functional:code_Full_Adder} -tclbatch code_Full_Adder.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
