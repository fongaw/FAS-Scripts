@echo off
echo "Adding Utilities Server \\\\\\\*REMOVEDFORPRIVACY*///////"
netsh advfirewall firewall add rule name="Utilties Server" dir=in action=allow program=any remoteip=\\\\\\\*REMOVEDFORPRIVACY*///////
PAUSE
