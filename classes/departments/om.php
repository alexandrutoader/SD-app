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
    <table>
        <tr>
            <th>Departments</th>
        </tr>
        <tr>
            <td><a href="">OM</a></td>
            <?php
            $db = new \SD_app\DbConnection();
            $db->query("SELECT * FROM manager where id_departament='6'");
            $result = $db->resultset();
            echo "<table style='border:1px solid black;'><tr>" . "" . "<th>Manager:</th></tr>" . "<tr><td>" . $result[0]['rang'] . "</td></tr>";
            echo "</table>";
            ?>
        </tr>
        <?php
        $db = new \SD_app\DbConnection();
        $db->query("SELECT * FROM users where echipa='OM2'");
        $result = $db->resultset();
        echo "<table style='border:1px solid black;'><tr>" . "" . "<th>Name</th>" . "" . "<th>Surname</th>" . "" . "<th>Echipa</th>" . "" . "<th>User</th>" . "" . "<th>Email</th></tr>";
        foreach($result as $output) {
            echo "</td><td>" . $output['name'] . "</td><td>" . $output['surname'] . "</td><td>" . $output['echipa'] . "</td><td>" . $output['user'] . "</td><td>" . $output['email'] . "</td></tr>";
        }
        echo "</table><br>";
        ?>
    </table>
</div>
</body>
</html>