<?php
session_start();
include('../utils/config/config.php');
mysqli_query($con,"delete from tbl_bookings where book_id='".$_GET['id']."'");
$_SESSION['success']="Hủy đặt vé thành công!";
header('location:profile.php');
?>