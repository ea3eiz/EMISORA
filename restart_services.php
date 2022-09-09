<?php 

exec("sudo systemctl restart ysfgateway.service");
exec("sudo systemctl restart dmr2ysf.service");

exec("sudo systemctl restart analog_bridge.service");
exec("sudo systemctl restart ircddbgateway.service");
exec("sudo systemctl restart md380-emu.service");
exec("sudo systemctl restart mmdvm_bridge.service");
exec("sudo systemctl restart nxdngatewayd.service");


header("Location: restaurando_servicios.php");	

?>