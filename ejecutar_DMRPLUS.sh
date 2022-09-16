#!/bin/bash
sudo killall -9 MMDVMPLUS
sudo sed -i '6c MMDVMPLUS=ON' /home/pi/status.ini
cd /home/pi/MMDVMHost
sudo ./MMDVMPLUS MMDVMPLUS.ini
xterm -geometry 73x10+16+151 -bg black -fg orange -fa ‘verdana’ -fs 8x -T CONSOLA_DMRPLUS -e sudo ./MMDVMPLUS MMDVPLUS.ini

