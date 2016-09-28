@echo off
setlocal enabledelayedexpansion

set "adapter=Drahtlos-LAN-Adapter Drahtlosnetzwerkverbindung"
set ipv4= n/a 
set adapterfound=false

for /f "usebackq tokens=1-2 delims=:" %%f in (`ipconfig /all`) do (
    set "item=%%f"
    if /i "!item!"=="!adapter!" (
        set adapterfound=true
    ) else if not "!item!"=="!item:IPv4-Adresse=!" if "!adapterfound!"=="true" (
        set adapterfound=false
        set ipv4=%%g
    )
)

set ipv4=%ipv4:(Bevorzugt)=%
set ipv4=%ipv4:~1,-1%
echo.%ipv4%
