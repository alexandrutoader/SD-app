<?php
require_once "../../classes/dbconnect/dbconnect.php";
require_once "../delete/delete_user.php";

$delete = new Delete_user();
if (isset($_POST['del_manager'])){
    $delete->configManager();
} elseif (isset($_POST['del_user'])){
    $delete->configUser();
} elseif (isset($_POST['update_user'])){
    $delete->configUser();
}
?>
<!DOCTYPE>
<html>
<head>
    <title>Departments</title>
    <link rel="stylesheet" href="../../assets/css/deps_style.css">
</head>
<body>
<div class="departments">
    <form>
        <input type="button" name="LogOut" value="Log out" onclick="document.location.href='../../index.php'">
    </form>
    <table>
        <tr>
            <th>Departments</th>
        </tr>
        <tr>
            <?php
            $db = new \SD_app\DbConnection();
            $db->query("SELECT * FROM manager");
            $result = $db->resultset();
            echo "<table style='border:1px solid black;'><tr>" . "" . "<th>Id_manager</th>" . "" . "<th>Id_departament</th>" . "" . "<th>Rang</th>" . "" . "<th>Nume_manager</th>" . "" . "<th>Numar_subalterni</th></tr>";
            foreach($result as $output) { ?>
                <form action ="../../classes/departments/departments.php"  method='post'>
                <tr><td><?php echo $output['id_manager']; ?></td>
                <td><?php echo $output['id_departament']; ?></td>
                <td><?php echo $output['rang']; ?></td>
                <td><?php echo $output['nume_manager']; ?></td>
                <td><?php echo $output['numar_subalterni']; ?></td>
                <td><input type='submit' name='update_manager' value='Update'>
                <td><input type='submit' name='del_manager' value='Delete'>
                <input type ='hidden' name="id_manager" value="<?php echo $output['id_manager'] ?>"></form></td></tr>
        <?php
            }
            echo "</table><br>";
            ?>
        <?php
        $db = new \SD_app\DbConnection();
        $db->query("SELECT * FROM users");
        $result = $db->resultset();
        echo "<table style='border:1px solid black;'><tr>" . "" . "<th>Name</th>" . "" . "<th>Surname</th>" . "" . "<th>Echipa</th>" . "" . "<th>User</th>" . "" . "<th>Email</th></tr>";
        foreach($result as $output) { ?>
            <form action ="../../classes/departments/departments.php"  method='post'>
            <tr><td><?php echo $output['name']; ?></td>
            <td><?php echo $output['surname']; ?></td>
            <td><?php echo $output['echipa']; ?></td>
            <td><?php echo $output['user']; ?></td>
            <td><?php echo $output['email']; ?></td>
            <input type ='hidden' name="id" value="<?php echo $output['id'] ?>">
                <td><input type='submit' name='update_user' value='Update'>
                <td><input type='submit' name='del_user' value='Delete'></form></td></tr>
        <?php
        }
        echo "</table>";
        ?>
    </table>
</div>
</body>
</html>
