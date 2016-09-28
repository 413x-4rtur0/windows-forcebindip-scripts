@echo off

REM User settings
set app_path_full="C:\Program Files (x86)\Microsoft Office\Office14\outlook.exe"

REM Get current WIFI IP
call wireless_lan_ip_refresh.bat > wireless_lan_ip_current.txt
set /p wireless_ip=<wireless_lan_ip_current.txt

REM Run ForceBindIP, app parameters are not possible!
ForceBindIP %wireless_ip% %app_path_full%
