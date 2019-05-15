<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Signup | Presenter</title>
	<link href="<%=request.getContextPath()%>/styles/default.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/styles/signup.css" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" >
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/favicon.png">
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
	<script src="<%=request.getContextPath()%>/scripts/form-validation.js" type="text/javascript"></script>
</head>
<body id="signup-page">
	<header id="header">
		<section>
			<div class="logo"><a href="index.jsp"><h2>Presenter</h2></a></div>
			<div class="right nav-bar">
				<ul class="nav-list">
					<li class="nav-list-item"><a href="features.jsp" class="nav-list-anchor">Features</a></li>
					<!-- <li class="nav-list-item"><a href="pricing.jsp" class="nav-list-anchor">Pricing</a></li> -->
					<li class="nav-list-item"><a href="contact.jsp" class="nav-list-anchor">Contact Us</a></li>
					<li class="nav-list-item" ><a href="index.jsp" class="nav-list-anchor">Sign in</a></li>
					<li class="nav-list-item free-trial"><a href="" class="nav-list-anchor">Free Trial</a></li>
					<div class="clear"></div>
				</ul>
			</div>
		</section>
	</header>
	<section class="page-container">

		<section class="layer first">
			<section>
				<div class="row">
					<div class="ten column centered">
						<div class="main-signup-form">
							<form name="newsignupform" id="myform" action="NewUser" method="post" >
								<div class="row"><div class="clear"></div>
									<div class="twelve column">
										<p class="trial-banner">Start Creating Today! You'll be starting a Free Trial</p>
									</div>
								<div class="clear"></div></div>
								<div class="row"><div class="clear"></div>
									<div class="twelve column">
										<div class="form-division">
											<h3 class="heading"><span class="form-step">1</span>Your basic information</h3>
											<div class="row"><div class="clear"></div>
												<div class="form-item six column"><input type="text" placeholder="First Name" name="fname" id="fname" value="<%= request.getParameter("fname") %>" required autocomplete="off" /></div>
												<div class="form-item six column"><input type="text" placeholder="Last Name" name="lname" id="lname" value="<%= request.getParameter("lname") %>" required autocomplete="off" /></div>
											<div class="clear"></div></div>
											<div class="row"><div class="clear"></div>
												<div class="form-item twelve column">
												<input type="text" placeholder="Email Address" name="email" id="email" required value="<%= request.getParameter("email") %>" autocomplete="off" />
												</div>
											<div class="clear"></div></div>
										</div>
										<hr>
									</div>
								<div class="clear"></div></div>
								<div class="row"><div class="clear"></div>
									<div class="twelve column">
										<div class="form-division">
											<h3 class="heading"><span class="form-step">2</span>Your account credentials</h3>
											<div class="row"><div class="clear"></div>
												<div class="form-item six column"><input type="text" placeholder="Username" name="uname" id="uname" required autocomplete="off" /></div>
												<div class="form-item six column"><input type="password" placeholder="Create a Password" name="pass" id="pass" required autocomplete="off" /></div>
											<div class="clear"></div></div>
										</div>
										<hr>
									</div>
								<div class="clear"></div></div>
								<div class="form-footer">
									<button name="button" type="submit" class="form button submit">Submit</button>
									<p>We may email you regarding our services. When you click on submit button your 7-days
									trial will start and you wont be charged for one week.</p>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</section>
	<footer id="footer">
			<p>
				&copy; Copyright 2016-17 All Rights Reserved | GBP
			</p>
			<ul class="nav-link">
					<li><a href="index.jsp">About &ensp;</a></li>
					<li><a href="contact.jsp"> Contact Us &ensp;</a></li>
					<li><a href="features.jsp"> Features &ensp;</a></li>
					<!-- <li><a href="#"> Terms and conditions</a></li> -->
			</ul>
			<ul class="social">
				<li><a href="https://plus.google.com" id="google-plus"><span class="fa fa-google-plus"></span></a></li>
				<li><a href="https://twitter.com" id="twitter"><span class="fa fa-twitter"></span></a></li>
				<li><a href="https://facebook.com" id="facebook"><span class="fa fa-facebook"></span></a></li>
				<li><a href="https://youtube.com" id="youtube"><span class="fa fa-youtube-play"></span></a></li>
			</ul>
		</footer>
	</section>
</body>
</html>