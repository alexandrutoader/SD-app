<?php
require_once "../../classes/dbconnect/dbconnect.php";
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
            foreach($result as $output) {
                echo "<td>" . $output['id_manager'] . "</td><td>" . $output['id_departament'] . "</td><td>" . $output['rang'] . "</td><td>" . $output['nume_manager'] . "</td><td>" . $output['numar_subalterni'] . "</td><td><form action='' method='post'><input type='submit' value='X'></form></td></tr>";
            }
            echo "</table><br>";
            echo "</table>";
            ?>
        </tr>
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
