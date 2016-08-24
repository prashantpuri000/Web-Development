<?php
include 'include/config.php';

$kind = $_POST['kind'];

$username = $_POST['username'];
$treatman = $_POST['treatman'];
$treatdate = date("Y-m-d");
$result = 'sent';
switch($kind){
	case 'taxi':
			$query = "UPDATE pizza.tb_order SET pizza.tb_order.col_result = '$result', pizza.tb_order.col_treatman = '$treatman'
			, pizza.tb_order.col_treatdate = '$treatdate'
			WHERE pizza.tb_order.col_ordername = '$username';";
		break;
	case 'drop':
			$query = "DELETE 
					FROM
					  pizza.tb_order 
					WHERE pizza.tb_order.col_ordername = '$username' ;";
			
		break;
	default:
		break;
}


$result = mysql_query($query)or die(mysql_error());

echo '
	<script>
		history.go(-1);
	</script>';
 	
?>
