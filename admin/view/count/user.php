<?php 
    include "core/mysql.php";
    $strQuery = "SELECT COUNT(*) FROM users WHERE role = 0";
    try {
        $res = $db -> query($strQuery) -> fetch();
    } catch(DPOexeption $ex){
        echo $ex -> getMessage();
    }
    echo $res[0];
?>