<?php
require_once '../../classes/dbconnect/dbconnect.php';
require_once "../../classes/reset_pass/update.php";
$update = new \SD_app\UpdatePassword\UpdatePassword();
$update->update();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Update</title>
    <link rel="stylesheet" href="../../assets/css/update_pass.css">
</head>
<body>
<div class="header">
    <div class="center">
        <h3>Update Password</h3>
        <form action="<?=$_SERVER['PHP_SELF']?>" method="post">
            New Password: <input class="input" type="text" name="Password" placeholder="new password"><br>
            Confirm Password: <input class="input" type="text" name="Confirm" placeholder="confirm password"><br>
            <input id="submit" type="submit" name="Update" value="Update"><br><br>
        </form>
    </div>
</div>
</body>
</html>