<?php
	$username = addslashes($_POST['username']);
	$password = md5(addslashes($_POST['password']));
	include "mysql.php";
	$sql_query =$db -> query("SELECT * FROM users WHERE username = '{$username}'");
	$member = $sql_query -> fetch();
	//echo ($member["password"] === $password);
	if (!$member)
	{
		echo "<script language='JavaScript'> alert('Tài khoản này KHÔNG tồn tại!'); </script>";
		echo "<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
		exit;
	}
	if ($password != $member["password"])
	{
		echo "<script language='JavaScript'> alert('Mật khẩu SAI!'); </script>";
		echo "<meta http-equiv='refresh' content='0; index.php?thread=trangchu'>";
		exit;
	}

	$_SESSION['id'] = $member['id'];
	$_SESSION['username'] = $member['username'];
	$_SESSION['role'] = $member['role'];

	echo "<script language='JavaScript'> alert('Bạn đã đăng nhập thành công!'); </script>";
	echo "<meta http-equiv='refresh' content='0; index.php?thread=trang-chu'>";
?>