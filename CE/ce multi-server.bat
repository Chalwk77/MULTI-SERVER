@echo off

set use_multiclient=false
set instances=1

cd "C:\Program Files (x86)\Microsoft Games\Halo Custom Edition\HCE - SAPP SERVER"
start haloceded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\CE\sv1_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\CE\server1 -port 2310
start haloceded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\CE\sv2_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\CE\server2 -port 2311
start haloceded.exe -exec C:\Users\Jericho\Desktop\MULTI-SERVER\CE\sv3_init.txt -path C:\Users\Jericho\Desktop\MULTI-SERVER\CE\server3 -port 2312

IF %use_multiclient%==true (
  FOR /L %%i IN (1,1,%instances%) DO (
      cd "C:\Program Files (x86)\Microsoft Games\Halo Custom Edition"
      start HCE_Multiclient.exe haloce.exe -console -novideo -window -vidmode 800,600 -connect localhost:2310
  )
  FOR /L %%i IN (1,1,%instances%) DO (
      cd "C:\Program Files (x86)\Microsoft Games\Halo Custom Edition"
      SLEEP 3
      start HCE_Multiclient.exe haloce.exe -console -novideo -window -vidmode 800,600 -connect localhost:2311
  )
  FOR /L %%i IN (1,1,%instances%) DO (
      cd "C:\Program Files (x86)\Microsoft Games\Halo Custom Edition"
      start HCE_Multiclient.exe haloce.exe -console -novideo -window -vidmode 800,600 -connect localhost:2312
  )
)

exit
