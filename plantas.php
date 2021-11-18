<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Plantas</title>
        <link rel="stylesheet" href="css/cards.css">
       </head>
<body>
 <script> alert("Por el momento no tenemos venta en Linea  \n  Pero puede acercarse a nuestra tienda local");</script>
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
    <div class="title">
        <h1>Mira  nuestra sección de floreria</h1>
    </div>
    <?php require_once "./conexion.php" ?>
    <?php
    $consulta= "SELECT * FROM flowers";
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
                echo("Sin registros");
            }
            else
            {
                for($x=0; $x<=$fila; $x++)
                {   
                    echo' 
                    <div id="container">
                    <div class="product-details">
        
                    <h1>'.$fila[1].'</h1>
                     
                        <p class="information"><font size="2">"'.$fila[2].'"</font></p>
        
                <div class="control">
                  <br>
                    <button class="btn" title="comprar" name="comprar" type="submit" method="GET">
                     <span class="price">'.$fila[9].' $</span>
                   <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
                   <span class="buy">Comprar</span>
                   
                 </button>
                </div>
                </div>
                <div class="product-image">
                    '.$fila[8].'
                 <div class="info">
                    <h2>Descripción</h2>
                    <ul>
                        <li><strong>Necesidad del sol: </strong>'.$fila[3].'</li>
                        <li><strong>Necesidad del suelo: </strong>'.$fila[4].'</li>
                        <li><strong>Altura: </strong>'.$fila[5].'</li>
                        <li><strong>Florece en: </strong>'.$fila[6].'</li>
                        <li><strong>Cuidados: </strong>'.$fila[7].'</li>
                    </ul>
                </div>
                </div>
                </div>
                    ';
                  
                         
                      
               $fila=mysqli_fetch_array($ejecutarconsulta);
               }
            }
        }

    ?>
 

</body>
</html>