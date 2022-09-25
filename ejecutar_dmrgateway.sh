#!/bin/bash

sudo systemctl stop mmdvm_bridge.service #esto se hace para que funcione el DMRGateway






#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"

#home/pi/B108/./aviso_tgs_dmrgateway
echo "${VERDE}"
echo "************************************************************************"
echo "*                        Abriendo DMRGateway                            *"
echo "************************************************************************"
sleep 2
echo "${GRIS}"

cd /home/pi/DMRGateway
sudo ./DMRGateway DMRGateway.ini &
sleep 2
cd /home/pi/MMDVMHost
#sudo ./MMDVMDMRGATEWAY MMDVMDMRGateway.ini 
sudo xterm -geometry 87x16+1200+56 -bg white -fg black -fa 'Verdana' -fs 9x -T MMDVMDMRGateway -e ./MMDVMDMRGATEWAY MMDVMDMRGateway.ini &






