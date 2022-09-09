#!/bin/bash
sudo killall -9 MMDVMPLUS
sudo sed -i '6c MMDVMPLUS=OFF' /home/pi/status.ini
