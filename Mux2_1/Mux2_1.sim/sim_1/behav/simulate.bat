@echo off
set xv_path=C:\\XILIN\\Vivado\\2015.2\\bin
call %xv_path%/xsim code_Mux2_1_behav -key {Behavioral:sim_1:Functional:code_Mux2_1} -tclbatch code_Mux2_1.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
