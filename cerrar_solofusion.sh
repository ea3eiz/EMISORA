#!/bin/bash
sudo killall -9 MMDVMFUSION
sudo killall -9 YSFGateway
sudo sed -i '12c SOLOFUSION=OFF' /home/pi/status.ini