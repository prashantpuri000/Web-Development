<?php
session_start();
include 'include/config.php';

$username = $_POST['username'];
$password = $_POST['password'];
$query = "select * from tb_account where tb_account.col_username='".$username."' AND tb_account.col_password='".md5($password)."'";
$result = mysql_query($query);

$num = mysql_num_rows($result);
if ($num == 1){
	$row = mysql_fetch_array($result);
 	$_SESSION['user'] = $row['col_username']; 	

 	//echo "ok";
 	header("LOCATION: manage.php");
}else{
	echo '<script>alert("fjska")</script>';
	 //echo "no" ;
	 header("LOCATION: login.php");
}
?>