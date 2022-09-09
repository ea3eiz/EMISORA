#!/bin/bash

sudo killall -9 MMDVMDSTAR
sudo killall -9 ircddbgateway

sudo systemctl restart ircddbgatewayd

sudo sed -i '13c SOLODSTAR=OFF' /home/pi/status.ini