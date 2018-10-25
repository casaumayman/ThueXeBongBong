<?php
	include "core/mysql.php";
    $result = $db->query("SELECT * FROM products WHERE id_cate = 1 ORDER by id desc LIMIT 0,3");
    $result1 = $db->query("SELECT * FROM products WHERE id_cate = 2 ORDER by id desc LIMIT 0,3");
    $result2 = $db->query("SELECT * FROM products WHERE id_cate = 3 ORDER by id desc LIMIT 0,3");

?>

<?php
	include("view/slider.php");
?>
<div class="panel panel-info" style="margin-top: 15px;">
	<div class="panel-heading"><p style="font-size: 25px; color: #ff00cc; "><a href="?thread=khuyen-mai" > KHUYẾN MÃI </a>- <img height='20px' width='109px' src="images/datxe.gif"/> 01654036388 - Ms: Hoa</p>
	</div>
	<div class="panel-body">
		<?php
			if ($result) 
            {
               	while ($row = $result->fetch()) 
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
							<p><b style="color: red;">Giá: <?php echo $row['price']; ?> VNĐ/ ngày</b> <span> | </span> <button class="btn btn-info" onclick="window.location.href='?thread=them-vao-gio-hang&id-xe=<?php echo $row['id']?> '">Thuê Ngay</button></p>
						</div>
					</div>
		<?php
                }
            }
		?>
	</div>
</div>
<div class="panel panel-info" style="margin-top: 15px;">
	<div class="panel-heading">
		<p style="font-size: 25px; color: #ff00cc"><a href="?thread=tay-ga"> XE TAY GA</a> - <img height='20px' width='109px' src="images/datxe.gif"/> 01654036388 - Ms: Hoa</p>
	</div>

	<div class="panel-body">
		<?php
			if ($result1) 
            {
               	while ($row1 = $result1->fetch()) 
                {
        ?>
                	<div class="col-md-4" style="padding-left: 2px; padding-right: 2px;">
						<div style="text-align: center; margin-top: 5px;">
							<img src="images/sanpham/<?php echo $row1['img']; ?>" width="100%">
						</div>	
						<div style="margin-top: 5px; text-align: center; font-weight: bold; color: green; font-size: 17px;">
							<p><a href="?thread=chi-tiet-xe&id-xe=<?php echo $row1['id']; ?>"><?php echo $row1['name'];?> </a></p>
						</div>
						<div style="text-align: center;">
							<p><b style="color: red;">Giá: <?php echo $row1['price']; ?> VNĐ/ ngày</b> <span> | </span> <button class="btn btn-info" onclick="window.location.href='?thread=them-vao-gio-hang&id-xe=<?php echo $row1['id']?> '">Thuê Ngay</button></p>
						</div>
					</div>
		<?php
                }
            }
		?>
	</div>
</div>

<div class="panel panel-info" style="margin-top: 15px;">
	<div class="panel-heading"><p style="font-size: 25px; color: #ff00cc"><a href="?thread=xe-so">XE SỐ</a>  - <img height='20px' width='109px' src="images/datxe.gif"/> 01654036388 - Ms: Hoa</p>
	</div>
	<div class="panel-body">
		<?php
			if ($result2) 
            {
               	while ($row2 = $result2->fetch()) 
                {
        ?>
                	<div class="col-md-4" style="padding-left: 2px; padding-right: 2px;">
						<div style="text-align: center; margin-top: 5px;">
							<img src="images/sanpham/<?php echo $row2['img']; ?>" width="100%">
						</div>	
						<div style="margin-top: 5px; text-align: center; font-weight: bold; color: green; font-size: 17px;">
							<p><a href="?thread=chi-tiet-xe&id-xe=<?php echo $row2['id']; ?>"><?php echo $row2['name'];?> </a></p>
						</div>
						<div style="text-align: center;">
							<p><b style="color: red;">Giá: <?php echo $row2['price']; ?> VNĐ/ ngày</b> <span> | </span> <button class="btn btn-info" onclick="window.location.href='?thread=them-vao-gio-hang&id-xe=<?php echo $row2['id']?> '">Thuê Ngay</button></p>
						</div>
					</div>
		<?php
                }
            }
		?>
	</div>
</div>


