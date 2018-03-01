@echo off
setlocal enableextensions
echo "Connecting to FAOALPHA 169.237.134.15"
pushd \\169.237.134.15\software\Hyland Onbase\Unity13
echo "Installing vcredist_x86.exe"
vcredist_x86.exe /wait
echo "Copying obunity.exe.config from \\faoalpha\ to C:\Program Files (x86)\Hyland\Unity Client"
xcopy "obunity.exe.config" "C:\Program Files (x86)\Hyland\Unity Client"

pushd \\169.237.134.15\BigFixInstaller\Hyland
echo "Copying Hyland OnBase Virtual Print Driver x64 from \\faoalpha\ to C:\"
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