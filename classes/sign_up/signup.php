<?php
session_start();
class SignUp {
    public function register(){
        if((isset($_POST['Register']))){
            if(!empty($_POST['Name']) || !empty($_POST['Surname']) || !empty($_POST['Username']) || !empty($_POST['Password'])) {
                $name = '';
                $surname = '';
                $username = '';
                $password = '';

                echo "<h3><script> alert('Registration successed!')</script></h3>";
                $sql = new \SD_app\DbConnection();
                $sql->query('INSERT INTO users (id, name, surname, user, password) VALUES ("", :name, :surname, :username , :password )');
                $sql = new \PDOStatement();
                $sql->execute(array('name' => $name, 'surname' => $surname, 'username' => $username, 'password' => $password));
                header('Location: ../../index.php');
            }
        } elseif (isset($_POST['Register'])) {
            echo "<h3 style='text-align: center; margin-top: 100px; margin-bottom: -140px'>Please complete username and password to submit your data!</h3>";
        }
    }
}