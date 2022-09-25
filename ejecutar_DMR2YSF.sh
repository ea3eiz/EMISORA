#!/bin/bash

cd /home/pi/DMR2YSF/
xterm -geometry 77x3+1276+56 -bg yellow -fg black -fa 'Verdana' -fs 9x -T DMR2YSF -e ./DMR2YSF DMR2YSF.ini &

sleep 1

cd /home/pi/YSFClients/YSFGateway/
xterm -geometry 77x3+1276+132 -bg yellow -fg black -fa 'Verdana' -fs 9x -T YSFGATEWAY -e sudo ./YSFGateway YSFGateway.ini &

sleep 1

cd /home/pi/MMDVMHost
xterm -geometry 77x5+1276+209 -bg yellow -fg black -fa ‘verdana’ -fs 9x -T MMDVMDMR2YSF -e sudo ./DMR2YSF MMDVMDMR2YSF.ini
