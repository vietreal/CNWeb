<?php
include('header.php');
?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Thông tin rạp phim
        </h1>
        <ol class="breadcrumb">
            <li><a href="index.php"><i class="fa fa-home"></i> Trang chủ</a></li>
            <li class="active">Thông tin rạp phim</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Thông tin chung</h3>
            </div>
            <div class="box-body">
                <?php
                $th=mysqli_query($con,"select * from tbl_theatre where id='".$_SESSION['theatre']."'");
                $theatre=mysqli_fetch_array($th);
                ?>
                <table class="table table-bordered table-hover">
                    <tr>
                        <td class="col-md-6">Tên rạp</td>
                        <td  class="col-md-6"><?php echo $theatre['name'];?></td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td><?php echo $theatre['address'];?></td>
                    </tr>
                    <tr>
                        <td>Khu phố</td>
                        <td><?php echo $theatre['place'];?></td>
                    </tr>
                    <tr>
                        <td>Tỉnh</td>
                        <td><?php echo $theatre['state'];?></td>
                    </tr>
                </table>
            </div>
            <!-- /.box-footer-->
        </div>
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Thông tin về phòng chiếu phim</h3>
            </div>
            <div class="box-body" id="screendtls">
                <?php
                $sr=mysqli_query($con,"select * from tbl_screens where t_id='".$_SESSION['theatre']."'");
                if(mysqli_num_rows($sr))
                {
                    ?>
                    <table class="table table-bordered table-hover">
                        <th class="col-md-1">STT</th>
                        <th class="col-md-3">Tên phòng chiếu</th>
                        <th class="col-md-1">Sức chứa</th>
                        <th class="col-md-1">Diện tích</th>
                        <th class="col-md-3">Khung giờ chiếu phim</th>
                        <?php
                        $sl=1;
                        while($screen=mysqli_fetch_array($sr))
                        {
                            ?>
                            <tr>
                                <td><?php echo $sl;?></td>
                                <td><?php echo $screen['screen_name'];?></td>
                                <td><?php echo $screen['seats'];?></td>
                                <td><?php echo $screen['charge'];?></td>
                                <?php
                                $st=mysqli_query($con,"select * from tbl_show_time where screen_id='".$screen['screen_id']."'");
                                ?>
                                <td><?php if(mysqli_num_rows($st)) { while($stm=mysqli_fetch_array($st))
                                    { echo date('h:i a',strtotime($stm['start_time']))." ,";}}
                                    else
                                    {echo "No Show Time Added";}
                                    ?></td>
                            </tr>
                            <?php
                            $sl++;
                        }
                        ?>
                    </table>
                <?php
                }
                else
                {
                    ?>
                    <button data-toggle="modal" data-target="#view-modal" id="getUser" class="btn btn-sm btn-info"><i class="fa fa-plus"></i> Add Screen</button>

                    <?php
                }
                ?>
            </div>
            <!-- /.box-footer-->

