<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Plantas</title>
        <link rel="stylesheet" href="./css/cards.css"> 
        <link rel="stylesheet" href="./css/regis.css"> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
    <h1>Registro de flores para mostrar en catalogo</h1>
</center>  
  
    <?php require_once "./conexion.php" ?>
    
        
         <form method="GET" action="RegistroFlower.php" class="form">
        <p>Nombre de la planta: </p><input type="text" name="nombre" placeholder="Planta" required>
        
        <p>Altura: </p><input type="text" name="descripcion3" placeholder="Altura" required>
        
        <p>Florece en: </p><input type="text" name="descripcion4" placeholder="En donde florece la planta" required>
        
        <!-- <p>Imagen: </p><input type="text" name="imagen" placeholder="nombre de la imagen de la planta" required>
         -->
        <p>Precio: </p><input type="number" name="precio" placeholder="Precio de la planta" required>
        
        
        <p>Información de la planta: </p> <textarea class="form-control" aria-label="With textarea" type="text" name="info" placeholder="Información" required></textarea>

        <p>Cuidados:  </p><textarea class="form-control" aria-label="With textarea" type="text" name="descripcion5" placeholder="Descripción de cuidados" required></textarea>
    
        <input type="file" name="imagen" class="" required>

        <p>Necesidad de sol:  </p><select class="form-select" id="autoSizingSelect" name="descripcion1" required>
      <option value="Si">Si</option>
      <option value="No">No</option>
    </select>
        
       <p> Necesidad de suelo: </p> <select class="form-select" id="autoSizingSelect" name="descripcion2" required>
      <option value="Si">Si</option>
      <option value="No">No</option>
    </select>
    
<br>
        <button action="submit" name="enviar"> Enviar
         
      
    </form> 
  
    
    

<?php
    if(isset($_GET['enviar'])==1){
$nombre = $_GET['nombre'];
$info = $_GET['info'];
$descripcion1 = $_GET['descripcion1'];
$descripcion2 = $_GET['descripcion2'];
$descripcion3 = $_GET['descripcion3'];
$descripcion4 = $_GET['descripcion4'];
$descripcion5 = $_GET['descripcion5'];
$imagen = $_GET['imagen'];
$a="<img src=./img/imagePlantas/$imagen>";
$precio = $_GET['precio'];


$almacenar= "INSERT INTO flowers( nombre, informacion, descripcion1, descripcion2, descripcion3, descripcion4, descripcion5, imagen, precio) VALUES 
( '$nombre', '$info', '$descripcion1', '$descripcion2', '$descripcion3', '$descripcion4', '$descripcion5', '$a', '$precio')";
$resultado= mysqli_query($db, $almacenar);

if($resultado)
{
  
  ?>
  <script> window.location="./RegistroFlower.php"; 
  alert("Registro Exitoso!");
  </script>
  <?php
}
else{
  ?>
  <script> window.location="./RegistroFlower.php"; 
  alert("Ocurrio un error, intentelo mas tarde");
  </script>
  <?php
}
    }
?>
</body>
</html>