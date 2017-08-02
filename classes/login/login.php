<?php
namespace SD_app \LogIn;

use SD_app\DbConnection;

class LogIn
{
    public function login()
    {
        $sql = new DbConnection();
        if (isset($_POST['Submit'])) {
            $username = trim($_POST['Username']);
            $password = trim($_POST['Password']);
            if ($username == "" || $password == "") {
                echo "<h3 style='text-align: center; margin-top:150px; margin-bottom: -150px'>Please provide your username and password!</h3>";
            } elseif (!empty($username) && !empty($password)) {
                $sql->query("SELECT * FROM users WHERE user ='" . $username ."' and password='" . $password . "'");
                $row = $sql->resultset();
                if (count($row) == 1) {
                    echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/departments.php'</script>";
                } else {
                    echo "<h3 style='text-align: center; margin-bottom: -100px;'>Bad username or password! Please retry!</h3>";
                }
            }
    }
    }
}