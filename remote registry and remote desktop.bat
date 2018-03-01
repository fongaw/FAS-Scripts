@echo off
Echo "Enabling Remote Desktop"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

Echo "Configuring Remote Registry"
sc config remoteregistry start= auto

Echo "Starting Remote Registry"
sc start remoteregistry

Echo "Adding Registry DisableIdleStop"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RemoteRegistry" /v "DisableIdleStop" /t REG_DWORD /d 1 /f
ECHO "Created Registry DisableIdleStop"
ECHO "Finished with Registry changes"
PAUSE