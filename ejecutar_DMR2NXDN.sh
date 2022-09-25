#!/bin/bash

cd /home/pi/DMR2NXDN
xterm -geometry 77x3+1276+56 -bg violet -fg black -fa 'Verdana' -fs 9x -T DMR2NXDN -e ./DMR2NXDN DMR2NXDN.ini &

sleep 1

cd /home/pi/MMDVMHost
xterm -geometry 77x5+1276+209 -bg violet -fg black -fa ‘verdana’ -fs 9x -T MMDVMDMR2NXDN -e sudo ./DMR2NXDN MMDVMDMR2NXDN.ini &

sleep 1

cd /home/pi/NXDNClients/NXDNGateway
xterm -geometry 77x3+1276+132 -bg violet -fg black -fa 'Verdana' -fs 9x -T NXDNGateway -e ./NXDNGateway NXDNGateway.ini
