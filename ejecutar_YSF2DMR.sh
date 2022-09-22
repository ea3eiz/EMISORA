#!/bin/bash

cd /home/pi/YSF2DMR
xterm -geometry 72x7+620+502 -bg blue -fg wite -fa 'Verdana' -fs 9x -T YSF2DMR -e ./YSF2DMR YSF2DMR.ini &

sleep 1

cd /home/pi/MMDVMHost
xterm -geometry 72x9+620+632 -bg blue -fg white -fa ‘verdana’ -fs 9x -T MMDVMFUSION -e sudo ./MMDVMFUSION MMDVMFUSION.ini
