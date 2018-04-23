@echo off

REM IMPORTANT: Replace the ETH address with your own ETH wallet address in the -wal option (Rig001 is the name of the rig)

set wallet=-wal ETHER_ADDRESS.Rig001 -pass xxx 

setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

set pool=-pool ssl://us2.ethermine.org:5555 -pool2 ssl://us1.ethermine.org:5555
set options=-amd -wdog 1 -rmode 2 -proto 3
set clock=-cclock 1200 -mclock 2125
set vcc=-mvddc 960
set fans=-tt 60 -fanmin 75

PhoenixMiner.exe %pool% %wallet% %options% %clock% %fans% 
pause
