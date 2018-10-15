@echo off

set use_multiclient=true
set instances=1

cd "C:\Program Files (x86)\Microsoft Games\Halo\HPC - SAPP SERVER"
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv1_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server1 -port 2310
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv2_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server2 -port 2311
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv3_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server3 -port 2312
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv4_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server4 -port 2313
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv5_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server5 -port 2314
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv6_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server6 -port 2315
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv7_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server7 -port 2316
start haloded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\PC\sv8_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\PC\server8 -port 2317

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
