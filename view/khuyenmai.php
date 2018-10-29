<?php
	$conn = new mysqli($db_host, $db_username, $db_password, $db_name);
	mysqli_set_charset($conn, 'UTF8');
    if ($conn->connect_error) 
    { 
        die("Không thể kết nối CSDL. Code: " . $conn->connect_error); 
    }
    $result = $conn->query("SELECT * FROM products WHERE id_cate = 1");
?>


<div class="panel panel-info" style="margin-top: 15px;">
	<div class="panel-heading"><a href="?thread=khuyen-mai" style="font-size: 25px; color: #ff00cc; "> KHUYẾN MÃI - <img height='20px' width='109px' src="images/datxe.gif"/> 0989.285.600 - Ms.VY </a>
	</div>
	<div class="panel-body">
		<?php
			if ($result->num_rows > 0) 
            {
               	while ($row = $result->fetch_assoc()) 
                {
        ?>
                	<div class="col-md-4" style="padding-left: 2px; padding-right: 2px;">
						<div style="text-align: center; margin-top: 5px;">
							<img src="images/sanpham/<?php echo $row['img']; ?>" width="100%">
						</div>	
						<div style="margin-top: 5px; text-align: center; font-weight: bold; color: green; font-size: 17px;">
							<p><a href="?thread=chi-tiet-xe&id-xe=<?php echo $row['id']; ?>"><?php echo $row['name'];?> </a></p>
						</div>
						<div style="text-align: center;">
							<p>
								<b style="color: red;">Giá: <?php echo $row['price']; ?> VNĐ/ ngày</b> 
								<span> | </span> 
								<?php
									if (isset($_SESSION["id"])) {
								?>
								<button class="btn btn-info" onclick="window.location.href='?thread=them-vao-gio-hang&id-xe=<?php echo $row['id']?> '">Thuê Ngay</button>
								<?php
									} else {
								?>
								<button class="btn btn-danger" data-toggle="modal" data-target="#ModalLogin1">Thuê ngay</button>
								<?php } ?>
							</p>
						</div>
					</div>
		<?php
                }
            }
		?>
	</div>
</div>
<!-- Modal login-->
<div id="ModalLogin1" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Đăng nhập hệ thống</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" action="?thread=dang-nhap" method="POST">
          <div class="form-group">
            <label class="col-md-3">Tên đăng nhập:</label>
            <div class="col-md-9">
              <input class="form-control" type="text" name="username" placeholder="Nhập tên đăng nhập" required autofocus>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3">Mật khẩu:</label>
            <div class="col-md-9">
              <input class="form-control" type="password" name="password" placeholder="Nhập mật khẩu" required>
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-offset-3 col-md-9">
              <button class="btn btn-success" type="submit">Đăng nhập</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>