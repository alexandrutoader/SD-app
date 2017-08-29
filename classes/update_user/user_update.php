<?php
require_once '../../classes/dbconnect/dbconnect.php';
require_once '../delete/delete_user.php';
$update = new Delete_user();
if(isset($_POST['Update'])) {
    $update->updateUser();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Update</title>
    <link rel="stylesheet" href="../../assets/css/user_update_style.css">
</head>
<body>
<div class="header">
    <div class="center">
        <h3>Update User Information</h3>
        <form action="<?=$_SERVER['PHP_SELF']?>" method="post">
            Name: <input class="input" type="text" name="Name" placeholder="name"><br>
            Surname: <input class="input" type="text" name="Surname" placeholder="surname"><br>
            Team: <select name="Team">
                <option selected="selected">Please select your Team</option>
                <option value="OM2">OM2</option>
                <option value="Team Doc">Team Doc</option>
                <option value="HR">HR</option>
                <option value="OM1">OM1</option>
                <option value="Team Marketing">Team Marketing</option>
                <option value="SCM">SCM</option>
                <option value="Team CC">Team CC</option>
                <option value="QC">QC</option>
            </select><br>
            User: <input class="input" type="text" name="User" placeholder="user"><br>
            Email: <input class="input" type="email" name="Email" placeholder="email(optional)"><br>
            Password: <input class="input" type="password" name="Password" placeholder="password"><br>
            User Type: <select name="User_type">
                <option selected="selected">Please select the user type</option>
                <option value="USER">User</option>
                <option value="ADMIN">Admin</option>
            </select><br><br>
            <input id="submit" type="submit" name="Update" value="Update"><br><br>
            <label style="font-size: 13px"> Do you want to abort the update?&nbsp;<a href="../../classes/departments/departments.php">Click here</a></label>
        </form>
    </div>
</div>
</body>
</html>