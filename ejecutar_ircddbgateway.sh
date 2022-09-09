#!/bin/bash

# Cierra dstar en DVSwitch Server
sudo systemctl stop ircddbgatewayd

sudo ircddbgateway -gui &
sudo sed -i '51c IRCDDBGATEWAY=ON' /home/pi/.local/autoarranque.ini

