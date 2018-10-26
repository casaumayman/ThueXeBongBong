<?php
include "core/mysql.php";
try {
    $result = $db->query("SELECT * FROM products")->fetchAll();
} catch (DPOexeption $ex) {
    echo "Không thể kết nối CSDL. Code: " . $ex->getMessage();
}
?>


<?php
include "admin/view/admin-menu.php";
?>

<div class="panel panel-primary">
	<div class="panel-heading"> Quản Lí Sản Phẩm</div>
	<div class="panel-body">
		<div  style="margin-bottom: 10px;">
			<button data-toggle="modal" data-target="#ModalAddProduct" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Thêm Sản Phẩm</button>
		</div>
		<table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th style="text-align: center;">STT</th>
					<th style="text-align: center;">Tên Sản Phẩm</th>
					<th style="text-align: center;">Giá Cho Thuê</th>
					<th style="text-align: center;">Thông Tin</th>
					<th style="text-align: center;">Thể Loại</th>
					<th style="text-align: center;">Chức Năng</th>
                </tr>
            </thead>
            <tbody>
				<?php
$_SESSION["numbersOfProduct"] = count($result);
$i = 1;
foreach ($result as $row) {
    ?>
						<tr>
							<td style="text-align: center;"> <?php echo $i++; ?> </td>
							<td> <?php echo $row['name']; ?> </td>
							<td> <?php echo $row['price']; ?> </td>
							<td style="text-align: center;"> <?php echo $row['detail']; ?> </td>
							<td style="text-align: center;"> <?php echo $row['id_cate']; ?> </td>
							<td style="text-align: center;">
              <button class="btn btn-warning"><span class="glyphicon glyphicon-pencil" onclick="window.location.href='?thread=edit-product&id-product=<?php echo $row['id'];  ?>'"></span> </button>
							<button class="btn btn-danger" style="margin-top: 5px"><span class="glyphicon glyphicon-trash" onclick="if( confirm('Bạn có chắc chắn muốn xoá không!'))window.location.href='?thread=delete-product&id-product=<?php echo $row['id'];  ?>'"></span> </button>
							</td>
						</tr>
				<?php
}
?>
			</tbody>
        </table>
	</div>
</div>

<!-- Modal add product -->
<div id="ModalAddProduct" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Thêm sản phẩm</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" action="?thread=add-produc" enctype="multipart/form-data" method="POST">
          <div class="form-group">
            <label class="col-md-3">Tên sản phẩm:</label>
            <div class="col-md-9">
              <input class="form-control" type="text" name="name" placeholder="Nhập tên sản phẩm" required autofocus>
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-3">Giá:</label>
            <div class="col-md-9">
              <input class="form-control" type="number" name="price" placeholder="Nhập giá thuê" required>
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-3">Mô tả sản phẩm:</label>
            <div class="col-md-9">
              <textarea class="form-control" rows="2" name="detail"></textarea>
            </div> 
          </div>
          <div class="form-group">
            <label for="radiocheck" class="col-md-3">Thể loại sản phẩm:</label>
            <div class="col-md-9" id="radiocheck">
                <div class="form-check-inline col-md-5">
                  <label class="form-check-label" for="radio1">
                    <input type="radio" class="form-check-input" id="radio1" name="id_cate" value="option1" checked>Xe khuyến mãi
                  </label>
                </div>
                <div class="form-check-inline col-md-4">
                  <label class="form-check-label" for="radio2">
                    <input type="radio" class="form-check-input" id="radio2" name="id_cate" value="option2">Xe tay ga
                 </label>
                </div>
                <div class="form-check-inline col-md-3">
                  <label class="form-check-label">
                   <input type="radio" id="radio3" name="id_cate" value="option3" class="form-check-input">Xe số
                 </label>
                </div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3">Hình ảnh</label>
            <div class="col-md-9">
              <input type="file" class="form-control-file border" id="img" name="img">
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-4"></div>
            <div class="col-md-8">
              <button class="btn btn-primary" name="submit" type="submit">Thêm sản phẩm</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- end modal -->