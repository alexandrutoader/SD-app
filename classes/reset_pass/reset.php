<?php
namespace SD_app\ResetPassword;
use SD_app\DbConnection;
session_start();
class ResetPassword {
    public function resetPass(){
        $sql = new DbConnection();
        if (isset($_POST['Submit'])) {
            $username = $_POST['Username'];
            $_SESSION['username'] = $username;


            if (!empty($username)){
                $sql->query("SELECT * FROM users WHERE user ='" . $username ."'");
                $user = $sql->resultset();
                if(count($user) == 1){
                    if(isset($username)) {
                        $sql->query("UPDATE users SET password ='' WHERE user ='" . $username . "'");
                        $sql->bind('username', $username);
                        $sql->execute();
                        echo "<script>alert('The password was reset successfully! Please enter your new password!'); location.href='../../classes/reset_pass/update_pass.php?username=$username'</script>";
                    }
                } elseif(count($user) < 1) {
                    echo "<script>alert('The user you have entered is not valid! Please try again with another input!');</script>";
                }
            } else {
                    echo "<script>alert('Please enter your user to reset your password!');</script>";
            }
        }
    }
}