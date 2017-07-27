<?php
require_once '../../classes/dbconnect/dbconnect.php';
include '../../classes/sign_up/signup.php';
//$db = new \SD_app\DbConnection();
//$db->query('SELECT * FROM users');
//$rows = $db->resultset();

$login = new SignUp();
$login->register();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="../../assets/css/signup.css">
</head>
<body>
<div class="header">
    <div class="center">
        <h2>Registration</h2>
        <form action="../../index.php" method="post">
            Name: <input class="input" type="text" name="Name" placeholder="name"><br>
            Surname: <input class="input" type="text" name="Surname" placeholder="surname"><br>
            Username: <input class="input" type="text" name="Username" placeholder="user"><br>
            Email: <input class="input" type="email" name="Email" placeholder="email"><br>
            Password: <input class="input" type="password" name="Password" placeholder="password"  maxlength="16"><br><br>
            <input id="submit" type="submit" name="Register" value="Sign Up"><br><br>
            <label>Already have an account? &nbsp;&nbsp;<a href="../../index.php">Sign In</a></label>
        </form>
    </div>
</div>
</body>
</html>