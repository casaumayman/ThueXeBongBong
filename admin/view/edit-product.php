
<?php
	$id_product=addslashes($_GET['id-product']);
	include "core/mysql.php";
  $result = $db->query("SELECT * FROM products WHERE id={$id_product}");
  //var_dump("SELECT * FROM users WHERE id={$id_user}");
?>



<?php
	include("admin/view/admin-menu.php");
?>
<div class="panel panel-primary">
	<div class="panel-heading"> Chỉnh Sửa Thông Tin Sản Phẩm</div>
	<div class="panel-body">
		<?php
			while ($row=$result->fetch()) 
			{
		?>
		<form class="form-horizontal" action="?thread=do-edit-product&id-product=<?php echo $id_product;?>" method="POST" onsubmit=" return CheckData(this)">  
                <div class="modal-body">
                    <form class="form-horizontal" action="?thread=add-produc" method="POST">
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
                          <input type="file" class="form-control-file border" name="img">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-md-4"></div>
                        <div class="col-md-8">
                          <button class="btn btn-primary" type="submit">Chỉnh Sửa Thông Tin sản phẩm</button>
                        </div>
                      </div>
                    </form>
                  </div>
              
<!-- end modal -->
        </form>
     <?php
     	}
     	?>   
	</div>
</div>

<script type="text/javascript">
  function CheckData(form)
  {
    
    
    return true;
  }
</script>