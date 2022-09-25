#!/bin/bash

cd /home/pi/DMR2M17
sudo xterm -geometry 77x4+1276+56 -bg Violet -fg black -fa 'Verdana' -fs 9x -T DMR2M17 -e ./DMR2M17 DMR2M17.ini &

cd /home/pi/MMDVMHost
sudo xterm -geometry 77x9+1276+151 -bg Violet -fg black -fa 'Verdana' -fs 9x -T MMDVMDMR2M17 -e sudo ./MMDVMDMR2M17 MMDVMDMR2M17.ini














  