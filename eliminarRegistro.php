<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Registro</title>
    <link rel="stylesheet" href="./css/buscador.css"> 
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
<center><h1>Formulario para eliminar registros de plantas</h1></center>
<form method="GET" action="eliminarRegistro.php" class="form2">
    <input type="text" id="s" name="nombre" value="" placeholder="Ingrese el Nombre de la planta que decea eliminar"  />
    <button type="submit" name="button" class="button2" onclick="return ConfirmDelete()">Eliminar</button>
    <script>
function ConfirmDelete()
{
    var $respuesta = confirm("Seguro de que deseas eliminar esta planta");

    if ($respuesta == true)
    {
        return true;
    }
    else 
    {
        return false;
    }

}
</script>
</form>
<?php
if(isset($_GET['button'])==1){
    $nombre = $_GET['nombre'];

    $consulta= "SELECT * FROM flowers WHERE nombre = '$nombre'";
    $ejecutarconsulta= mysqli_query($db,$consulta);
    $verfilas= mysqli_num_rows($ejecutarconsulta);
    $fila= mysqli_fetch_array($ejecutarconsulta);
    
    if(!$ejecutarconsulta)
    {
        echo("ERROR en la consulta");
    }
    else
        {
            if($verfilas<1)
            {
               ?>
                <script> window.location="./eliminarRegistro.php";
                alert("El registro no existe. (Planta no eliminada)");
                </script>
               <?php
            }
            else
            { 

$delete="DELETE FROM flowers WHERE nombre = '$nombre'";
$resultado= mysqli_query($db, $delete);
if($resultado)
{
    ?>
    <script> window.location="./eliminarRegistro.php"; 
    alert("Registro Eliminado con Exito");
    </script>
    <?php
}
else{
    ?>
    <script> window.location="./eliminarRegistro.php"; 
    alert("Ocurrio un error, intentelo mas tarde");
    </script>
    <?php
    }
        }
    }
                                    }
 ?>
</body>
</html>