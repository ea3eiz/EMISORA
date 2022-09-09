#!/bin/bash
sudo killall -9 MMDVMESPECIAL
sudo sed -i '10c MMDVMESPECIAL=OFF' /home/pi/status.ini

