#!/bin/bash

sed -i "18c DVSWITCH=ON" /home/pi/status.ini

# Pone Enable=1 en [Dstar Network]
#sed -i "62c Enable=1" /opt/MMDVM_Bridge/MMDVM_Bridge.ini
#sed -i "62c Enable=1" /opt/MMDVM_Bridge/MMDVM_Bridge_FCS.ini
#sed -i "62c Enable=1" /opt/MMDVM_Bridge/brandmeister_esp.ini
#sed -i "62c Enable=1" /opt/MMDVM_Bridge/dmrplus.ini
#sed -i "62c Enable=1" /opt/MMDVM_Bridge/especial.ini

sudo systemctl restart ysfgateway.service
sudo systemctl restart dmr2ysf.service
sudo systemctl restart analog_bridge.service
sudo systemctl restart ircddbgatewayd.service
sudo systemctl restart md380-emu.service
sudo systemctl restart mmdvm_bridge.service
sudo systemctl restart nxdngateway.service
sleep 10
sudo systemctl restart p25gateway.service

# Directorio donde están todos los servicios
#/usr/lib/systemd/system

