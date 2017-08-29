<?php
session_start();
class Delete_user {
    public function configManager(){
        if(isset($_POST['del_manager'])){
            $sql = new \SD_app\DbConnection();
            $id = $_POST['id_manager'];
            $sql->query("DELETE FROM manager WHERE id_manager='" . $id. "'");
            $sql->bind('id_manager', $id);
            $sql->execute();
            echo "<script>alert('Delete successfully!'); location.href='../../classes/departments/departments.php'</script>";
        } elseif (isset($_POST['update_manager'])) {
            $id = $_POST['id_manager'];
            $_SESSION['id_manager'] = $id;
            header("location:../../classes/update_user/user_update.php?id=$id");
        }
    }

    public function updateManager(){
        $id = $_SESSION['id_manager'];
        $sql = new \SD_app\DbConnection();
        $name = $_POST['Name'];
        $surname = $_POST['Surname'];
        $options = $_POST['Team'];
        $username = $_POST['User'];
        $email = $_POST['Email'];
        $password = md5($_POST['Password']);
        $user_type= $_POST['User_type'];
        $sql->query("SELECT * FROM users WHERE email='$email'");
        $checkemail = $sql->resultset();
        $sql->query("SELECT * FROM users WHERE user='$username'");
        $checkuser = $sql->resultset();
        $mail = isset($checkemail[0]['email']) ? $checkemail[0] : '';
        $user = isset($checkuser[0]['user']) ? $checkuser[0] : '';

        if ($name == '' || $surname == '' || $username == '' || $password == '') {
            echo "<h3 style='text-align: center; margin-top: 100px;'>Please provide your name, surname, username, password and team.</h3>";
        } elseif (count($mail) > 1 && $checkuser[0] > 1){
            echo "<script>alert('Email and user already exists! Please type another email and user!')</script>";
        } elseif(count($mail) > 1){
            echo "<script>alert('Email already exists! Please type another email!')</script>";
        } elseif(count($user) > 1){
            echo "<script>alert('User already exists! Please select another user!')</script>";
        } else {
            echo "<script>alert('The user have been updated!'); location.href='../../classes/departments/departments.php'</script>";
            $sql->query("UPDATE users SET name='" . $name. "', surname='" . $surname. "', echipa='" . $options. "', user='" . $username. "', email='" . $email. "', password='" . $password. "', user_type='" . $user_type. "' 
                            WHERE id='" . $id. "'");
            $sql->bind('name', $name);
            $sql->bind('surname', $surname);
            $sql->bind('options', $options);
            $sql->bind('username', $username);
            $sql->bind('email', $email);
            $sql->bind('password', $password);
            $sql->execute();
        }
    }

    public function configUser(){
        if(isset($_POST['del_user'])){
            $sql = new \SD_app\DbConnection();
            $id = $_POST['id'];
            $sql->query("DELETE FROM users WHERE id='" . $id. "'");
            $sql->bind('id', $id);
            $sql->execute();
            echo "<script>alert('Delete successfully!'); location.href='../../classes/departments/departments.php'</script>";
        } elseif (isset($_POST['update_user'])){
            $id = $_POST['id'];
            $_SESSION['id'] = $id;
            header("location:../../classes/update_user/user_update.php?id=$id");
        }
    }

    public function updateUser(){
            $id = $_SESSION['id'];
            $sql = new \SD_app\DbConnection();
            $name = $_POST['Name'];
            $surname = $_POST['Surname'];
            $options = $_POST['Team'];
            $username = $_POST['User'];
            $email = $_POST['Email'];
            $password = md5($_POST['Password']);
            $user_type= $_POST['User_type'];
            $sql->query("SELECT * FROM users WHERE email='$email'");
            $checkemail = $sql->resultset();
            $sql->query("SELECT * FROM users WHERE user='$username'");
            $checkuser = $sql->resultset();
            $mail = isset($checkemail[0]['email']) ? $checkemail[0] : '';
            $user = isset($checkuser[0]['user']) ? $checkuser[0] : '';

            if ($name == '' || $surname == '' || $username == '' || $password == '') {
                echo "<h3 style='text-align: center; margin-top: 100px;'>Please provide your name, surname, username, password and team.</h3>";
            } elseif (count($mail) > 1 && $checkuser[0] > 1){
                echo "<script>alert('Email and user already exists! Please type another email and user!')</script>";
            } elseif(count($mail) > 1){
                echo "<script>alert('Email already exists! Please type another email!')</script>";
            } elseif(count($user) > 1){
                echo "<script>alert('User already exists! Please select another user!')</script>";
            } else {
                echo "<script>alert('The user have been updated!'); location.href='../../classes/departments/departments.php'</script>";
                $sql->query("UPDATE users SET name='" . $name. "', surname='" . $surname. "', echipa='" . $options. "', user='" . $username. "', email='" . $email. "', password='" . $password. "', user_type='" . $user_type. "' 
                            WHERE id='" . $id. "'");
                $sql->bind('name', $name);
                $sql->bind('surname', $surname);
                $sql->bind('options', $options);
                $sql->bind('username', $username);
                $sql->bind('email', $email);
                $sql->bind('password', $password);
                $sql->execute();
            }
    }
}