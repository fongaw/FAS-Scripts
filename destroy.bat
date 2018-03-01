@echo off
echo "Deletes Java"
taskkill /im jucheck.exe /f
taskkill /im jusched.exe /f
if exist "C:\Program Files\Common Files\Java\Java Update\jusched.exe" del /q "C:\Program Files\Common Files\Java\Java Update\jusched.exe"
if exist "C:\Program Files (x86)\Common Files\Java\Java Update\jusched.exe" del /q "C:\Program Files (x86)\Common Files\Java\Java Update\jusched.exe"
if exist "C:\Program Files\Common Files\Java\Java Update\jucheck.exe" del /q "C:\Program Files\Common Files\Java\Java Update\jucheck.exe"
if exist "C:\Program Files (x86)\Common Files\Java\Java Update\jucheck.exe" del /q "C:\Program Files (x86)\Common Files\Java\Java Update\jucheck.exe"
reg delete HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Run /v SunJavaUpdateSched
pause