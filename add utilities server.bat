@echo off
echo "Adding Utilities Server 169.237.134.37"
netsh advfirewall firewall add rule name="Utilties Server" dir=in action=allow program=any remoteip=169.237.134.37
PAUSE