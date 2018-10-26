<?php 
  $id_product=addslashes($_GET['id-product']);
  include "core/mysql.php";
  try{
    $db->exec("DELETE FROM products WHERE id = '{$id_product}'");
  } catch(DPOexeption $ex){
    echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình đăng kí, vui lòng thử lại sau!');</script>";
    echo"<meta http-equiv='refresh' content='0; index.php?thread=produc-manager'>";
  }
    echo"<SCRIPT LANGUAGE='JavaScript'>alert('Xoa lua chon thanh cong!');</script>";
    echo"<meta http-equiv='refresh' content='0; index.php?thread=produc-manager'>";
?>