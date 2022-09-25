#!/bin/bash

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"

clear
echo "${VERDE}"
echo " **************************************************************************"
echo "                          ABRIENDO SOLO DSTAR                              "
echo " **************************************************************************"
sleep 2

# Cierra dstar en DVSwitch Server
sudo systemctl stop ircddbgatewayd
# Ejecuta Solo D-STAR
sudo sed -i '13c SOLODSTAR=ON' /home/pi/status.ini
cd /home/pi/MMDVMHost
sudo ircddbgateway -gui & 

#xterm -geometry 77x9+1276+56 -bg Green -fg black -fa 'verdana' -fs 9x -T DSTAR -e ./MMDVMDSTAR MMDVMDSTAR.ini &


sudo xterm -geometry 87x12+1200+56 -bg Green -fg black -fa 'Verdana' -fs 9x -T DSTAR -e ./MMDVMDSTAR MMDVMDSTAR.ini &



#sudo ./MMDVMDSTAR MMDVMDSTAR.ini
sudo sed -i '13c SOLODSTAR=ON' /home/pi/status.ini


