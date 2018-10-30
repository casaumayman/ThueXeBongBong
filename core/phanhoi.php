<?php
	$subject = addslashes($_POST['subject']);
	$content = addslashes($_POST['content']);
	$status = "Đã nhận thông tin";
	include "core/mysql.php";
	try{
		$db->exec("INSERT INTO feedbacks (subject, content, status) VALUES ('{$subject}', '{$content}', '{$status}')");
	} catch(DPOexeption $ex){
		echo"<SCRIPT LANGUAGE='JavaScript'>alert('Có lỗi, vui lòng thử lại sau!');</script>";
		echo"<meta http-equiv='refresh' content='0; index.php?thread=lien-he'>";
	}
	echo"<SCRIPT LANGUAGE='JavaScript'>alert('Bạn Đã gửi phản hồi thành công! Cám ơn Ý kiến của bạn');</script>";
	echo"<meta http-equiv='refresh' content='0; index.php?thread=lien-he'>";
?>