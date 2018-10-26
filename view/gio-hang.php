<?php
    $id_users = $_SESSION['id'];
    include "core/mysql.php";
    $result = $db->query("SELECT * FROM `carts` WHERE id_users={$id_users}");
    $tongtien=0;
?>

<div class="row" style="margin-top: 10px;">
    <div class="col-md-12">
        <div class="panel panel-success">
            <div class="panel-heading">GIỎ HÀNG CỦA: <?php echo $_SESSION['username']; ?></div>
            <div class="panel-body">
                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                        <tr>
                            <th style="text-align: center;">STT</th>
                            <th style="text-align: center;">Tên sản phẩm</th>
                            <th style="text-align: center;">Ngày thuê</th>
                            <th style="text-align: center;">Số ngày thuê</th>
                            <th style="text-align: center;">Đơn giá</th>
                            <th style="text-align: center;">Thành tiền</th>
                            <th style="text-align: center;">Chức năng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $i=1;
                            if ($result) 
                            {
                                while($row = $result->fetch()) 
                                {
                                    $sl = $row["sl"];
                                    $id_products = $row['id_products'];
                                    $result1 = $db->query("SELECT * FROM `products` WHERE id={$id_products}");
                                    if ($result1) 
                                    {
                                        while($row1 = $result1->fetch()) 
                                        {
                                            $sl = 
                                            $tongtien+=$row1['price'] * $sl;
                        ?>
                                            <tr class="odd gradeX">
                                                <td style="text-align: center;"><?php echo $i++; ?></td>
                                                <td><?php echo $row1['name']; ?></td>
                                                <td style="text-align: center;"><?php echo $row['days']; ?></td>
                                                <td style="text-align: center;"><?php echo $row['sl']; ?> ngày</td>
                                                <td><?php echo number_format($row1['price']); ?> VNĐ</td>
                                                <td class="center"><?php echo number_format($row['sl'] * $row1['price']); ?> VNĐ</td>
                                                <td style="text-align: center;">
                                                    <?php
                                                        if ($row['sl'] > 1)
                                                        {
                                                    ?>
                                                            <button type="button" class="btn btn-warning" onclick="if (confirm('Bạn có chắc chắn xoá mục này không?')) window.location.href='?thread=delete-cart&id_carts=<?php echo $row['id']; ?>'">Xoá</button>
                                                        
            
                                                    <?php
                                                        }
                                                        else
                                                        {
                                                    ?>
                                                            <button type="button" class="btn btn-warning" onclick="if (confirm('Bạn có chắc chắn xoá mục này không?')) window.location.href='?thread=delete-cart&id_carts=<?php echo $row['id']; ?>'">Xoá</button>
                                                    <?php

                                                        }
                                                    ?>
                                                    
                                                </td>
                                            </tr>
                        <?php
                                        }
                                    }
                                }
                            }
                        ?>
                    </tbody>
                </table>
                <div class="pull-right" style="font-weight: bold; color: red; font-size: 15px; margin-top: 20px;">
                    Tổng cộng: <?php echo number_format($tongtien); ?> VNĐ
                </div>
                <div style="clear: both; height: 10px;"></div>
               
                
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function checkout(){
        alert("Bạn đã hoàn tất đơn hàng. Nhân viên của chúng tôi sẽ liên hệ lại với bạn để xác nhận. Xin cảm ơn!");
    }
</script>