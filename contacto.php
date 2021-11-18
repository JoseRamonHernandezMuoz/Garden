<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/css.css"> 
    <link rel="stylesheet" href="./css/contacto.css"> 
    <title>Contacto</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">

</head>
<body>
<script>
        //<![CDATA[
        function right(e) {
            if (navigator.appName == 'Netscape' && e.which == 3) {
                alert('Prohibido clic derecho');
                return false;
            } else
            if (navigator.appName == 'Microsoft Internet Explorer' &&
                event.button == 2) {
                alert('Prohibido click derecho');
                return false;
            }
            return true;
        }
        document.onmousedown = right;
        //]]>
        
        document.oncontextmenu = function() {
            return false
        }
    </script>
<?php
  require_once "./conexion.php";
  ?>
<div class="wrapper">
        <a href="./index.html" class="close-button">
          <div class="in">
            <div class="close-button-block"></div>
            <div class="close-button-block"></div>
          </div>
          <div class="out">
            <div class="close-button-block"></div>
            <div class="close-button-block"></div>
          </div>
        </a>
      </div>

  <!-- <button type="sumbit" name="regresar" class="regresar">Regresar a Home -->
    <form class="form" action="contacto.php" method="GET">
        <h2>CONTÁCTANOS</h2>
        <p type="Nombre:"><input  type="text" name="name" placeholder="Nombre" required></input></p>
        
        <p type="Email:"><input type="email"  name="correo" placeholder="Correo electronico" required></input></p>
        <p type="Mensaje:"><input type="text" name="msj" placeholder="Redacta tu msj" required></input></p>
        <button name="btn">Enviar Mensaje</button>
        
        
      </form>
    
      <?php
      if(isset($_GET['btn'])==1)
      { 
        $name = $_GET['name'];
        $correo = $_GET['correo'];
        $msj = $_GET['msj'];
                    
date_default_timezone_set('America/Mexico_City');    
$DateAndTime = date('m-d-Y h:i:s a', time());
        $almacenar="INSERT INTO  contacto (nombre, email, mensaje, fecha) VALUES ('$name', '$correo', '$msj', '$DateAndTime')";
        $resultado= mysqli_query($db, $almacenar);

if($resultado)
{
  ?>

  <script>
    window.location="./contacto.php";
    alert('Mensaje Enviado, en brevedad estaremos en contacto con usted!');      
  </script>
  
  <?php
}
else
{
  ?>
  <script>
      window.location="./contacto.php";
    alert('ERROR EN LA CONEXIÓN CON LA BASE DE DATOS');      
  </script>
  <?php
}    
    
    }
    ?>
</body>
</html>