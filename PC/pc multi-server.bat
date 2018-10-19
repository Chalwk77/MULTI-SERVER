:: All server consoles will be running, moved and resized within 7.37 to 7.59 seconds.
@echo off
set use_multiclient=false
set instances=1
set minimize_multiclient=false
set move_resize_multiclient=true
set use_server1=true
set use_server2=true
set use_server3=true
set use_server4=true
set use_server5=true
set use_server6=true
set use_server7=true
set use_server8=true

:: --
:: >>>>>>>>>>>>> [ SERVERS ] >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:: --

ECHO                  ____     ______________ __________ ____     __________       ___      _______________
ECHO                  `MM'     `MM'MMMMMMMMMM MMMMMMMMMM `MM'     `MMMMMMMMM       `MM\     `M'MMMMMMMMMMMP
ECHO                   MM       MM /   MM   \ /   MM   \  MM       MM      \        MMM\     M /       dMP
ECHO                   MM       MM     MM         MM      MM       MM               M\MM\    M        dMP
ECHO                   MM       MM     MM         MM      MM       MM    ,          M \MM\   M       dMP
ECHO                   MM       MM     MM         MM      MM       MMMMMMM          M  \MM\  M      dMP
ECHO                   MM       MM     MM         MM      MM       MM    `          M   \MM\ M     dMP
ECHO                   MM       MM     MM         MM      MM       MM               M    \MM\M    dMP
ECHO                   MM       MM     MM         MM      MM       MM               M     \MMM   dMP
ECHO                   MM    /  MM     MM         MM      MM    /  MM      /        M      \MM  dMP       /
ECHO                  _MMMMMMM _MM_   _MM_       _MM_    _MMMMMMM _MMMMMMMMM       _M_      \M dMMMMMMMMMMM
ECHO ------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO Launching servers...
ECHO --------------------
set server_delay=400
IF "%use_server1%"=="true" (
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
  start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv1_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server1 -port 2310
  ECHO "Starting Little NZ 1 | Level Up (modded)"
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
  call :waitfor %server_delay%>nul
  for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
    cmdow %%a /ren "Little NZ 1 | Level Up (modded)"
    cmdow %%a /mov -1680 31
    cmdow %%a /siz 670 450
  )
)
IF "%use_server2%"=="true" (
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
  start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv2_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server2 -port 2311
  ECHO "Starting Little NZ 2 | Juggernaut (modded)"
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
  call :waitfor %server_delay%>nul
  for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
    cmdow %%a /ren "Little NZ 2 | Juggernaut (modded)"
    cmdow %%a /mov -679 31
    cmdow %%a /siz 670 450
  )
)
IF "%use_server3%"=="true" (
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
  start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv3_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server3 -port 2312
  ECHO "Starting Little NZ 3 | Trophy Hunter (modded)"
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
  call :waitfor %server_delay%>nul
  for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
    cmdow %%a /ren "Little NZ 3 | Trophy Hunter (modded)"
    cmdow %%a /mov -1679 627
    cmdow %%a /siz 670 450
  )
)
IF "%use_server4%"=="true" (
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
  start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv4_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server4 -port 2313
  ECHO "Starting Little NZ 4 | Snipers Dream Team Mod"
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
  call :waitfor %server_delay%>nul
  for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
    cmdow %%a /ren "Little NZ 4 | Snipers Dream Team Mod"
    cmdow %%a /mov -679 627
    cmdow %%a /siz 670 450
  )
)
IF "%use_server5%"=="true" (
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
  start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv5_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server5 -port 2314
  ECHO "Starting Little NZ 5 | Classic CTF / No Mods"
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
  call :waitfor %server_delay%>nul
  for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
    cmdow %%a /ren "Little NZ 5 | Classic CTF / No Mods"
    cmdow %%a /mov 1922 77
    cmdow %%a /siz 670 400
  )
)
IF "%use_server6%"=="true" (
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
  start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv6_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server6 -port 2315
  ECHO "Starting Little NZ 6 | Classic Slayer / No Mods"
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
  call :waitfor %server_delay%>nul
  for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
    cmdow %%a /ren "Little NZ 6 | Classic Slayer / No Mods"
    cmdow %%a /mov 2609 77
    cmdow %%a /siz 670 400
  )
)
IF "%use_server7%"=="true" (
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
  start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv7_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server7 -port 2316
  ECHO "Starting Little NZ 7 | Classic KOTH / No Mods"
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
  call :waitfor %server_delay%>nul
  for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
    cmdow %%a /ren "Little NZ 7 | Classic KOTH / No Mods"
    cmdow %%a /mov 1922 480
    cmdow %%a /siz 670 355
  )
)
IF "%use_server8%"=="true" (
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
  start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv8_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server8 -port 2317
  ECHO "Starting Little NZ 8 | Classic Rockets / No Mods"
  cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
  call :waitfor %server_delay%>nul
  for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
    cmdow %%a /ren "Little NZ 8 | Classic Rockets / No Mods"
    cmdow %%a /mov 2609 480
    cmdow %%a /siz 670 355
  )
)
ECHO.
ECHO ALL SERVERS ARE NOW RUNNING
ECHO ------------------------------------------------------------------------------------------------------------------------
:: --
:: >>>>>>>>>>>>> [ MULTI CLIENTS ] >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:: --

set mc_delay=5000
IF "%use_multiclient%"=="true" (
  ECHO.
  ECHO Launching Multiclients...
  ECHO -------------------------
  IF "%use_server1%"=="true" (
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 1 | Level Up (modded)"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2310
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    call :waitfor %mc_delay%>nul
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 1 | Little NZ 1 | Level Up (modded)"
      IF "%move_resize_multiclient%"=="true" (
        cmdow %%a /mov -1680 31
        cmdow %%a /siz 440 340
      )
      IF "%minimize_multiclient%"=="true" (
        cmdow %%a /min
      )
    )
  )
  IF "%use_server2%"=="true" (
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 2 | Juggernaut (modded)"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2311
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    call :waitfor %mc_delay%>nul
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 2 | Little NZ 2 | Juggernaut (modded)"
      IF "%move_resize_multiclient%"=="true" (
        cmdow %%a /mov -1680 31
        cmdow %%a /siz 440 340
      )
      IF "%minimize_multiclient%"=="true" (
        cmdow %%a /min
      )
    )
  )
  IF "%use_server3%"=="true" (
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 3 | Trophy Hunter (modded)"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2312
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    call :waitfor %mc_delay%>nul
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 3 | Little NZ 3 | Trophy Hunter (modded)"
      IF "%move_resize_multiclient%"=="true" (
        cmdow %%a /mov -1680 31
        cmdow %%a /siz 440 340
      )
      IF "%minimize_multiclient%"=="true" (
        cmdow %%a /min
      )
    )
  )
  IF "%use_server4%"=="true" (
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 4 | Snipers Dream Team Mod"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2313
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    call :waitfor %mc_delay%>nul
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 4 | Little NZ 4 | Snipers Dream Team Mod"
      IF "%move_resize_multiclient%"=="true" (
        cmdow %%a /mov -1680 31
        cmdow %%a /siz 440 340
      )
      IF "%minimize_multiclient%"=="true" (
        cmdow %%a /min
      )
    )
  )
  IF "%use_server5%"=="true" (
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 5 | Classic CTF / No Mods"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2314
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    call :waitfor %mc_delay%>nul
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 5 | Little NZ 5 | Classic CTF / No Mods"
      IF "%move_resize_multiclient%"=="true" (
        cmdow %%a /mov -1680 31
        cmdow %%a /siz 440 340
      )
      IF "%minimize_multiclient%"=="true" (
        cmdow %%a /min
      )
    )
  )
  IF "%use_server6%"=="true" (
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 6 | Classic Slayer / No Mods"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2315
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    call :waitfor %mc_delay%>nul
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 6 | Little NZ 6 | Classic Slayer / No Mods"
      IF "%move_resize_multiclient%"=="true" (
        cmdow %%a /mov -1680 31
        cmdow %%a /siz 440 340
      )
      IF "%minimize_multiclient%"=="true" (
        cmdow %%a /min
      )
    )
  )
  IF "%use_server7%"=="true" (
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 7 | Classic KOTH / No Mods"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2316
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    call :waitfor %mc_delay%>nul
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 7 | Little NZ 7 | Classic KOTH / No Mods"
      IF "%move_resize_multiclient%"=="true" (
        cmdow %%a /mov -1680 31
        cmdow %%a /siz 440 340
      )
      IF "%minimize_multiclient%"=="true" (
        cmdow %%a /min
      )
    )
  )
  IF "%use_server8%"=="true" (
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 8 | Classic Rockets / No Mods"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2317
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    call :waitfor %mc_delay%>nul
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 8 | Little NZ 8 | Classic Rockets / No Mods"
      IF "%move_resize_multiclient%"=="true" (
        cmdow %%a /mov -1680 31
        cmdow %%a /siz 440 340
      )
      IF "%minimize_multiclient%"=="true" (
        cmdow %%a /min
      )
    )
  )
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
