#!/bin/bash
#Actualiza imagen
                        
                        cd /home/pi
                        sudo rm -R B108
                        sudo rm -R B1082
                        git clone http://github.com/ea3eiz/B1082
                        sleep 1
                        mv B1082 B108
                        sleep 1
                        sudo chmod 777 -R B108






                        cd /home/pi/B108
sudo cp index_dvswitch_buster.php /var/www/html/dvs/

if [ -f /var/www/html/panel_configuracion.php ]
then
echo "no hace nada"
else
sudo cp panel_configuracion.php /var/www/html/
fi

sudo cp ambe_activado.php /var/www/html/
sudo cp cambia_activa_ambe.php /var/www/html/
sudo cp cambia_desactiva_ambe.php /var/www/html/
sudo cp cambia_ip_ambe.php /var/www/html/
sudo cp cambia_puerto_ambe.php /var/www/html/
sudo cp panel_configuracion.php /var/www/html/
sudo cp restart_services.php /var/www/html/
sudo cp restaurando_servicios.php /var/www/html/
sudo cp ambe_desactivado.php /var/www/html/

sudo cp AMBE_ACTIVADO.png /var/www/html/images/
sudo cp INICIANDO_SISTEMAS.png /var/www/html/images/
sudo cp AMBE_DESACTIVADO.png /var/www/html/images/

sudo chmod 777 -R /var/www/html/

./qt_imagen_actualizada