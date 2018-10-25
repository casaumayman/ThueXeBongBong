<?php
	$username = addslashes($_POST['username']);
	$password = md5(addslashes($_POST['password']));
	$email = addslashes($_POST['email']);
	$phone = addslashes($_POST['phone']);
	$cmnd = addslashes($_POST['cmnd']);
	$gplx = addslashes($_POST['gplx']);
	$role = 0;
	include "mysql.php";
	//check if username exist
	if ($db -> query("SELECT username FROM users WHERE username = '{$username}'") -> fetchColumn())
	{
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Tài khoản đã được dùng!');</script>";
	 	echo"<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
	 	exit;
	}
	if ($db -> query("SELECT email FROM users WHERE email = '{$email}'") -> fetchColumn())
	{
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Mỗi email chỉ được sử dụng trong một tài khoản!');</script>";
	 	echo"<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
	 	exit;
	}
	if ($db -> query("SELECT phone FROM users WHERE phone = '{$phone}'") -> fetchColumn())
	{
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Mỗi số điện thoại chỉ được sử dụng trong một tài khoản!');</script>";
	 	echo"<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
	 	exit;
	}if ($db -> query("SELECT cmnd FROM users WHERE cmnd = '{$cmnd}'") -> fetchColumn())
	{
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Mỗi CMND chỉ được sử dụng trong một tài khoản!');</script>";
	 	echo"<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
	 	exit;
	}if ($db -> query("SELECT gplx FROM users WHERE gplx = '{$gplx}'") -> fetchColumn())
	{
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Mỗi email chỉ được sử dụng trong một tài khoản!');</script>";
	 	echo"<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
	 	exit;
	}
	//insert user into database
	//var_dump("INSERT INTO users (id, username, password, email, phone, role, cmnd, gplx) VALUES (NULL, '{$username}', '{$password}', '{$email}', '{$phone}', {$role}, '{$cmnd}', '{$gplx}')");
	try{
		$a=$db -> query("INSERT INTO users (id, username, password, email, phone, role, cmnd, gplx) VALUES (NULL, '{$username}', '{$password}', '{$email}', '{$phone}', {$role}, '{$cmnd}', '{$gplx}')");
	} catch(PDOException $e) {
		//echo "error: ".$e -> getMessage();
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình đăng kí, vui lòng thử lại sau!');</script>";
	  	echo"<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
	}
	// if ($a)
	// {
	echo"<SCRIPT LANGUAGE='JavaScript'>alert('Đăng ký thành công!');</script>";
	echo"<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
	// }
	// else
	// {
	// 	echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi trong quá trình đăng kí, vui lòng thử lại sau!');</script>";
	//  	echo"<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
	// }
?>