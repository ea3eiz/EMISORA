#!/bin/bash
sudo killall -9 MMDVMESPECIAL
sudo sed -i '10c MMDVMESPECIAL=ON' /home/pi/status.ini
cd /home/pi/MMDVMHost
xterm -geometry 73x10+1058+151 -bg yellow -fg black -fa ‘verdana’ -fs 8x -T CONSOLA_ESPECIAL -e sudo ./MMDVMESPECIAL MMDVMESPECIAL.ini
