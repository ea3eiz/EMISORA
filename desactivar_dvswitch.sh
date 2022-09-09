#!/bin/bash

#sed -i "20c MARCA_DVSWITCH=OFF" /home/pi/status.ini

sed -i "18c DVSWITCH=OFF" /home/pi/status.ini

sudo systemctl stop ysfgateway.service
sudo systemctl stop dmr2ysf.service
sudo systemctl stop analog_bridge.service
sudo systemctl stop ircddbgatewayd.service
sudo systemctl stop md380-emu.service
sudo systemctl stop mmdvm_bridge.service
sudo systemctl stop nxdngateway.service
sleep 10
sudo systemctl stop p25gateway.service


# Directorio donde están todos los servicios
#/usr/lib/systemd/system



#zenity --info --ok-label= --title=DVSWITCH --window-icon=/home/pi/A108/ICONO_DVSWITCH_OFF.png --width=400 --timeout=5 --text "\n\n\nDVSWITCH DESACTIVADO"


