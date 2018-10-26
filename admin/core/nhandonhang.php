<?php
	$id_cart=addslashes($_GET['cart-id']);
	$stt="Đã Nhận Xe";
	include "core/mysql.php";
  $db->exec("UPDATE carts SET status = '{$stt}' WHERE id = {$id_cart}");
  echo"<SCRIPT LANGUAGE='JavaScript'>alert('Cập nhật thành công!');</script>";
  echo"<meta http-equiv='refresh' content='0; index.php?thread=cart-manager'>";
?>