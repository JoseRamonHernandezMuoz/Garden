<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="./css/login.css">  
    <link rel="stylesheet" href="./css/cards.css"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
    <form class="login-form" action="login.php" method="GET"> 
        <p class="login-text">
          <span class="fa-stack fa-lg">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-lock fa-stack-1x"></i>
          </span>
        </p>
        <input type="text" name="user" class="login-username" autofocus="true" required="true" placeholder="Email" />
        <input type="password" name="pass" class="login-password" required="true" placeholder="Password" />
        <input type="submit" name="Login" value="Login" class="login-submit" />
      </form>
      <!-- <a href="#" class="login-forgot-pass">forgot password?</a> -->
      <div class="underlay-photo"></div>
      <div class="underlay-black"></div> 

      <?php
   if(isset($_GET['Login'])==1){
    $user = $_GET['user'];
    $pass = $_GET['pass'];

    $consulta= "SELECT * FROM user WHERE user='$user' and pass='$pass'";
    $ejecutarconsulta= mysqli_query($db,$consulta);
    $verfilas= mysqli_num_rows($ejecutarconsulta);
    $fila= mysqli_fetch_array($ejecutarconsulta);

    if($verfilas >= 1)
    {?>
      <script> window.location="./indexLogin.html"; </script>
      <?php
    }
    else
    {?>
       <script> window.location="./login.php"; 
      alert("Error. Usuario y/o Contraseña Incorrectos");
      </script>
      <?php
     
    }
    }
      ?>
</body>
</html>