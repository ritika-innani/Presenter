<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
	<link href="<%=request.getContextPath()%>/styles/default.css" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/favicon.png">
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/scripts/default.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			var param1='${errorMessage}';
			if(param1 != '')
			{
				$('#new-login-form .form-container').after('<h3 style="color:red; font-size:16px; margin:0; text-align:center;">Incorrect Username or Password</h3>');
			}
		});
</script>
</head>
<body>
	<h1 style="text-align:center; color:#ff4081;">Welcome!</h1>
	<h3 style="text-align:center; color:#384047;">Your account has been created successfully</h3>
	<h4 style="text-align:center; color:#384047;">Kindly login with your recent account credentials</h4>
	<form class="new-login-form" id="new-login-form" action="<%=request.getContextPath()%>/login" method="post" style="display: block; margin: 0 auto; max-width: 500px; padding: 15px; border: 1px solid #eee;">
		<div class="form-container">
			<div class="form-row">
				<div class="form-item twelve"><input type="text" placeholder="Username" name="uname" autocomplete="off" /></div>
				<div class="clear"></div>
			</div>
			<div class="form-row">
				<div class="form-item twelve"><input type="password" placeholder="Password" name="pass" autocomplete="off" /></div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="form-footer" style="margin: 0 auto; width: 50%;">
			<button name="button" class="form button" type="submit" style="width:100%;"><span>Log In</span></button>
		</div>
	</form>
	
</body>
</html>