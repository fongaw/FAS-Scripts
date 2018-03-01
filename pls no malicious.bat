@echo off
Echo "Editing DontOfferThroughWUAU"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 00000001
pause
