@echo off
echo "Adding website to trusted sites in Internet Explorer"
rem REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\sisbanner.ucdavs.edu" /v "https" /t REG_DWORD /d 00000002
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\sisbanner.ucdavs.edu" /v "https" /t REG_DWORD /d 00000002
rem HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Update\Policy
echo "Suppressing out of Java Version Out of Date warning"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432node\JavaSoft\Java Update\Policy" /v "EnableJavaUpdate" /t REG_DWORD /d 00000000 
echo "Suppressing update notifications"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432node\JavaSoft\Java Update\Policy" /v "Frequency" /t REG_DWORD /d 00000000 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432node\JavaSoft\Java Update\Policy" /v "NotifyDownload" /t REG_DWORD /d 00000000 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432node\JavaSoft\Java Update\Policy" /v "NotifyInstall" /t REG_DWORD /d 00000000 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432node\JavaSoft\Java Update\Policy" /v "UpdateMin" /t REG_DWORD /d 00000000 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432node\JavaSoft\Java Update\Policy" /v "UpdateSchedule" /t REG_DWORD /d 00000000 
reg add "HKLM\SOFTWARE\JavaSoft\Java Update\Policy" /v EnableJavaUpdate /t REG_DWORD /d 0 /f

reg add "HKLM\Software\Wow6432Node\JavaSoft\Java Update\Policy\EnableJavaUpdate" /v EnableJavaUpdate /t REG_DWORD /d 0 /f
rem "http://www.itninja.com/question/disable-jre-17-u40-update-prompt"
pause