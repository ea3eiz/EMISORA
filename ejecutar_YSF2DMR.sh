#!/bin/bash

cd /home/pi/YSF2DMR
xterm -geometry 77x7+650+662 -bg black -fg white -fa 'Verdana' -fs 9x -T YSF2DMR -e ./YSF2DMR YSF2DMR.ini &

sleep 1

cd /home/pi/MMDVMHost
xterm -geometry 77x9+650+798 -bg black -fg white -fa ‘verdana’ -fs 9x -T MMDVMFUSION -e sudo ./MMDVMFUSION MMDVMFUSION.ini
