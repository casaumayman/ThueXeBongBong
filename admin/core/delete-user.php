<?php
  include "admin/view/admin-menu.php";
  include "core/mysql.php";
  $id_cart=addslashes($_GET['id-user']);
  //var_dump("SELECT * FROM users WHERE id={$id_user}");
  try{
    $db -> exec("DELETE FROM users WHERE id = {$id_cart}");
  } catch(DPOexeption $ex){
    echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình xoá, vui lòng thử lại sau!');</script>";
    echo"<meta http-equiv='refresh' content='0; index.php?thread=user-manager'>";
  }
  echo"<SCRIPT LANGUAGE='JavaScript'>alert('Xoa lua chon thanh cong!');</script>";
  echo"<meta http-equiv='refresh' content='0; index.php?thread=user-manager'>";
?>
