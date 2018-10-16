@echo off

set use_multiclient=false
set instances=1

cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv1_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server1 -port 2310
cd "C:\Users\Jericho\Downloads\ritchielawrence-cmdow-1bbcd2b\bin\Release"
timeout 1
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 1 | Level Up (modded)"
  cmdow %%a /mov -1680 31
  cmdow %%a /siz 670 450
)
timeout 1
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv2_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server2 -port 2311
cd "C:\Users\Jericho\Downloads\ritchielawrence-cmdow-1bbcd2b\bin\Release"
timeout 1
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 2 | Juggernaut (modded)"
  cmdow %%a /mov -683 31
  cmdow %%a /siz 670 450
)
timeout 1
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv3_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server3 -port 2312
cd "C:\Users\Jericho\Downloads\ritchielawrence-cmdow-1bbcd2b\bin\Release"
timeout 1
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 3 | Trophy Hunter (modded)"
  cmdow %%a /mov -1679 627
  cmdow %%a /siz 670 450
)
timeout 1
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv4_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server4 -port 2313
cd "C:\Users\Jericho\Downloads\ritchielawrence-cmdow-1bbcd2b\bin\Release"
timeout 1
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 4 | Snipers Dream Team Mod"
  cmdow %%a /mov -683 627
  cmdow %%a /siz 670 450
)
timeout 1
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv5_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server5 -port 2314
cd "C:\Users\Jericho\Downloads\ritchielawrence-cmdow-1bbcd2b\bin\Release"
timeout 1
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 5 | Classic CTF / No Mods"
  cmdow %%a /mov 1922 77
  cmdow %%a /siz 670 400
)
timeout 1
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv6_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server6 -port 2315
cd "C:\Users\Jericho\Downloads\ritchielawrence-cmdow-1bbcd2b\bin\Release"
timeout 1
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 6 | Classic Slayer / No Mods"
  cmdow %%a /mov 2605 77
  cmdow %%a /siz 670 400
)
timeout 1
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv7_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server7 -port 2316
cd "C:\Users\Jericho\Downloads\ritchielawrence-cmdow-1bbcd2b\bin\Release"
timeout 1
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 7 | Classic KOTH / No Mods"
  cmdow %%a /mov 1922 480
  cmdow %%a /siz 670 355
)
timeout 1
cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv8_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server8 -port 2317
cd "C:\Users\Jericho\Downloads\ritchielawrence-cmdow-1bbcd2b\bin\Release"
timeout 1
for /f %%a in ('cmdow ^| findstr "Halo Console"') do (
  cmdow %%a /ren "Little NZ 8 | Classic Rockets / No Mods"
  cmdow %%a /mov 2605 480
  cmdow %%a /siz 670 355
)
REM --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REM --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF %use_multiclient%==true (
      cd "C:\Program Files (x86)\Microsoft Games\Halo"
      ECHO Please wait...
      ECHO Launching Little NZ Servers....
  FOR /L %%i IN (1,1,%instances%) DO (
      timeout 1
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 50,50 -connect localhost:2310
    )
  FOR /L %%i IN (1,1,%instances%) DO (
      timeout 1
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 50,50 -connect localhost:2311
  )
  FOR /L %%i IN (1,1,%instances%) DO (
      timeout 1
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 50,50 -connect localhost:2312
  )
  FOR /L %%i IN (1,1,%instances%) DO (
      timeout 1
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 50,50 -connect localhost:2313
  )
  FOR /L %%i IN (1,1,%instances%) DO (
      timeout 1
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 50,50 -connect localhost:2314
  )
  FOR /L %%i IN (1,1,%instances%) DO (
      timeout 1
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 50,50 -connect localhost:2315
  )
  FOR /L %%i IN (1,1,%instances%) DO (
      timeout 1
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 50,50 -connect localhost:2316
  )
  FOR /L %%i IN (1,1,%instances%) DO (
      timeout 1
      start HPC_Multiclient.exe halo.exe -console -novideo -window -vidmode 50,50 -connect localhost:2317
  )
)

exit
