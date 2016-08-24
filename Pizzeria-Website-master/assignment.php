<?php
/*-------------------------------------+
|	
|	Auther: zhepai	
|	
|--------------------------------------
|	copyright@2015.11.10
+-------------------------------------+*/
require ('include/config.php');
?>
<script>
	price = document.getElementById('totalPrice');
</script>
<?php
if ($_POST){
	$name = $_POST["name"];
	$city = $_POST["city"];
	$province = $_POST["province"];
	$postal = $_POST["postal"];
	$telnum = $_POST["cell"];
	$email = $_POST["email"];
	
	$date = date("Y-m-d");
	$time = time("h-m-s");
	$query_string = "INSERT INTO tb_order (col_ordername, col_city, col_province, col_postal, col_cell, col_email , col_orderdate, col_ordertime) VALUES('$name', '$city', '$province', '$postal', '$telnum', '$email', '$date', '$time')";
	
	mysql_query($query_string) or die(mysql_error());
	header("LOCATION: index.html");
}

?>