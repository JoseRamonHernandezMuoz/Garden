<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- <form action="prueba.php" method="GET">
    <input type="file" name="seleccionar">
    <br>
    <input type="submit" name="button">
</form>-->
<?php
if(isset($_GET['button'])==1)
{
    $image=$_GET['seleccionar'];

    echo $image;
} 
if(isset($_GET['comprar'])==1)
{
    $fila1=$_GET['fila1'];

    echo $fila1;
}
else
?>

</body>
</html>