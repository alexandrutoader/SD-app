<?php
require_once '../../classes/dbconnect/dbconnect.php';
require_once '../../classes/sign_up/signup.php';

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
        <form action="<?=$_SERVER['PHP_SELF']?>" method="post">
            Name: <input class="input" type="text" name="Name" placeholder="name"><br>
            Surname: <input class="input" type="text" name="Surname" placeholder="surname"><br>
            Email: <input class="input" type="email" name="Email" placeholder="email"><br>
            Username: <input class="input" type="text" name="Username" placeholder="user"><br>
            Password: <input class="input" type="password" name="Password" placeholder="password" minlength="6" maxlength="16"><br>
            Team: <select name="Subject">
                    <option selected="selected">Please select your Team</option>
                    <option value="OM2">OM2</option>
                    <option value="Team Doc">Team Doc</option>
                    <option value="HR">HR</option>
                    <option value="OM1">OM1</option>
                    <option value="Team Marketing">Team Marketing</option>
                    <option value="SCM">SCM</option>
                    <option value="Team CC">Team CC</option>
                    <option value="QC">QC</option>
                </select><br><br>
            <input type="submit" name="Register" value="Sign Up"><br><br>
            <label style="font-size: 13px">Already have an account? &nbsp;&nbsp;<a href="../../index.php">Sign In</a></label><br><br>
            <label style="font-size: 13px"> If you want to refresh the page, click <a href="">here.</a></label>
        </form>
    </div>
</div>
</body>
</html>