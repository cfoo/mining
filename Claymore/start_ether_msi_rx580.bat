@ECHO OFF
setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

set wallet=-epool us2.ethermine.org:14444 -ewal [WALLET] -epsw [PASSWORD]
set cclock=-cclock 1250
set mclock=-mclock 2100
set cvddc=-cvddc 900
set fans=-tt 50 -fanmin 50
set options=-etha 0 -esm 0 -estale 1 -mode 1 -ftime 10
@ECHO ON
EthDcrMiner64.exe -di 0 %wallet%  %cclock% %mclock% %cvddc% %options% %fans%
