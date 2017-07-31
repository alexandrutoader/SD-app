<?php
namespace SD_app \LogIn;

use SD_app\DbConnection;

class LogIn {
    public function login()
    {
        $sql = new DbConnection();
        if (isset($_POST['Submit'])) {
            $username = trim($_POST['Username']);
            $password = trim($_POST['Password']);

            if($username == "" && $password == ""){
                echo "<h3 style='text-align: center; margin-top:150px; margin-bottom: -150px'>Please provide your username and password!</h3>";
            } elseif ($username == "") {
                echo "<h3 style='text-align: center; margin-top:150px; margin-bottom: -150px'>Please provide your username!</h3>";
            } elseif ($password == "" && strlen($password) < 6) {
                echo "<h3 style='text-align: center; margin-top:150px; margin-bottom: -150px'>Please provide your password! The pass must be at least 6 characters.</h3>";
            } else {
                $sql->query('INSERT INTO users (user, password) VALUES (:username , :password )');
                $sql->bind('username', $username);
                $sql->bind('password', $password);
                $sql->execute();
                header('Location: ../SD_APP/classes/departments/departments.php');
            }
        }
    }
}