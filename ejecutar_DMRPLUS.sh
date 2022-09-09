#!/bin/bash

sudo sed -i '6c MMDVMPLUS=ON' /home/pi/status.ini
cd /home/pi/MMDVMHost
echo "\33[1;37m"
echo " **************************************************************************"
echo "                               ABRIENDO DMR++                              "
echo " **************************************************************************"
sleep 2
#/home/pi/A108/./qt_info_dmrplus & sudo ./MMDVMPLUS MMDVMPLUS.ini
sudo ./MMDVMPLUS MMDVMPLUS.ini
