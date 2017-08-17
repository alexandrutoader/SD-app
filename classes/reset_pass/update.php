<?php
namespace SD_app\UpdatePassword;
use SD_app\DbConnection;
include '../../classes/reset_pass/reset.php';

class UpdatePassword {
    public function update(){
        $sql = new DbConnection();
        if (isset($_POST['Update'])){
            $new_password = $_POST['Password'];
            $confirm_password = $_POST['Confirm'];
            $username = $_SESSION['username'];

            if (!empty($new_password) && !empty($confirm_password) && strlen($new_password) >= 6) {
                if($new_password === $confirm_password) {
                    $sql->query("UPDATE users SET password='" . $new_password . "' WHERE user = '" . $username . "'");
                    $sql->bind('password', $new_password);
                    $sql->bind('username', $username);
                    $sql->execute();
                    echo "<script>alert('The password have been reset! You will be redirected to the Login page!'); location.href='../../index.php'</script>";
                } else {
                    echo "<h3 style='text-align: center; margin-bottom: -100px'>The new password doesn't match! Please make sure that you fill the confirmed pass with the same input!</h3>";
                }
            } else {
                echo "<h3 style='text-align: center; margin-bottom: -100px'>Please fill all the inputs! The password must be at least 6 characters!</h3>";
            }
        }
    }
}