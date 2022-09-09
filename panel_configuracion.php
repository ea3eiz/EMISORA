<?php 
session_start();

$ambe_activo = exec("sed -n '24p'  /opt/Analog_Bridge/Analog_Bridge.ini");
$ambe_activo = substr("$ambe_activo", 18, 4);

$ip_ambe = exec("sed -n '88p'  /opt/Analog_Bridge/Analog_Bridge.ini");
$ip_ambe = substr("$ip_ambe", 10, 16);

$puerto_ambe = exec("sed -n '89p'  /opt/Analog_Bridge/Analog_Bridge.ini");
$puerto_ambe = substr("$puerto_ambe", 9, 10);
?>



<!-- ============================================== -->

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Dvswitch Mobile">
    <meta name="description" content="Dvswitch Mobile">
    <meta name="author" content="EA3EIZ">

<!-- refresca la página cada 10 segundo (implantado por mi) -->
<!-- ====================================================== -->
<!-- <meta http-equiv="refresh" content="5" /> -->

<link rel="shortcut icon" href="img/BOLA_MUNDO_ADER.png">
    <title>DV_ADER</title>

    <!-- CSS Bootstrap-->
    <link href="css/bootstrap.css" rel="stylesheet">
    
    <!-- <Fuentes -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<style type="text/css">
body{
    background-image: url(../images/fondo_02.png);
    }
.sistema{
    height: 50px;
    color:#FFFFFF;
    font-size: 25px;
    padding-top: 5px;
    text-align: center;
    background:#108040;
    border-radius: 4px 4px 4px 4px;
    }
header {
    text-align: center;
    height:auto;
    background-image: url(../img/fondo_02.png);
    color: white;
    background: no-repeat;
}
.color_rojo{
    color: #FC0107;
    font-size: 22px;
    background: #000000;
    }
.color_verde{
    color:#21FF06;
    font-size: 22px;
    background: #000000;
    }
.version{
    height: 50px;
    color:#FFFFFF;
    font-size: 20px;
    padding-top: 8px;
    text-align: center;
    background:#000000;
    border-radius: 4px 4px 4px 4px;
    }    
.callsign{
    height: 50px;
    color:#FFFFFF;
    font-size: 22px;
    padding-top: 10px;
    text-align: center;
    background:#FD8008;
    border-radius: 4px 4px 4px 4px;
    } 
.ipcs2{
    color:#000000;
    font-size: 25px;
    padding-top: 11px;
    } 
@media (max-width: 360px) {
.ipcs2{
    color:#000000;
    font-size: 18px;
    padding-top: 11px;
    }
    .sistema{
    height: 50px;
    color:#FFFFFF;
    font-size: 18px;
    padding-top: 5px;
    text-align: center;
    background:#108040;
    border-radius: 4px 4px 4px 4px;
    } 
}
@media (min-width: 375px) {
.ipcs2{
    color:#000000;
    font-size: 18px;
    padding-top: 11px;
    }
    .sistema{
    height: 50px;
    color:#FFFFFF;
    font-size: 18px;
    padding-top: 5px;
    text-align: center;
    background:#108040;
    border-radius: 4px 4px 4px 4px;
    } 
}
@media (min-width: 760px) {
.ipcs2{
    color:#000000;
    font-size: 25px;
    padding-top: 11px;
    }
    .sistema{
    height: 50px;
    color:#FFFFFF;
    font-size: 25px;
    padding-top: 5px;
    text-align: center;
    background:#108040;
    border-radius: 4px 4px 4px 4px;
    } 
}
.ambe{
    height: 530px;
    color:#FFFFFF;
    font-size: 26px;
    padding-top: 5px;
    text-align: center;
    background:#800080;
    border-radius: 4px 4px 4px 4px;
    }
.ambe_desactivado{
    margin-top: 1px;
    margin-bottom: 7px;
    width: 100%;
    height: 41px;
    text-align:center;
    padding: 0px 0px 0px 0px;
    background-color: #000000;
    border-radius: 5px 5px 5px 5px;
    font-size: 24px;
    color:#F00000;
    border: 1px solid #ccc;
}
.ambe_activado{
    margin-top: 1px;
    margin-bottom: 7px;
    width: 100%;
    height: 41px;
    text-align:center;
    padding: 0px 0px 0px 0px;
    background-color: #108040;
    border-radius: 5px 5px 5px 5px;
    font-size: 24px;
    color:#FFFFFF;
    border: 1px solid #ccc;
}       
.color_naranja{
    color:#21FF06;
    }    
.fuente_boton{
    font-size:16px;
    color:#FFFFFF;
    }
.fuente_boton1{
    font-size:18px;
    color:#f00000;
    }
.fuente_boton2{
    font-size:14px;
    color:#FFFFFF;
    }
.fuente_boton3{
    font-size:15px;
    color:#f00000;
    }
.config{
    background:#000000;
    border-radius: 8px 8px 8px 8px;
    }
.config_especial{
    height: 440px;
    background:#091398;
    border-radius: 8px 8px 8px 8px;
    }
h4{
    text-align:center;
    color:#FFFFFF;
    font-size:24px;
} 
h5{
    text-align:center;
    color:#FFFFFF;
    font-size:18px;
   text-transform: none;
} 
h6{
    text-align:center;
    color:#FFFFFF;
    font-size:14px;
}  
.fondo_datos{
    margin-top: 1px;
    margin-bottom: 7px;
    width: 100%;
    height: 25px;
    text-align:center;
    padding: 0px 0px 0px 0px;
    background-color: #4C4C4C;
    border-radius: 5px 5px 5px 5px;
    font-size: 16px;
    color:#FFFFFF;
    border: 1px solid #ccc;
}
.form-control {
    height: 25px;
    text-align: center;
    font-size: 16px;
}
</style>
</head>
<body>

 

<div class="container"> 
<br><br><br><br><br><br>

<!--============== CAJA LOGIN ====================================-->

<div class="col-md-4 ambe">

    <h5>CONFIGURACIÓN AMBE SERVER</h5>

<?php
    if ($ambe_activo=="true"){
?>
        <div class="ambe_desactivado">
            <span>Ambe server desactivado</span>
        </div>
<?php
}
    else {
?>
        <div class="ambe_activado">
            <span>Ambe server activado</span>
        </div>
<?php
}
?>

<form method="post" action="cambia_ip_ambe.php"/><br>
        <input name="ip_ambe" class="fuente_boton3 form-control" placeholder="Introduce IP + Enter">
            <div class="fondo_datos">IP: 
                <span class="color_naranja"><?php echo $ip_ambe;?></span>
            </div>         
</form>
<br>
<form method="post" action="cambia_puerto_ambe.php"/>
        <input name="puerto_ambe" class="fuente_boton3 form-control" placeholder="Introduce Puerto Router + Enter">
            <div class="fondo_datos">Puerto Router: 
                <span class="color_naranja"><?php echo $puerto_ambe;?></span>
            </div>         
</form>

<form method="post" action="cambia_activa_ambe.php"/>
    <button class="btn btn-success btn-sm btn-block" type="submit">ACTIVAR AMBE SERVER</button>
</form>

<br>

<form method="post" action="cambia_desactiva_ambe.php"/>
    <button class="btn btn-danger btn-sm btn-block" type="submit">DESACTIVAR AMBE SERVER</button>
</form>
<br>
<form method="post" action="restart_services.php"/>
    <button class="btn btn-warning btn-sm btn-block" type="submit">APLICAR LOS CAMBIOS E INICIAR SISTEMAS</button>
</form>

<br>

<form method="post" action="/dvs/index_dvswitch_buster.php"/>
    <button class="btn btn-success btn-sm btn-block" type="submit">VOLVER AL MENÚ</button>
</form>



<!--============== CAJA LOGIN ====================================-->      
   
</div class="container">    

</header>
    
    <!-- jQuery -->
    <script src="custom/jquery/jquery.min.js"></script>
    <script src="custom/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
    <script src="js/freelancer.min.js"></script>

</body>
</html>
