#!/bin/bash
sudo killall -9 MMDVMPLUS
sudo sed -i '6c MMDVMPLUS=ON' /home/pi/status.ini
cd /home/pi/MMDVMHost
xterm -geometry 73x10+537+151 -bg white -fg black -fa ‘verdana’ -fs 8x -T CONSOLA_DMRPLUS -e sudo ./MMDVMPLUS MMDVMPLUS.ini
