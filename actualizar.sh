#!/bin/bash
# Coloca bien los iconos en el escritorio
#sudo cp /home/pi/icons.screen0-1904x1023.rc /home/pi/.config/xfce4/desktop   
#sleep 2
#xfdesktop --reload     



dvswitch=$(awk "NR==18" /home/pi/status.ini)
if [ "$dvswitch" = 'DVSWITCH=OFF' ];then
sudo systemctl stop ysfgateway.service
sudo systemctl stop dmr2ysf.service
sudo systemctl stop analog_bridge.service
sudo systemctl stop ircddbgatewayd.service
sudo systemctl stop md380-emu.service
sudo systemctl stop mmdvm_bridge.service
sudo systemctl stop nxdngateway.service
fi

sistema1=$(awk "NR==1" /home/pi/selector_sistemas.ini)
if [ "$sistema1" = 'BM=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelBM &
fi

sistema2=$(awk "NR==2" /home/pi/selector_sistemas.ini)
if [ "$sistema2" = 'DMR=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelDMRPLUS &
fi


sistema3=$(awk "NR==3" /home/pi/selector_sistemas.ini)
if [ "$sistema3" = 'RADIO=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelRadio &
fi

sistema4=$(awk "NR==4" /home/pi/selector_sistemas.ini)
if [ "$sistema4" = 'ESPECIAL=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelEspecial &
fi

sistema5=$(awk "NR==5" /home/pi/selector_sistemas.ini)
if [ "$sistema5" = 'SOLOFUSION=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelSolofusion &
fi

sistema6=$(awk "NR==6" /home/pi/selector_sistemas.ini)
if [ "$sistema6" = 'YSF2DMR=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelYsf2dmr &
fi

sistema7=$(awk "NR==7" /home/pi/selector_sistemas.ini)
if [ "$sistema7" = 'DMR2YSF=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelDmr2ysf &
fi

sistema8=$(awk "NR==8" /home/pi/selector_sistemas.ini)
if [ "$sistema8" = 'DMR2NXDN=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelDmr2Nxdn &
fi

sistema9=$(awk "NR==9" /home/pi/selector_sistemas.ini)
if [ "$sistema9" = 'IRCDDB=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelIrcddb &
fi

sistema10=$(awk "NR==10" /home/pi/selector_sistemas.ini)
if [ "$sistema10" = 'SOLODSTAR=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelDstar &
fi

sistema11=$(awk "NR==11" /home/pi/selector_sistemas.ini)
if [ "$sistema11" = 'DMRGATEWAY=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelDmrgateway &
fi

sistema12=$(awk "NR==12" /home/pi/selector_sistemas.ini)
if [ "$sistema12" = 'NXDN=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelNxdn &
fi

sistema13=$(awk "NR==13" /home/pi/selector_sistemas.ini)
if [ "$sistema13" = 'DMR2M17=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelDmr2M17 &
fi

sistema13=$(awk "NR==13" /home/pi/selector_sistemas.ini)
if [ "$sistema13" = 'DMR2M17=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelDmr2M17 &
fi

sistema14=$(awk "NR==14" /home/pi/selector_sistemas.ini)
if [ "$sistema14" = 'AMBE=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelAmbeServer &
fi

sistema15=$(awk "NR==15" /home/pi/selector_sistemas.ini)
if [ "$sistema15" = 'M17=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelM17 &
fi

sistema16=$(awk "NR==16" /home/pi/selector_sistemas.ini)
if [ "$sistema16" = 'DV4MINI=CHECK_ON' ];then
cd /home/pi/B108
./qt_OpenPanelDv4mini &
fi

# path usuario 
usuario="/home/pi"
usuario="$usuario"
SCRIPTS_version="B108"
actualizacion=$(awk "NR==1" /home/pi/.config/autostart/actualizacion)

version="ICOM-"
version=$version$actualizacion

#pone todos los status de inicio en OFF
#sed -i "1c D-STAR=OFF" $usuario/status.ini
#sed -i "2c BlueDV=OFF" $usuario/status.ini
#sed -i "3c YSF=OFF" $usuario/status.ini
#sed -i "4c DV4mini=OFF" $usuario/status.ini
#sed -i "5c MMDVM=OFF" $usuario/status.ini
#sed -i "6c MMDVMPLUS=OFF" $usuario/status.ini
#sed -i "7c MMDVMBM=OFF" $usuario/status.ini#
#sed -i "8c SVXLINK=OFF" $usuario/status.ini
#sed -i "9c dstarrepeater=OFF" $usuario/status.ini
#sed -i "10c MMDVMLIBRE=OFF" $usuario/status.ini
#sed -i "11c AMBE_SERVER=OFF" $usuario/status.ini
#sed -i "12c SOLOFUSION=OFF" $usuario/status.ini
#sed -i "13c SOLODSTAR=OFF" $usuario/status.ini
#sed -i "14c YSF2DMR=OFF" $usuario/status.ini
#sed -i "15c DMR2YSF=OFF" $usuario/status.ini
#sed -i "16c DMR2NXDN=OFF" $usuario/status.ini
#sed -i "17c NXDN=OFF" $usuario/status.ini
##sed -i "18c DVSWITCH=OFF" $usuario/status.ini
#sed -i "19c DMRGateway=OFF" $usuario/status.ini
#sed -i "22c NEXTIONDRIVER=OFF" $usuario/status.ini
#Actualiza Imagen
cd $usuario/$SCRIPTS_version
git pull
sleep 2

#Actualiza todos los iconos y Quita todos los iconos verdes que se quedan al cerrar la imagen
#sudo cp $usuario/Desktop/Activar_dvswitch.desktop $usuario/.local #deja el icono en el estado que se reinició
#sudo cp $usuario/Desktop/Activar_NextionDriver.desktop $usuario/.local/Activar_NextionDriver.desktop_1 #deja el icono en el estado que se reinició
#
#cd $usuario/$SCRIPTS_version/Desktop
#cp * $usuario/Desktop
#sudo chmod 777 -R $usuario/Desktop
#
#sudo cp $usuario/.local/Activar_dvswitch.desktop $usuario/Desktop #deja el icono en el estado que se reinició
#sudo cp $usuario/.local/Activar_NextionDriver.desktop_1 $usuario/Desktop/Activar_NextionDriver.desktop #deja el icono en el estado que se reinició


#pone todos los datos de DMR+ , Brandameiter, svxlink etc en panel_control.ini
bm=`sed -n '2p'  $usuario/MMDVMHost/MMDVMBM.ini`
plus=`sed -n '2p'  $usuario/MMDVMHost/MMDVMPLUS.ini`
dstar=`sed -n '2p'  $usuario/MMDVMHost/MMDVMDSTAR.ini`
fusion=`sed -n '2p'  $usuario/MMDVMHost/MMDVMFUSION.ini`
frbm=`sed -n '13p'  $usuario/MMDVMHost/MMDVMBM.ini`
frplus=`sed -n '13p'  $usuario/MMDVMHost/MMDVMPLUS.ini`
#BM
indi=$(awk "NR==2" $usuario/MMDVMHost/MMDVMBM.ini)
ide=$(awk "NR==3" $usuario/MMDVMHost/MMDVMBM.ini)
frec=$(awk "NR==13" $usuario/MMDVMHost/MMDVMBM.ini)
#master=`grep -n -m 1 "^RemoteAddress=" $usuario/MMDVMHost/MMDVMBM.ini`
#buscar=":"
#largo=`expr index $master $buscar`
#largo=`expr $largo + 1`
#largo1=`expr $largo - 2`
#largo=`expr substr $master 1 $largo1`
#letra=c            
#linea_master=$largo$letra
masterbm=$(awk "NR==232" $usuario/MMDVMHost/MMDVMBM.ini)
masterbm=`expr substr $masterbm 15 30`
#sed -i "1c $indi" $usuario/info_panel_control.ini
#sed -i "2c $ide" $usuario/info_panel_control.ini
#sed -i "3c $frec" $usuario/info_panel_control.ini
#sed -i "4c $masterbm" $usuario/info_panel_control.ini
#PLUS
indi=$(awk "NR==2" $usuario/MMDVMHost/MMDVMPLUS.ini)
ide=$(awk "NR==3" $usuario/MMDVMHost/MMDVMPLUS.ini)
frec=$(awk "NR==13" $usuario/MMDVMHost/MMDVMPLUS.ini)
#master=`grep -n -m 1 "^RemoteAddress=" $usuario/MMDVMHost/MMDVMPLUS.ini`
#buscar=":"
#largo=`expr index $master $buscar`
#largo=`expr $largo + 1`
#largo1=`expr $largo - 2`
#largo=`expr substr $master 1 $largo1`
#letra=c            
#linea_master=$largo$letra
masterplus=$(awk "NR==232" $usuario/MMDVMHost/MMDVMPLUS.ini)
masterplus=`expr substr $masterplus 15 30`
#sed -i "11c $indi" $usuario/info_panel_control.ini
#sed -i "12c $ide" $usuario/info_panel_control.ini
#sed -i "13c $frec" $usuario/info_panel_control.ini
#sed -i "14c $masterplus" $usuario/info_panel_control.ini
#Radio
indi=$(awk "NR==2" $usuario/MMDVMHost/MMDVM.ini)
ide=$(awk "NR==3" $usuario/MMDVMHost/MMDVM.ini)
frec=$(awk "NR==13" $usuario/MMDVMHost/MMDVM.ini)
#master=`grep -n -m 1 "^RemoteAddress=" $usuario/MMDVMHost/MMDVM.ini`
#buscar=":"
#largo=`expr index $master $buscar`
#largo=`expr $largo + 1`
#largo1=`expr $largo - 2`
#largo=`expr substr $master 1 $largo1`
#letra=c            
#linea_master=$largo$letra
masterradio=$(awk "NR==232" $usuario/MMDVMHost/MMDVM.ini)
masterradio=`expr substr $masterradio 15 30`
#sed -i "6c $indi" $usuario/info_panel_control.ini
#sed -i "7c $ide" $usuario/info_panel_control.ini
#sed -i "8c $frec" $usuario/info_panel_control.ini
#sed -i "9c $masterradio" $usuario/info_panel_control.ini
#YSF
master=$(awk "NR==39" $usuario/YSFClients/YSFGateway/YSFGateway.ini)
sed -i "21c $master" $usuario/info_panel_control.ini
#SVXLINK
svxlink=$(awk "NR==16" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf)
sed -i "27c $svxlink" $usuario/info_panel_control.ini
#YSF2DMR
frec=$(awk "NR==2" $usuario/YSF2DMR/YSF2DMR.ini)
master=$(awk "NR==46" $usuario/YSF2DMR/YSF2DMR.ini)
tg=$(awk "NR==43" $usuario/YSF2DMR/YSF2DMR.ini)
sed -i "24c $frec" $usuario/info_panel_control.ini
sed -i "25c $master" $usuario/info_panel_control.ini
sed -i "26c $tg" $usuario/info_panel_control.ini
#DMR2YSF busca el Address DMR2YSF
#master=`grep -n -m 1 "^Address=" $usuario/MMDVMHost/MMDVMDMR2YSF.ini`
#buscar=":"
#largo=`expr index $master $buscar`
#largo=`expr $largo + 1`
#largo1=`expr $largo - 2`
#largo=`expr substr $master 1 $largo1`
masterespecial=$(awk "NR==232" $usuario/MMDVMHost/MMDVMESPECIAL.ini)
masterespecial=`expr substr $masterespecial 15 30`
#YSFGateway.ini
master=`grep -n -m 1 "^Startup=" $usuario/YSFClients/YSFGateway/YSFGateway.ini`
master=`echo "$master" | tr -d '[[:space:]]'`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
linea_YSFGateway=`expr substr $master 1 $largo1`
masterYSFGateway=$(awk "NR==$linea_YSFGateway" $usuario/YSFClients/YSFGateway/YSFGateway.ini)
masterYSFGateway=`echo "$masterYSFGateway" | tr -d '[[:space:]]'`
#ACTUALIZA EL  PANEL DE CONTROL"
sudo echo 20 > /sys/class/gpio/export
sudo echo 21 > /sys/class/gpio/export
sudo echo out > /sys/class/gpio/gpio20/direction
sudo echo out > /sys/class/gpio/gpio21/direction
sudo sleep 0.5
sudo echo 0 > /sys/class/gpio/gpio20/value
sudo echo 0 > /sys/class/gpio/gpio21/value
sudo echo 1 > /sys/class/gpio/gpio21/value
sudo sleep 1
sudo echo 0 > /sys/class/gpio/gpio20/value
sudo echo 1 > /sys/class/gpio/gpio20/value
sudo sleep 0.5
sudo echo 20 > /sys/class/gpio/unexport
sudo echo 21 > /sys/class/gpio/unexport
# cp $usuario/$SCRIPTS_version/panel_control.php /var/www/html/panel_control
bm=`sed -n '2p'  $usuario/MMDVMHost/MMDVMBM.ini`
plus=`sed -n '2p'  $usuario/MMDVMHost/MMDVMPLUS.ini`
dstar=`sed -n '2p'  $usuario/MMDVMHost/MMDVMDSTAR.ini`
fusion=`sed -n '2p'  $usuario/MMDVMHost/MMDVMFUSION.ini`
frbm=`sed -n '13p'  $usuario/MMDVMHost/MMDVMBM.ini`
frplus=`sed -n '13p'  $usuario/MMDVMHost/MMDVMPLUS.ini`
sudo wget -post-data http://associacioader.com/prueba1.php?callBM=$bm'&'callPLUS=$plus'&'masterBM=$masterbm'&'masterPLUS=$masterplus'&'radio=$masterradio'&'version=$version'&'ESPECIAL=$masterespecial'&'YSFGateway=$masterYSFGateway                      
#frecuencia=$(awk "NR==1" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_BM.desktop $usuario/
#sed -i "12c Name=$frecuencia" $usuario/RXF_BM.desktop
#cd $usuario
#cp RXF_BM.desktop $usuario/Desktop
#rm $usuario/RXF_BM.desktop
#
#frecuencia=$(awk "NR==2" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_DMRPLUS.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_DMRPLUS.desktop
#cd $usuario
#cp RXF_DMRPLUS.desktop $usuario/Desktop
#rm $usuario/RXF_DMRPLUS.desktop
#
#frecuencia=$(awk "NR==3" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_ESPECIAL.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_ESPECIAL.desktop
#cd $usuario
#cp RXF_ESPECIAL.desktop $usuario/Desktop
#rm $usuario/RXF_ESPECIAL.desktop
#
#frecuencia=$(awk "NR==4" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_RADIO.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_RADIO.desktop
#cd $usuario
#cp RXF_RADIO.desktop $usuario/Desktop
#rm $usuario/RXF_RADIO.desktop
#
#frecuencia=$(awk "NR==6" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_SOLOFUSION.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_SOLOFUSION.desktop
#cd $usuario
#cp RXF_SOLOFUSION.desktop $usuario/Desktop
#rm $usuario/RXF_SOLOFUSION.desktop
#
#frecuencia=$(awk "NR==5" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_DSTAR.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_DSTAR.desktop
#cd $usuario
#cp RXF_DSTAR.desktop $usuario/Desktop
#rm $usuario/RXF_DSTAR.desktop
#
#frecuencia=$(awk "NR==6" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_C4FM.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_C4FM.desktop
#cd $usuario
#cp RXF_C4FM.desktop $usuario/Desktop
#rm $usuario/RXF_C4FM.desktop
#
#frecuencia=$(awk "NR==13" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_YSF2DMR.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_YSF2DMR.desktop
#cd $usuario
#cp RXF_YSF2DMR.desktop $usuario/Desktop
#rm $usuario/RXF_YSF2DMR.desktop
#
#frecuencia=$(awk "NR==14" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_DMR2YSF.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_DMR2YSF.desktop
#cd $usuario
#cp RXF_DMR2YSF.desktop $usuario/Desktop
#rm $usuario/RXF_DMR2YSF.desktop
#
#frecuencia=$(awk "NR==15" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_DMR2NXDN.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_DMR2NXDN.desktop
#cd $usuario
#cp RXF_DMR2NXDN.desktop $usuario/Desktop
#rm $usuario/RXF_DMR2NXDN.desktop
#
#frecuencia=$(awk "NR==17" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_NXDN.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_NXDN.desktop
#cd $usuario
#cp RXF_NXDN.desktop $usuario/Desktop
#rm $usuario/RXF_NXDN.desktop
#
#
#frecuencia=$(awk "NR==18" $usuario/INFO_RXF)
#cd $usuario/Desktop/
#cp RXF_DMRGATEWAY.desktop $usuario/
#sed -i "11c Name=$frecuencia" $usuario/RXF_DMRGATEWAY.desktop
#cd $usuario
#cp RXF_DMRGATEWAY.desktop $usuario/Desktop
#rm $usuario/RXF_DMRGATEWAY.desktop

# Dar permisos al Escritorio
sudo chmod 777 -R $usuario/Desktop
sleep 2

sudo rm -R /home/pi/B108/associacioader.com
sudo rm -R /home/pi/B108/Desktop/associacioader.com
sudo rm /home/pi/B108/Desktop/st-data
sudo rm /home/pi/Desktop/st-data


