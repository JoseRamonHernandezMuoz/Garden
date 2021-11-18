<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Registros</title> 
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
  <h1>Formulario para editar registros de plantas</h1>
  <form method="GET" action="editarRegistro.php" class="form1">
        <input type="text" id="s" name="nombre" value="" placeholder="Ingrese el Nombre de la planta que editara"  />
        <button type="submit" name="button" class="button1">Buscar</button>
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
                echo("Sin registros");
            }
            else
            { 
                ?>
                <form method="GET" action="" class="form">
                <p>Nombre de la planta: </p><input type="text" name="nombre" value="<?php echo $fila[1]; ?> "required>
                
                <p>Altura: </p><input type="text" name="descripcion3" value="<?php echo $fila[5]; ?> "required>
                
                <p>Florece en: </p><input type="text" name="descripcion4" value="<?php echo $fila[6]; ?> "required>
                
                
                <p>Precio: </p><input type="text" name="precio" value="<?php echo $fila[9]; ?> "required>
                
                
                <p>Información de la planta: </p> <input class="form-control"  type="text" name="info" value="<?php echo $fila[2]; ?> " required>
        
                <p>Cuidados:  </p><input class="form-control"type="text" name="descripcion5"value="<?php echo $fila[7]; ?> " required>
            
                <p>Necesidad de sol: <?php echo $fila[3]; ?>  </p><select class="form-select" id="autoSizingSelect" name="descripcion1" required>
              <option value="Si">Si</option>
              <option value="No">No</option>
                   
            </select>
                
               <p> Necesidad de suelo: <?php echo $fila[4]; ?></p> <select class="form-select" id="autoSizingSelect" name="descripcion2" required>
              <option value="Si">Si</option>
              <option value="No">No</option>
            </select>
              <h3>Si quires cambiar la imagen, tendras que eliminar el registro y crear uno nuevo</h3>
        <br>
                <button action="submit" name="enviar" class="button1"> Actualizar
              
            </form> 
              
    <?php
    }
}
}   

    if(isset($_GET['enviar'])==1)
    {
        $nombre = $_GET['nombre'];
$info = $_GET['info'];
$descripcion1 = $_GET['descripcion1'];
$descripcion2 = $_GET['descripcion2'];
$descripcion3 = $_GET['descripcion3'];
$descripcion4 = $_GET['descripcion4'];
$descripcion5 = $_GET['descripcion5'];
$precio = $_GET['precio'];

$modi= "UPDATE flowers SET
nombre='$nombre',
informacion='$info',
descripcion1='$descripcion1',
descripcion2='$descripcion2',
descripcion3='$descripcion3',
descripcion4='$descripcion4',
descripcion5='$descripcion5',
precio='$precio'
WHERE nombre='$nombre'";
$resultado= mysqli_query($db, $modi);
if($resultado)
{?>
    <script> window.location="./editarRegistro.php"; 
    alert("Actualizacion Exitosa");
    </script>
    <?php
}
else{
    ?>
    <script> window.location="./editarRegistro.php"; 
    alert("Ocurrio un error, intentelo mas tarde");
    </script>
    <?php
}

    }
    
  

else
?>
</body>
</html>