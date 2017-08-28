<?php
class Delete_user {
    public function deleteManager(){
        if(isset($_POST['del_manager'])){
            $sql = new \SD_app\DbConnection();
            $id = $_POST['id_manager'];
            $sql->query("DELETE FROM manager WHERE id_manager='" . $id. "'");
            $sql->bind('id_manager', $id);
            $sql->execute();
            echo "<script>alert('Delete successfully!'); location.href='../../classes/departments/departments.php'</script>";
        } else {
            echo "<h3>Not good!</h3>";
        }
    }

    public function deleteUser(){
        if(isset($_POST['del_user'])){
            $sql = new \SD_app\DbConnection();
            $id = $_POST['id'];
            var_dump($id);
            var_dump($_POST['del_user']);
            $sql->query("DELETE FROM users WHERE id='" . $id. "'");
            $sql->bind('id', $id);
            $sql->execute();
            echo "<script>alert('Delete successfully!'); location.href='../../classes/departments/departments.php'</script>";
        } else {
            echo "<h3>Not good user!</h3>";
        }
    }

    public function updateManager(){
        if(isset($_POST['update_manager'])){
            $sql = new \SD_app\DbConnection();
            $id = $_POST['id_manager'];
            $sql->query("DELETE FROM manager WHERE id_manager='" . $id. "'");
            $sql->bind('id_manager', $id);
            $sql->execute();
            echo "<script>alert('Delete successfully!'); location.href='../../classes/departments/departments.php'</script>";
        } else {
            echo "<h3>Not good!</h3>";
        }
    }
}