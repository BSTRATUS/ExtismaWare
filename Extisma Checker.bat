@echo off
:loop
setlocal
call :setESCECHO OFF
TITLE Extisma's Checker (Info shown is what reflects via changes)
ECHO **********************************
Color 0F
ECHO **********************************
:start
cls
ECHO MOBO
wmic baseboard get serialnumber
wmic logicaldisk where drivetype=3 get name,volumeserialnumber
wmic path win32_computersystemproduct get uuid
wmic nic get macaddress, description 
echo Press any key to get your hardware serials again.
pause>nul
goto start