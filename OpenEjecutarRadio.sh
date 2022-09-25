#!/bin/bash
sudo killall -9 MMDVMHost
sudo sed -i '5c MMDVM=ON' /home/pi/status.ini
cd /home/pi/MMDVMHost
xterm -geometry 73x10+1058+151 -bg blue -fg white -fa ‘verdana’ -fs 8x -T CONSOLA_RADIO -e sudo ./MMDVMHost MMDVM.ini
