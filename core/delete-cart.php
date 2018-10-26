<?php
	$cart_id = addslashes($_GET['id_carts']);
	include "core/mysql.php";
	try{
		$db->exec("DELETE FROM `carts` WHERE id = {$cart_id}");
	} catch (DPOexeption $ex) {
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình xóa đơn hàng, vui lòng thử lại sau!');</script>";
	 	echo"<meta http-equiv='refresh' content='0; index.php?thread=gio-hang'>";
	}
	echo"<SCRIPT LANGUAGE='JavaScript'>alert('Xoa lua chon thanh cong!');</script>";
	echo"<meta http-equiv='refresh' content='0; index.php?thread=gio-hang'>";
?>