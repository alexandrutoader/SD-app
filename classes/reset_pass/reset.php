<?php
namespace SD_app\ResetPassword;
use SD_app\DbConnection;

class ResetPassword {
    public function resetPass(){
        $sql = new DbConnection();
        if (isset($_POST['Submit'])) {
            $username = $_POST['Username'];
            $email = $_POST['Email'];

            if (!empty($username) || !empty($email)){
                $sql->query("SELECT * FROM users WHERE user ='" . $username ."' or email='" . $email . "'");
                $row = $sql->resultset();

                if(count($row) == 1){
                    if(isset($username)) {
                        $sql->query("UPDATE users SET password ='' WHERE user ='" . $username . "'");
                        $sql->bind('username', $username);
                        $sql->execute();
                        echo "<script>alert('The password was reset successfully!'); location.href='../../index.php'</script>";
                    } else {
                        $sql->query("UPDATE users SET password ='' WHERE email ='" . $email . "'");
                        $sql->bind('username', $email);
                        $sql->execute();
                        echo "<script>alert('The password was reset successfully!'); location.href='../../index.php'</script>";
                    }
                } elseif(count($row) < 1) {
                    echo "<script>alert('The user or email is not valid! Please try again with another input!');</script>";
                }
            } else {
                    echo "<script>alert('Please enter your user or email to recover your password!');</script>";
            }
        }
    }
}