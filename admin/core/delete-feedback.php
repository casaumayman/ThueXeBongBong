<?php
  include "core/mysql.php";
  $id_feedback=addslashes($_GET['feedback-id']);
  //var_dump("SELECT * FROM users WHERE id={$id_user}");
  try{
    $db -> exec("DELETE FROM feedbacks WHERE id = {$id_feedback}");
  } catch(DPOexeption $ex){
    echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình xoá, vui lòng thử lại sau!');</script>";
    echo"<meta http-equiv='refresh' content='0; index.php?thread=feedback-manager'>";
  }
  echo"<SCRIPT LANGUAGE='JavaScript'>alert('Xóa lựa chọn thành công!');</script>";
  echo"<meta http-equiv='refresh' content='0; index.php?thread=feedback-manager'>";
?>
