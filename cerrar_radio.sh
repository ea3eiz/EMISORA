#!/bin/bash
sudo killall -9 MMDVMHost
sudo sed -i '5c MMDVM=OFF' /home/pi/status.ini
