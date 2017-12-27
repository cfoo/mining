ECHO OFF
setx GPU_FORCE_64BIT_PTR 0
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

set wallet=-epool us2.ethermine.org:14444 -ewal [YOUR_WALLET]] -epsw [YOUR_PASSWORD]
set cclock=-cclock 1200,1200,1200,1200,1200,1200
set mclock=-mclock 2125,2125,2125,2125,2125,2125
set cvddc=-cvddc 900,900,900,900,900,900
set fans=-tt 50,50,50,50,50,50 -fanmin 50,50,50,50,50,50
set options=-etha 0 -esm 0 -estale 1 -mode 1 -ftime 10 -gser 2

ECHO ON
EthDcrMiner64.exe %wallet%  %cclock% %mclock% %cvddc% %options%
