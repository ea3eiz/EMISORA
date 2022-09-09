#!/bin/bash
puerto_router=$(awk "NR==1" /home/pi/.local/ambe_server.ini) 
puerto_modem=$(awk "NR==2" /home/pi/.local/ambe_server.ini)
baut_rate=$(awk "NR==3" /home/pi/.local/ambe_server.ini)

cd /home/pi/AMBE_SERVER

sudo killall -9 AMBEserver
sleep 1
./AMBEserver -p $puerto_router -i $puerto_modem -s $baut_rate


