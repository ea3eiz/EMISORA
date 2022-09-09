#!/bin/bash

sudo sed -i '12c SOLOFUSION=ON' /home/pi/status.ini
echo "\33[38;5;138m"
echo " **************************************************************************"
echo "                          ABRIENDO SOLO FUSION                             "
echo " **************************************************************************"
sleep 2
cd /home/pi/YSFClients/YSFGateway
sudo xterm -geometry 77x9+648+500 -bg black -fg white -fa 'Verdana' -fs 9x -T YSFGateway -e ./YSFGateway YSFGateway.ini & 
cd /home/pi/MMDVMHost
#/home/pi/B108/./qt_info_solofusion & sudo ./MMDVMFUSION MMDVMFUSION.ini
sudo ./MMDVMFUSION MMDVMFUSION.ini


