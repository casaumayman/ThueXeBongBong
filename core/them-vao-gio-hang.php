<?php
	include "core/mysql.php";
	if (isset($_SESSION["id"])) $id_nguoidung = $_SESSION['id'];
	$ngaymua = date("Y-m-d");
	$id_sanpham = addslashes($_GET['id-xe']);
	if (isset($_POST["sl"])) $sl = addslashes($_POST['sl']);
	else $sl = 1;
	$trangthai = "Ðã nhận đơn hàng";
	if (!isset($_SESSION["user"])) {
		echo "Bạn cần đăng nhập trước khi đặt xe!";
		exit;
	}
	if($sl==0) $sl=1;

	// kiem tra xem ma hang da dat mua chua?
	if ($db->query("SELECT * FROM carts WHERE id_products = {$id_sanpham}")->fetch())
	{
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Sản phẩm này đã được đặt!'); </script>";
		echo"<SCRIPT LANGUAGE='JavaScript'> history.go(-1); </script>";
	}
	else
	{
		try{
			$db->exec("INSERT INTO carts (id, id_users, days, id_products, sl, status) VALUES (NULL, {$id_nguoidung}, '{$ngaymua}', {$id_sanpham}, {$sl}, '{$trangthai}')");
		} catch(PDOexeption $ex){
			echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình đặt thuê, vui lòng thử lại sau!');</script>";
		 	echo"<SCRIPT LANGUAGE='JavaScript'> history.go(-1); </script>";
		}
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Thêm vào giỏ hàng thành công!'); </script>";
		echo"<SCRIPT LANGUAGE='JavaScript'> history.go(-1); </script>";
	}
?>