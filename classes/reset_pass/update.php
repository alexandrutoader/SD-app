<?php
namespace SD_app\UpdatePassword;
use SD_app\DbConnection;
include '../../classes/login/login.php';

class UpdatePassword {
    public function update(){
        $sql = new DbConnection();
        if (isset($_POST['Update'])){
            $new_password = $_POST['Password'];
            $confirm_password = $_POST['Confirm'];
            $username = $_GET['$username'];

            if (!empty($new_password) && !empty($confirm_password)) {
                if($new_password === $confirm_password) {
                    $sql->query("UPDATE users SET password='" . $new_password . "' WHERE user = '" . $username . "'");
                } else {
                    echo "The new password doesn't match! Please make sure that you fill the confirmed pass with the same input!";
                }
            } else {
                echo "Please fill all the inputs!";
            }
        }
    }
}