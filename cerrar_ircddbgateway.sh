#!/bin/bash

sudo killall -9 ircddbgateway
sudo sed -i '51c IRCDDBGATEWAY=OFF' /home/pi/.local/autoarranque.ini





