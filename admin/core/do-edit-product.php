<?php
  $id_product=addslashes($_GET['id-product']);
  $name = addslashes($_POST['name']);
  $price = addslashes($_POST['price']);
  $detail = addslashes($_POST['detail']);
  if ($_POST["id_cate"]==="option1") $id_cate = 1;
  elseif ($_POST["id_cate"]==="option2") $id_cate = 2;
  else $id_cate = 3;
  include "core/mysql.php";
  try{
    $db->exec("UPDATE products SET name = '{$name}', price = {$price}, detail = '{$detail}', id_cate = {$id_cate} WHERE id = {$id_product}");
    //echo "UPDATE products SET name = '{$name}', price = {$price}, detail = '{$detail}', id_cate = {$id_cate} WHERE id = {$id_product}";
  } catch(DPOexeption $ex) {
    echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình cập nhật, vui lòng thử lại sau!');</script>";
    echo"<meta http-equiv='refresh' content='0; index.php?thread=produc-manager'>";
  }
  echo"<SCRIPT LANGUAGE='JavaScript'>alert('Cập nhật thành công!');</script>";
  echo"<meta http-equiv='refresh' content='0; index.php?thread=produc-manager'>";
?>