<?php
class Delete_user {
    public function delete(){
        if(isset($_POST['delete'])){
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