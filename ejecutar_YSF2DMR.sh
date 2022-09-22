#!/bin/bash
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
Pcian="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"
printf "${Pcian}"
cd /home/pi/YSF2DMR
#xterm -geometry 72x6+620+504 -bg blue -fg white -fa 'Verdana' -fs 9x -T YSF2DMR -e ./YSF2DMR YSF2DMR.ini &
xterm -geometry 72x6+620+504 -fa 'Verdana' -fs 9x -T YSF2DMR -e ./YSF2DMR YSF2DMR.ini &

sleep 1

cd /home/pi/MMDVMHost
xterm -geometry 72x6+620+628 -bg cian -fg white -fa ‘verdana’ -fs 9x -T MMDVMFUSION -e sudo ./MMDVMFUSION MMDVMFUSION.ini
