<!DOCTYPE html>
<?php
include 'include/config.php';
?>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="free website templates, CSS templates, download HTML page, templatemo.com" />
<meta name="description" content="templatemo 004 - free CSS website template" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function () {

	$('#login_submit').click(function(){	
	$.post( "./login_test.php", { username: $('#username').val(), password: $('#password').val()},
	   function(result) {
					
			    if( result == "ok" ){
			    	
			    	location.href="./manage.php";
			    	
			     }else{	
			     
					     $('#username').css('border','solid 1px #f00');					     
					     $('#password').css('border','solid 1px #f00');
					     $('#password').val('');				     
					     $('#password').focus();
					     
			     }
			    		   	
	   });
	   return false;
	});



	$('#password').keydown(function(){
		$('#password').css('border','solid 1px #007700');
	})
	$('#username').keydown(function(){
		$('#username').css('border','solid 1px #007700');
	})
	
});
</script>
	        <title>Order Pizza Online....</title> 
	        <link rel="stylesheet" type="text/css" href="account.css">
	        <script type="text/JavaScript" src="account.js"></script>
	   
</head>
<header> CONESTOGA PIZZERIA LOGIN</header>  
<body>

<div id="templatemo_container">
  <div class="templatemo_line"></div> 
  <div id="templatemo_header">
  <!--div id="templatemo_site_title">Sport Vote Site</div>
  <div id="templatemo_site_slogan">enjoy free everything.</div-->
  </div>
  
  <div class="templatemo_line"></div>    
	<div id="form3">
                <h4>- Auther manage -</h4><hr>
                <h4><i>Enter manager info :-</i></h4>
    <div id="login_content">
		<form  method="post" name="login_form" action="#">
		<div class="login_box" >
			<div class="login_item">
				<label class="login_label">UserName </label>
				<input name="username" type="text"  value="" id="username"/>
			</div>
			<div class="login_item">
				<label class="login_label">Password </label>
				<input name="password" type="password"  value="" id="password"/>
			</div>
				<input type="submit" id="login_submit" value="Submit" style="width: 80px;"/>
			
		</div>	
		</form>  
    </div>
 
</div>
	
	
	
	
</div>

</body>
</html>