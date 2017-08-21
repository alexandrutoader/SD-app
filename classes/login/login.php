<?php
namespace SD_app \LogIn;

use SD_app\DbConnection;

class LogIn
{
    public function login()
    {
        $sql = new DbConnection();
        if (isset($_POST['Submit'])) {
            $username = $_POST['Username'];
            $password = $_POST['Password'];
            $pass = md5($password);

            if ($username == "" || $password == "") {
                echo "<h3 style='text-align: center; margin-top:150px; margin-bottom: -150px'>Please provide your username and password!</h3>";
            } elseif (!empty($username) && !empty($password)) {
                $sql->query("SELECT * FROM users WHERE user_type='ADMIN' AND user ='" . $username . "'");
                $admin = $sql->resultset();

                $sql->query("SELECT * FROM users WHERE user ='" . $username ."' AND password='" . $pass. "'");
                $user = $sql->resultset();
                $a = $user[0]['password'];

                if(count($admin) == 1){
                    echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/departments.php'</script>";
                }  elseif (count($user) == 1 && isset($pass) === isset($a)) {
                    $sql->query("SELECT * FROM users WHERE user='" . $username . "'");
                    $teams = $sql->resultset();
                        switch ($teams[0]['echipa']) {
                            case "OM2":
                                echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/om.php'</script>";
                                break;
                            case "Team Doc":
                                echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/doc.php'</script>";
                                break;
                            case "HR":
                                echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/hr.php'</script>";
                                break;
                            case "OM1":
                                echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/om.php'</script>";
                                break;
                            case "Team Marketing":
                                echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/marketing.php'</script>";
                                break;
                            case "SCM":
                                echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/scm.php'</script>";
                                break;
                            case "Team CC":
                                echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/cc.php'</script>";
                                break;
                            case "QC":
                                echo "<script>alert('Login successfully!'); location.href='../SD_app/classes/departments/qc.php'</script>";
                                break;
                            default:
                                echo "You are not asigned to a team!";
                        }
                } else {
                    echo "<h3 style='text-align: center; margin-bottom: -100px;'>Bad username or password! Please retry!</h3>";
                }
            }
        }
    }
}