<?php
class Delete_user {
    public function delete(){
        $sql = new \SD_app\DbConnection();
        $id = $_POST['id_manager'];
        $delete = $_POST['delete'];
            if(isset($delete)){
                $sql->query("DELETE FROM manager WHERE id_manager='" . $id."'");
                $del = $sql->resultset();
                var_dump($del);
            } else {
                echo 'okkkkkasdasd';
            }
    }
}