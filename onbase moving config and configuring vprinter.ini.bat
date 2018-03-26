@echo off
setlocal enableextensions
echo "Connecting to FAOALPHA \\\\\\\*REMOVEDFORPRIVACY*///////"
pushd \\\\\\\*REMOVEDFORPRIVACY*///////
echo "Installing vcredist_x86.exe"
vcredist_x86.exe /wait
echo "Copying obunity.exe.config from \\\\\\\*REMOVEDFORPRIVACY*/////// to C:\Program Files (x86)\Hyland\Unity Client"
xcopy "obunity.exe.config" "C:\Program Files (x86)\Hyland\Unity Client"

pushd \\\\\\\*REMOVEDFORPRIVACY*///////
echo "Copying Hyland OnBase Virtual Print Driver x64 from \\\\\\\*REMOVEDFORPRIVACY*/////// to C:\"
xcopy "Hyland OnBase Virtual Print Driver x64.msi" "C:\Program Files"
cd "C:\Program Files"
"Hyland OnBase Virtual Print Driver x64.msi"
endlocal

echo "Configuring vprinter.ini"
cd c:\windows
ICACLS "vprinter.ini" /grant users:m

echo "Executing HISPrn.exe to change C:\spool to S:\"
cd C:\Program Files\Hyland\Virtual Printer
HSIPrn.exe
pause
