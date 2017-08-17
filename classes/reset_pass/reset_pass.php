<?php
require_once '../../classes/dbconnect/dbconnect.php';
require_once "../../classes/reset_pass/reset.php";
$reset = new \SD_app\ResetPassword\ResetPassword();
$reset->resetPass();

?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="../../assets/css/reset.css">
</head>
<body>
<div class="header">
    <div class="center">
        <h3>Reset your password</h3>
        <h5>Please enter your username for password reset</h5>
        <form action="<?=$_SERVER['PHP_SELF']?>" method="post">
            Username: <input class="input" type="text" name="Username" placeholder="user"><br>
            <input id="submit" type="submit" name="Submit" value="Reset"><br><br>
            <label style="font-size: 13px">Remember your password? &nbsp;&nbsp;<a href="../../index.php">Click here</a></label>
        </form>
    </div>
</div>
</body>
</html>