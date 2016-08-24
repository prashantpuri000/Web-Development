<?php
include 'include/config.php';

	$query = "select * from tb_order";
	$result = mysql_query($query);
?>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="free website templates, CSS templates, download HTML page, templatemo.com" />
<meta name="description" content="templatemo 004 - free CSS website template" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="account.css">
<script src="js/jquery.js"></script>
<script type="text/javascript">
	
</script>
</head>
<header>
	PIZZA ORDER EMPLOYEE
</header>
<body bgcolor="#a5bca3">
	
	<table border="1" align="center">
		<tr bgcolor="#6fb748">
			
			<td width="100" align="center">Customer</td>
			<td width="150" align="center">City</td>
			<td width="150" align="center">Province</td>
			<td width="80" align="center">Postal</td>
			<td width="100" align="center">TelNum</td>
			<td width="150" align="center">Email</td>
			<td width="100" align="center">OrderDate</td>
			<td width="50" align="center">Result</td>
			<td width="100" align="center">TreatMan</td>
			<td width="100" align="center">TreatDate</td>
		</tr>
		<?php
			while ($row = mysql_fetch_array($result))
			{				
		?>	
			
		<tr bgcolor="#bac9c9">
			
			<td width="100"><?php echo $row['col_ordername']?></td>
			<td width="150"><?php echo $row['col_city']?></td>
			<td width="150"><?php echo $row['col_province']?></td>
			<td width="80" ><?php echo $row['col_postal']?></td>
			<td width="100"><?php echo $row['col_cell']?></td>
			<td width="150"><?php echo $row['col_email']?></td>
			<td width="100"><?php echo $row['col_orderdate']?></td>
			<td width="50" ><?php echo $row['col_result']?></td>
			<td width="100"><?php echo $row['col_treatman']?></td>
			<td width="100"><?php echo $row['col_treatdate']?></td>
		</tr>
		
		<?php
		
			}
			mysql_free_result($result);

		?>
	
	</table>
	
		<!--form name="manage_form" id="manage_form" action="manage_test.php" method="post">	
			<div id="search">
				customer: <input type="text" name="username" id="username" align="middle"/>
				treatman: <input type="text" name="treatman" id="treatman" align="middle"/>
				<input type="submit" name="taxi" value="Taxi"/>
			</div>
		</form-->
	
</body>

</html>
