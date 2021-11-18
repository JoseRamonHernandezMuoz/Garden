<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bandeja de Entrada</title>
    <link rel="stylesheet" href="./css/correos.css"> 
    <link rel="stylesheet" href="./css/close.css"> 
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
<?php require_once "./conexion.php" ?>
    <div class="wrapper">
        <a href="./indexLogin.html" class="close-button">
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
      <center>
    <h1>Estas personas quieren contactarse contigo.</h1>
    <h4><font color="white">(El orden se coloca de manera donde el cliente que se comunico recientemente se muestra al principio)</font></h4>
<table class="rwd-table">
  <tr>
    <th>ID</th>
    <th>Nombre</th>
    <th>Correo</th>
    <th>Mensaje</th>
    <th>Fecha y Hora</th>
  </tr>
  <?php
    $consulta= "SELECT * FROM contacto ORDER BY id DESC";
    $ejecutarconsulta= mysqli_query($db,$consulta);
    $verfilas= mysqli_num_rows($ejecutarconsulta);
    $fila= mysqli_fetch_array($ejecutarconsulta);
// echo $verfilas;
    if(!$ejecutarconsulta)
    {
        echo("ERROR en la consulta");
    }
    else
        {
            if($verfilas<1)
            {
                echo("<tr><td>Sin registros</td></tr>");
            }
            else
            {
                for($x=0; $x<=$fila; $x++)
                {   
                    echo' 
                        <tr>
                        <td class="">'.$fila[0].'</td>
                        <td class="">'.$fila[1].'</td>
                        <td class="">'.$fila[2].'</td>
                        <td class="">'.$fila[3].'</td>
                        <td class="">'.$fila[4].'</td>
                        </tr>';
                    
                        $fila=mysqli_fetch_array($ejecutarconsulta);
                }
            }
        }

    ?>
</table>
      </center>
</body>
</html>