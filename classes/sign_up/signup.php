<?php
class SignUp {
    public function register(){
        $sql = new \SD_app\DbConnection();
        if(isset($_POST["Register"])){
            $name = $_POST['Name'];
            $surname = $_POST['Surname'];
            $username = $_POST['Username'];
            $email = $_POST['Email'];
            $password = md5($_POST['Password']);
            $options = $_POST['Subject'];
            $sql->query("SELECT * FROM users WHERE email='$email'");
            $checkemail = $sql->resultset();
            $sql->query("SELECT * FROM users WHERE user='$username'");
            $checkuser = $sql->resultset();
            $mail = isset($checkemail[0]['email']) ? $checkemail[0] : '';

            if ($name == '' || $surname == '' || $username == '' || $password == '' || $options == 'Please select your Team') {
                echo "<h3 style='text-align: center; margin-top: 100px;'>Please provide your name, surname, username, password and team.</h3>";
            } elseif (count($mail[0]) > 1 && count($checkuser[0]) > 1){
                echo "<script>alert('Email and user already exists! Please type another email and user!')</script>";
            } elseif(count($mail[0]) > 1){
                echo "<script>alert('Email already exists! Please type another email!')</script>";
            } elseif(count($checkuser[0]) > 1){
                echo "<script>alert('User already exists! Please select another user!')</script>";
            } else {
                    $sql->query('INSERT INTO users (name, surname, echipa, user, email, password) VALUES (:name, :surname, :options,:username , :email,:password)');
                    $sql->bind('name', $name);
                    $sql->bind('surname', $surname);
                    $sql->bind('options', $options);
                    $sql->bind('username', $username);
                    $sql->bind('email', $email);
                    $sql->bind('password', $password);
                    $sql->execute();

                    $sql->query('INSERT INTO angajati (name, surname, nume_echipa) VALUES (:name, :surname, :options)');
                    $sql->bind('name', $name);
                    $sql->bind('surname', $surname);
                    $sql->bind('options', $options);
                    $sql->execute();
                    echo "<script>alert('Registration successfully!'); location.href='../../index.php'</script>";
            }
        }
    }
}