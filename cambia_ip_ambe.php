<?php 
session_start();
$ip_ambe=($_POST["ip_ambe"]);

exec("sudo sed -i '88c address = $ip_ambe' /opt/Analog_Bridge/Analog_Bridge.ini");
exec("sudo sed -i '88c address = $ip_ambe' /opt/Analog_Bridge/dmr.ini");
exec("sudo sed -i '88c address = $ip_ambe' /opt/Analog_Bridge/dstar.ini");
exec("sudo sed -i '88c address = $ip_ambe' /opt/Analog_Bridge/especial.ini");
exec("sudo sed -i '88c address = $ip_ambe' /opt/Analog_Bridge/nxdn.ini");
exec("sudo sed -i '88c address = $ip_ambe' /opt/Analog_Bridge/ysf.ini");
exec("sudo sed -i '88c address = $ip_ambe' /opt/Analog_Bridge/FCS.ini");

header("Location: panel_configuracion.php");	

?>