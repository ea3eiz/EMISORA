#!/bin/bash

cd /home/pi/MMDVMHost
xterm -geometry 77x9+1276+151 -bg Violet -fg black -fa ‘verdana’ -fs 9x -T MMDVMNXDN -e sudo ./MMDVMNXDN MMDVMNXDN.ini &

sleep 1
cd /home/pi/NXDNClients/NXDNGateway
xterm -geometry 77x4+1276+56 -bg Violet -fg black -fa 'Verdana' -fs 9x -T NXDNGateway -e ./NXDNGateway NXDNGateway.ini







