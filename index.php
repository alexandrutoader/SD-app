<?php
session_start();
    require_once 'classes/dbconnect/dbconnect.php';
    require_once 'classes/login/login.php';

$login = new \SD_app \LogIn\LogIn();
$login->login();
session_destroy();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<div class="header">
    <div class="center">
        <h2>Authentication</h2>
        <form action="<?=$_SERVER['PHP_SELF']?>" method="post">
            Username: <input class="input" type="text" name="Username" placeholder="user"  title="Please fill the field with letters and minimum four required"><br>
            Password: <input class="input" type="password" name="Password" placeholder="password" minlength="6" maxlength="16"><br><br>
            <input id="submit" type="submit" name="Submit" value="Login"><br><br>
            <input type="hidden" name="varname" value="var_value">
            <label style="font-size: 13px">Don't have account yet? &nbsp;&nbsp;<a href="classes/sign_up/register.php">Sign Up</a></label><br>
            <label style="font-size: 13px">Forgot your password? &nbsp;&nbsp;<a href="classes/reset_pass/reset_pass.php">Reset password</a></label>
        </form>
    </div>
</div>
</body>
</html>