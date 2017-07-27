<?php

class LogIn {
    public function login(){
        if(!empty($_POST['Username']) && !empty($_POST['Password'])){
            $username = '';
            $password = '';
            if(isset($_POST['Submit'])){
                $sql = new \SD_app\DbConnection();
                $sql->query('INSERT INTO users (id, user, password) VALUES ("", :username , :password )');
                $sql = new \PDOStatement();
                $sql->execute(array('username' => $username, 'password' => $password));
                header('Location: ../SD_APP/classes/departments/departments.php');
            }
        } elseif (isset($_POST['Submit'])) {
            echo "<h3 style='text-align: center; margin-top: 100px; margin-bottom: -140px'>Please complete username and password to submit your data!</h3>";
        }
    }
}