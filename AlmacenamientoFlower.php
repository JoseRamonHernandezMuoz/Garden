<?php require_once "./conexion.php" ?>


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
   <p>Registro exitoso</p>
     <?php 
}
else{
    ?>
    <p>Error en la conexion a la BD</p>
    <?php
}
    }
?>