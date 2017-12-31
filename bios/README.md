# Bios Modding

There are people out there that does a much better job with the instructions. Follow these and you will be fine. [AMD/ATI Flashing Guide ](https://www.techpowerup.com/forums/threads/amd-ati-flashing-guide.212849/)

You can use the bios provided in the bios folder.

Latest settings for 30Mh/s+

Using: [biostar_rx580_clocknvcc.rom](https://github.com/cfoo/mining/blob/master/bios/biostar/biostar_rx580_clocknvcc.rom)

``` shell
@ECHO OFF
setx GPU_FORCE_64BIT_PTR 0
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

set wallet=-epool us2.ethermine.org:14444 -ewal [YOUR_WALLET]] -epsw [YOUR_PASSWORD]
set cclock=-cclock 1200
set mclock=-mclock 2125
set cvddc=-cvddc 850
set fans=-tt 50 -fanmin 50
set options=-etha 0 -esm 0 -estale 1 -mode 1 -ftime 10 -gser 2

@ECHO ON
EthDcrMiner64.exe %wallet%  %cclock% %mclock% %cvddc% %options% %fans%
pause
```
