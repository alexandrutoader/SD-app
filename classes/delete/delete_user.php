<?php
class Delete_user {
    public function delete(){
        $sql = new \SD_app\DbConnection();
            if(isset($_POST['delete'])){
                $sql->query("DELETE FROM manager WHERE ");
            }
    }
}