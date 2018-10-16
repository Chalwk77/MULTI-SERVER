@echo off
for /f "tokens=2,10-11" %%a in ('cmdow /p') do (
if "%%a"=="0" set "WIDTH=%%b" & set "HEIGHT=%%c"
)
set /a "W=(%WIDTH%*100)/233
set /a "H=(%HEIGHT%*1000)/1176
set /a "R=(%WIDTH%-%W%)-20
set /a "T=(%HEIGHT%-%H%)/5
cmdow.exe Execution /res
cmdow.exe Execution /siz %W% %H% /mov %R% %T%
