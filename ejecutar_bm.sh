#!/bin/bash
sudo killall -9 MMDVMBM
sudo sed -i "7c MMDVMBM=ON" /home/pi/status.ini
cd /home/pi/MMDVMHost
#echo "\33[38;5;138m"
#echo " **************************************************************************"
#echo "                          ABRIENDO BRANDMEISTER                             "
#echo " **************************************************************************"
#sleep 2
xterm -geometry 73x10+16+151 -bg black -fg orange -fa ‘verdana’ -fs 8x -T ACTUALIZANDO_IMAGEN -e sudo ./MMDVMBM MMDVMBM.ini
