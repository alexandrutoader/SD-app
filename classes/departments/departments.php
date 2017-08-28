<?php
require_once "../../classes/dbconnect/dbconnect.php";
require_once "../delete/delete_user.php";

if (isset($_POST['delete'])){
    $delete = new Delete_user();
    $delete->delete();
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
                <input type ='hidden' name="id_manager" value="<?php echo $output['id_manager'] ?>">
                <td><input type='submit' name='delete' value='X'></form></td></tr>

        <?php
            }
            echo "</table><br>";
            ?>
        <?php
        $db = new \SD_app\DbConnection();
        $db->query("SELECT * FROM users");
        $result = $db->resultset();
        echo "<table style='border:1px solid black;'><tr>" . "" . "<th>Name</th>" . "" . "<th>Surname</th>" . "" . "<th>Echipa</th>" . "" . "<th>User</th>" . "" . "<th>Email</th></tr>";
        foreach($result as $output) {
            echo "</td><td>" . $output['name'] . "</td><td>" . $output['surname'] . "</td><td>" . $output['echipa'] . "</td><td>" . $output['user'] . "</td><td>" . $output['email'] . "</td></tr>";
        }
        echo "</table>";
        ?>
    </table>
</div>
</body>
</html>
