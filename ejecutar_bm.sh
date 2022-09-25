#!/bin/bash
sudo killall -9 MMDVMBM
sudo sed -i "7c MMDVMBM=ON" /home/pi/status.ini
cd /home/pi/MMDVMHost
xterm -geometry 73x10+16+151 -bg brown -fg white -fa ‘verdana’ -fs 8x -T CONSOLA_BRANDMEISTER -e sudo ./MMDVMBM MMDVMBM.ini
