<?php
    require_once 'classes/dbconnect/dbconnect.php';
    include 'classes/login/login.php';
    $db = new \SD_app\DbConnection();
    $db->query('SELECT * FROM users');
    $rows = $db->resultset();

$login = new LogIn();
$login->login();
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
        <form action="index.php" method="post">
            Username: <input class="input" type="text" name="Username" placeholder="user"  title="Please fill the field with letters and minimum four required"><br>
            Password: <input class="input" type="password" name="Password" placeholder="password"  maxlength="16"><br><br>
            <input id="submit" type="submit" name="Submit" value="Login"><br><br>
            <label>Don't have account yet? &nbsp;&nbsp;<a href="classes/sign_up/register.php">Sign Up</a></label>
        </form>
    </div>
</div>
</body>
</html>