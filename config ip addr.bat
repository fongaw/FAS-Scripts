@echo off
echo "Please enter Static IP Address Information in this step"
echo "Enter the Static IP Address:"
set /p IP_Addr=
echo "Changing Static IP Address"

echo "Changing Default Gateway:"
set D_Gate= 169.237.134.126

echo "Changing Subnet Mask:"
set Sub_Mask= 255.255.255.128

echo "Configuring Static IP Information"

netsh interface ip set address "Ethernet" static %IP_Addr% %Sub_Mask% %D_Gate% gwmetric=0

echo "Configuring DNS Settings."
netsh interface ip set dns name="Ethernet" static 169.237.229.82 primary
netsh interface ip add dns name="Ethernet" 169.237.229.83
netsh interface ip add dns name="Ethernet" 169.237.1.250
netsh interface ip add dns name="Ethernet" 169.237.250.250
echo "Ignore the error configuring DNS"

echo "Configuring registry to append DNS suffixes"
reg add "HKLM\System\currentcontrolset\services\tcpip\parameters" /v SearchList /d "ou.ad3.ucdavis.edu,ex.ad3.ucdavis.edu,ad3.ucdavis.edu,ucdavis.edu" /f

echo "Configuring WINS, Enable NetBIOS over TCP/IP"
wmic nicconfig where index=1 call SetTcpipNetbios 1

ECHO "Here are the new settings for %computername%:"
ipconfig 
rem netsh int ip show config
pause
