<?php
require_once '../../classes/dbconnect/dbconnect.php';
require_once '../delete/delete_user.php';
$update = new Delete_user();
if(isset($_POST['Update'])) {
    $update->updateManager();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Update</title>
    <link rel="stylesheet" href="../../assets/css/manager_update_style.css">
</head>
<body>
<div class="header">
    <div class="center">
        <h3>Update Manager Information</h3>
        <form action="<?=$_SERVER['PHP_SELF']?>" method="post">
            Rang: <input class="input" type="text" name="Rang" placeholder="rang"><br>
            Name: <input class="input" type="text" name="Name" placeholder="name"><br><br>
            <input id="submit" type="submit" name="Update" value="Update"><br><br>
            <label style="font-size: 13px"> Do you want to abort the update?&nbsp;<a href="../../classes/departments/departments.php">Click here</a></label>
        </form>
    </div>
</div>
</body>
</html>