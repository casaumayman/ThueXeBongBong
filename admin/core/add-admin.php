<?php
  $username = addslashes($_POST['username']);
  $password = md5(addslashes($_POST['password']));
  $email = addslashes($_POST['email']);
  $phone = addslashes($_POST['phone']);
  $cmnd = addslashes($_POST['cmnd']);
  $gplx = addslashes($_POST['gplx']);
  $role = 1;

  include "core/mysql.php";
	//check if username exist
	if ($db -> query("SELECT username FROM users WHERE username = '{$username}'") -> fetchColumn())
	{
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Tài khoản đã được dùng!');</script>";
	 	echo"<meta http-equiv='refresh' content='0; index.php?thread=admin-manager'>";
	 	exit;
	}
  //insert user into database
  //var_dump("INSERT INTO users (id, username, password, email, phone, role, cmnd, gplx) VALUES (NULL, '{$username}', '{$password}', '{$email}', '{$phone}', {$role}, '{$cmnd}', '{$gplx}')");
  try{
		$db -> query("INSERT INTO users (id, username, password, email, phone, role, cmnd, gplx) VALUES (NULL, '{$username}', '{$password}', '{$email}', '{$phone}', {$role}, '{$cmnd}', '{$gplx}')");
	} catch(PDOException $e) {
		//echo "error: ".$e -> getMessage();
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình đăng kí, vui lòng thử lại sau!');</script>";
	  echo"<meta http-equiv='refresh' content='0; index.php?thread=admin-manager'>";
	}
	echo"<SCRIPT LANGUAGE='JavaScript'>alert('Thêm admin thành công!');</script>";
	echo"<meta http-equiv='refresh' content='0; index.php?thread=admin-manager'>";
?>

