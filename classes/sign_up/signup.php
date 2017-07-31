<?php

class SignUp {
    public function register(){
        $sql = new \SD_app\DbConnection();
        if(isset($_POST["Register"])){
            $name = trim($_POST['Name']);
            $surname = trim($_POST['Surname']);
            $username = trim($_POST['Username']);
            $password = trim($_POST['Password']);
             if ($name == '' || $surname == '' || $username == '' || $password == '' ) {
                echo "<h3 style='text-align: center; margin-top: 100px;'>Please provide your name, surname, username and password!</h3>";
            } else {
                     $name = trim($_POST['Name']);
                     $surname = trim($_POST['Surname']);
                     $username = trim($_POST['Username']);
                     $email = trim($_POST['Email']);
                     $password = trim($_POST['Password']);

                     $sql->query('INSERT INTO users (name, surname, user, email,password) VALUES (:name, :surname, :username , :email,:password )');
                     $sql->bind('name', $name);
                     $sql->bind('surname', $surname);
                     $sql->bind('username', $username);
                     $sql->bind('email', $email);
                     $sql->bind('password', $password);
                     $sql->execute();
                     header('Location: ../../index.php');
            }
        }
    }
}