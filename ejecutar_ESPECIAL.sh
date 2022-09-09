#!/bin/bash

sudo sed -i '10c MMDVMESPECIAL=ON' /home/pi/status.ini
cd /home/pi/MMDVMHost
echo "\033[1;33m"
echo " **************************************************************************"
echo "                            ABRIENDO ESPECIAL                             "
echo " **************************************************************************"
sleep 2
#/home/pi/B108/./qt_info_especial & sudo ./MMDVMESPECIAL MMDVMESPECIAL.ini
sudo ./MMDVMESPECIAL MMDVMESPECIAL.ini
