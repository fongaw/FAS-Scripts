@echo off
echo "Please enter Static IP Address Information in this step"
echo "Enter the Static IP Address:"
set /p IP_Addr=
echo "Changing Static IP Address"

echo "Changing Default Gateway:"
set D_Gate= \\\\\\\*REMOVEDFORPRIVACY*///////

echo "Changing Subnet Mask:"
set Sub_Mask= \\\\\\\*REMOVEDFORPRIVACY*///////

echo "Configuring Static IP Information"

netsh interface ip set address "Ethernet" static %IP_Addr% %Sub_Mask% %D_Gate% gwmetric=0

echo "Configuring DNS Settings."
netsh interface ip set dns name="Ethernet" static \\\\\\\*REMOVEDFORPRIVACY*/////// primary
netsh interface ip add dns name="Ethernet" \\\\\\\*REMOVEDFORPRIVACY*///////
netsh interface ip add dns name="Ethernet" \\\\\\\*REMOVEDFORPRIVACY*///////
netsh interface ip add dns name="Ethernet" \\\\\\\*REMOVEDFORPRIVACY*///////
echo "Ignore the error configuring DNS"

echo "Configuring registry to append DNS suffixes"
reg add "HKLM\System\currentcontrolset\services\tcpip\parameters" /v SearchList /d "\\\\\\\*REMOVEDFORPRIVACY*///////,\\\\\\\*REMOVEDFORPRIVACY*///////,\\\\\\\*REMOVEDFORPRIVACY*///////,\\\\\\\*REMOVEDFORPRIVACY*///////" /f

echo "Configuring WINS, Enable NetBIOS over TCP/IP"
wmic nicconfig where index=1 call SetTcpipNetbios 1

ECHO "Here are the new settings for %computername%:"
ipconfig 
rem netsh int ip show config
pause
