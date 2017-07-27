<?php

class SignUp {
    public function register(){
        if(!empty($_POST['Name']) && !empty($_POST['Surname']) && !empty($_POST['Username']) && !empty($_POST['Password'])){
            $name = '';
            $surname = '';
            $username = '';
            $password = '';
            if(isset($_POST['Register'])){
                $sql = new \SD_app\DbConnection();
                $sql->query('INSERT INTO users (id, name, surname, user, password) VALUES ("", :name, :surname, :username , :password )');
                $sql = new \PDOStatement();
                $sql->execute(array('name' => $name, 'surname' => $surname, 'username' => $username, 'password' => $password));
                echo "<script>alert('Registration successed!')</script>";
//                header('Location: ../../index.php');
            }
        } elseif (isset($_POST['Submit'])) {
            echo "<h3 style='text-align: center; margin-top: 100px; margin-bottom: -140px'>Please complete username and password to submit your data!</h3>";
        }
    }
}