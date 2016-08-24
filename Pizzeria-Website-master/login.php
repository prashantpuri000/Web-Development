<?php
echo '
		<link rel="stylesheet" type="text/css" href="account.css">
		<link rel="stylesheet" type="text/css" href="include/login.js">
		
	    <script type="text/JavaScript" src="account.js"></script>
		
		<head> 
	        <title>Order Pizza Online....</title> 
	        <link rel="stylesheet" type="text/css" href="account.css">
	        <script type="text/JavaScript" src="account.js"></script>
	    </head>

	    <header> CONESTOGA PIZZERIA Login</header>  
	    
	    <body> ';
	    

echo '
	<div align = center>
	<form id="login" name="login" onsubmit="return validateLoginForm()" action="login_test.php" method="POST">';
	$password = md5('admin');
echo '
            <div id="form3">
                <h4>- Auther manage -</h4><hr>
                <h4><i>Enter manager info :-</i></h4>
                UserName:<input type="text" id="get" name="username" placeholder=""><br>
                Password:<input type="password" id="get" name="password" placeholder=""><br>
      			<input type=\'submit\' id=\'login\' value=\'Login\' onclick="#" />
      			<input type=\'submit\' id=\'registry\' value=\'Registry\' onclick="#" />
      		</div>
      		
      </form>
      </div>
      </body>
      ';
?>