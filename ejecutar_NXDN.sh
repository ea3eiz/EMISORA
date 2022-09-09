#!/bin/bash

cd /home/pi/MMDVMHost
xterm -geometry 77x9+1276+798 -bg black -fg white -fa ‘verdana’ -fs 9x -T MMDVMNXDN -e sudo ./MMDVMNXDN MMDVMNXDN.ini &

sleep 1

cd /home/pi/NXDNClients/NXDNGateway
xterm -geometry 77x7+1276+662 -bg black -fg white -fa 'Verdana' -fs 9x -T NXDNGateway -e ./NXDNGateway NXDNGateway.ini







