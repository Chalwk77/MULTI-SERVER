@echo off
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv2_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server2 -port 2311
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
set delay=400
call :waitfor %delay%>nul
for /f %%a in ('cmdow ^| findstr "Console"') do (
    cmdow %%a /ren "Little NZ 2 | Juggernaut (modded)"
    cmdow %%a /mov -683 31
    cmdow %%a /siz 670 450
)
:waitFor
setlocal enabledelayedexpansion
  set "sleepFor=%~1"

  call :currentTime startTime
  :loopStart
    call :currentTime curTime
    call :getTimeDiff result !startTime! !curTime!

   set /A timeDiffMs=!result!*10
   if !timeDiffMs! GTR !sleepFor! ( goto :return )

   set /A timeRemaining=!sleepFor!-!timeDiffMs!
   if !timeRemaining! GTR 1200 ( timeout /nobreak /t 1 >nul 2>&1 )
  goto :loopStart

  :return
endlocal
goto :eof

:currentTime
setlocal
  set "curTime=%TIME%"
  if [^%curTime:~0,1%]==[^ ] set "curTime=0%curTime:~1%"
endlocal & set %~1=%curTime%
goto :eof

:getTimeDiff
setlocal
  set "startTime=%~2"
  set "endTime=%~3"

  set /A startTime=(1%startTime:~0,2%-100)*360000 + (1%startTime:~3,2%-100)*6000 + (1%startTime:~6,2%-100)*100 + (1%startTime:~9,2%-100)
  set /A endTime=(1%endTime:~0,2%-100)*360000 + (1%endTime:~3,2%-100)*6000 + (1%endTime:~6,2%-100)*100 + (1%endTime:~9,2%-100)
  set /A duration=%endTime%-%startTime%
  if %endTime% LSS %startTime% set set /A duration=%startTime%-%endTime%
endlocal & set "%~1=%duration%"
goto :eof
exit