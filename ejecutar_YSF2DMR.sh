#!/bin/bash
cd /home/pi/YSF2DMR
xterm -geometry 77x4+1276+56 -bg brown -fg white -fa 'Verdana' -fs 9x -T YSF2DMR -e ./YSF2DMR YSF2DMR.ini &

sleep 1 
cd /home/pi/MMDVMHost
xterm -geometry 77x9+1276+151 -bg brown -fg white -fa ‘verdana’ -fs 9x -T MMDVMFUSION -e sudo ./MMDVMFUSION MMDVMFUSION.ini
