:: All server consoles will be running, moved and resized within 8 seconds.
@echo off
SET use_multiclient=true
set instances=1
ECHO ------------------------------------------------------------------
ECHO Launching servers...
ECHO ------------------------------------------------------------------

cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv1_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server1 -port 2310
ECHO "Starting Little NZ 1 | Level Up (modded)"
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
TIMEOUT /T 1 /NOBREAK
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 1 | Level Up (modded)"
  cmdow %%a /mov -1680 31
  cmdow %%a /siz 670 450
)
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv2_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server2 -port 2311
ECHO "Starting Little NZ 2 | Juggernaut (modded)"
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
TIMEOUT /T 1 /NOBREAK
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 2 | Juggernaut (modded)"
  cmdow %%a /mov -683 31
  cmdow %%a /siz 670 450
)
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv3_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server3 -port 2312
ECHO "Starting Little NZ 3 | Trophy Hunter (modded)"
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
TIMEOUT /T 1 /NOBREAK
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 3 | Trophy Hunter (modded)"
  cmdow %%a /mov -1679 627
  cmdow %%a /siz 670 450
)
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv4_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server4 -port 2313
ECHO "Starting Little NZ 4 | Snipers Dream Team Mod"
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
TIMEOUT /T 1 /NOBREAK
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 4 | Snipers Dream Team Mod"
  cmdow %%a /mov -683 627
  cmdow %%a /siz 670 450
)
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv5_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server5 -port 2314
ECHO "Starting Little NZ 5 | Classic CTF / No Mods"
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
TIMEOUT /T 1 /NOBREAK
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 5 | Classic CTF / No Mods"
  cmdow %%a /mov 1922 77
  cmdow %%a /siz 670 400
)
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv6_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server6 -port 2315
ECHO "Starting Little NZ 6 | Classic Slayer / No Mods"
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
TIMEOUT /T 1 /NOBREAK
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 6 | Classic Slayer / No Mods"
  cmdow %%a /mov 2605 77
  cmdow %%a /siz 670 400
)
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv7_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server7 -port 2316
ECHO "Starting Little NZ 7 | Classic KOTH / No Mods"
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
TIMEOUT /T 1 /NOBREAK
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 7 | Classic KOTH / No Mods"
  cmdow %%a /mov 1922 480
  cmdow %%a /siz 670 355
)
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv8_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server8 -port 2317
ECHO "Starting Little NZ 8 | Classic Rockets / No Mods"
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
TIMEOUT /T 1 /NOBREAK
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 8 | Classic Rockets / No Mods"
  cmdow %%a /mov 2605 480
  cmdow %%a /siz 670 355
)

:: --
:: >>>>>>>>>>>>> [ MULTI CLIENTS ] >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:: --
set mc_delay=5
IF "%use_multiclient%"=="true" (
    ECHO ------------------------------------------------------------------
    ECHO Launching multiclients
    ECHO ------------------------------------------------------------------
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 1 | Level Up (modded)"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2310
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    TIMEOUT /T %mc_delay% /NOBREAK
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 1 | Little NZ 1 | Level Up (modded)"
      cmdow %%a /mov -1680 31
      cmdow %%a /siz 440 340
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 2 | Juggernaut (modded)"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2311
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    TIMEOUT /T %mc_delay% /NOBREAK
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 2 | Little NZ 2 | Juggernaut (modded)"
      cmdow %%a /mov -1680 31
      cmdow %%a /siz 440 340
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 3 | Trophy Hunter (modded)"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2312
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    TIMEOUT /T %mc_delay% /NOBREAK
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 3 | Little NZ 3 | Trophy Hunter (modded)"
      cmdow %%a /mov -1680 31
      cmdow %%a /siz 440 340
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 4 | Snipers Dream Team Mod"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2313
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    TIMEOUT /T %mc_delay% /NOBREAK
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 4 | Little NZ 4 | Snipers Dream Team Mod"
      cmdow %%a /mov -1680 31
      cmdow %%a /siz 440 340
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 5 | Classic CTF / No Mods"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2314
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    TIMEOUT /T %mc_delay% /NOBREAK
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 5 | Little NZ 5 | Classic CTF / No Mods"
      cmdow %%a /mov -1680 31
      cmdow %%a /siz 440 340
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 6 | Classic Slayer / No Mods"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2315
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    TIMEOUT /T %mc_delay% /NOBREAK
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 6 | Little NZ 6 | Classic Slayer / No Mods"
      cmdow %%a /mov -1680 31
      cmdow %%a /siz 440 340
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 7 | Classic KOTH / No Mods"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2316
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    TIMEOUT /T %mc_delay% /NOBREAK
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 7 | Little NZ 7 | Classic KOTH / No Mods"
      cmdow %%a /mov -1680 31
      cmdow %%a /siz 440 340
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo"
    FOR /L %%i IN (1,1,%instances%) DO (
      ECHO "Launching multiclient | JOINING: Little NZ 8 | Classic Rockets / No Mods"
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 800,600 -connect localhost:2317
    )
    cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER\ritchielawrence-cmdow-1bbcd2b\bin\Release"
    TIMEOUT /T %mc_delay% /NOBREAK
    for /f %%a in ('cmdow ^| findstr "Halo"') do (
      cmdow %%a /ren "Multiclient 8 | Little NZ 8 | Classic Rockets / No Mods"
      cmdow %%a /mov -1680 31
      cmdow %%a /siz 440 340
    )
)

exit
