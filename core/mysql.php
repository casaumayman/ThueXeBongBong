<?php
	$db_host 	= "localhost";
	$db_name	= 'thuexe';
	$db_username= 'root';
	$db_password= '';
	try{
		$db = new PDO("mysql:host={$db_host};dbname={$db_name};charset=UTF8","{$db_username}","{$db_password}");
		$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	} catch(PDOException $ex) {
		echo "Lỗi kết nối cơ sở dữ liệu: ".$ex->getMessage();
	}
?>