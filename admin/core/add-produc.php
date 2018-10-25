<?php
  include "core/mysql.php";
  $name = addslashes($_POST['name']);
  $price = addslashes($_POST['price']);
  $detail = addslashes($_POST["detail"]);
  $price = addslashes($_POST['price']);
  $id_cate;
  if ($_POST["id_cate"]==="option1") $id_cate = 1;
  elseif ($_POST["id_cate"]==="option2") $id_cate = 2;
  else $id_cate = 3;
  $img = NULL;
  if (isset($_FILES["img"])) {
    if ($_FILES["img"]["error"]) {
      echo "Upload ảnh thất bại!";
    }
    else{
      $ex_img = pathinfo($_FILES["img"]["name"], PATHINFO_EXTENSION);
      $numbersOfProduct = $db -> query("select count(id) from products") -> fetch();
      $img = "img_".$numbersOfProduct[0].".".$ex_img;
      $filePatch = "images/sanpham/".$img;
      move_uploaded_file($_FILES["img"]["tmp_name"],$filePatch);
    }
  }
  else {
    echo "<SCRIPT LANGUAGE='JavaScript'>alert('Chú ý, sản phẩm mới sẽ không có hình ảnh!');</script>";
  }
  try{
    $strQuery = "INSERT INTO products (name,price,img,detail,id_cate,hide) values ('{$name}',{$price},'{$img}','{$detail}',{$id_cate},0)";
    $db -> exec($strQuery);
  } catch(PDOexeption $ex){
    echo "Thêm bị lỗi: ".$ex -> getMessage();
    exit;
  }
  echo"<SCRIPT LANGUAGE='JavaScript'>alert('Thêm sản phẩm thành công!');</script>";
  echo"<meta http-equiv='refresh' content='0; index.php?thread=produc-manager'>";
?>