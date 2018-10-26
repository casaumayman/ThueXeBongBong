<?php 
    include "core/mysql.php";
    $strQuery = "SELECT COUNT(*) FROM feedbacks";
    try {
        $res = $db -> query($strQuery) -> fetch();
    } catch(DPOexeption $ex){
        echo $ex -> getMessage();
    }
    echo $res[0];
?>