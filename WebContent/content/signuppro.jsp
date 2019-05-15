<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="scroll-controller">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<title>Signup | Presenter</title>
	
	<link href="<%=request.getContextPath()%>/styles/default.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/styles/signup.css" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/favicon.png">
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/scripts/default.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/scripts/signuppagetoggle.js" type="text/javascript"></script>
	
</head>
<body id="signup-page">
	<header id="header">
		<section>
			<div class="logo"><a href="index.jsp"><h2>Presenter</h2></a></div>
			<div class="right nav-bar">
				<ul class="nav-list">
					<li class="nav-list-item"><a href="features.jsp" class="nav-list-anchor">Features</a></li>
					<li class="nav-list-item"><a href="pricing.jsp" class="nav-list-anchor">Pricing</a></li>
					<li class="nav-list-item"><a href="contact.jsp" class="nav-list-anchor">Contact Us</a></li>
					<li class="nav-list-item" id="loginPanel"><a class="nav-list-anchor">Sign in</a></li>
					<li class="nav-list-item free-trial"><a href="pricing.jsp" class="nav-list-anchor">Free Trial</a></li>
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
							<form action="newsignup" method="post">
								<div class="row"><div class="clear"></div>
									<div class="twelve column">
										<p class="trial-banner">Start Creating Today! You'll be starting a Free Trial</p>
										<div class="form-division">
											<h3 class="heading"><span class="form-step">1</span>Your Billing Cycle</h3>
											<div class="form-row">
												<div id="subscribe-monthly" class="billing-option monthly selected">
													<label for="billing-period-monthly">
														<input class="input-radio" name="billing" type="radio" value="monthly" checked />Monthly<span class="price">- $10.00</span>
													</label>
												</div>
												<div id="subscribe-annualy" class="billing-option annualy">
													<label for="billing-period-annualy">
														<input class="input-radio" name="billing" type="radio" value="annualy" />Annualy<span class="price">- $100.00</span>
													</label>
												</div>
												<div class="clear"></div>
												<p>You'll be charged after the end of your 7-days Trial</p>
											</div>
										</div>
										<hr>
									</div>
								<div class="clear"></div></div>
								<div class="row"><div class="clear"></div>
									<div class="twelve column">
										<div class="form-division">
											<h3 class="heading"><span class="form-step">2</span>Your basic information</h3>
											<div class="row"><div class="clear"></div>
												<div class="form-item six column"><input type="text" placeholder="First Name" name="firstname" value="<%= request.getParameter("fname") %>" /></div>
												<div class="form-item six column"><input type="text" placeholder="Last Name" name="lastname" value="<%= request.getParameter("lname") %>" /></div>
											<div class="clear"></div></div>
											<div class="row"><div class="clear"></div>
												<div class="form-item twelve column">
													<input type="text" placeholder="Email Address" name="emailid" value="<%= request.getParameter("email") %>" />
												</div>
											<div class="clear"></div></div>
										</div>
										<hr>
									</div>
								<div class="clear"></div></div>
								<div class="row"><div class="clear"></div>
									<div class="twelve column">
										<div class="form-division">
											<h3 class="heading"><span class="form-step">3</span>Your account credentials</h3>
											<div class="row"><div class="clear"></div>
												<div class="form-item six column"><input type="text" placeholder="Username" name="uname" /></div>
												<div class="form-item six column"><input type="text" placeholder="Password" name="pass" /></div>
											<div class="clear"></div></div>
										</div>
										<hr>
									</div>
								<div class="clear"></div></div>
								<div class="form-footer">
									<button name="button" type="submit" class="form button">Submit</button>
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
	<section id="sliding-form" class="loginForm">
		<div class="slide-login-form">
			<p>Welcome Back!</p>
			<form id="new-login-form" action="" method="post">
				<div class="form-container">
					<div class="form-row">
						<div class="form-item twelve"><input type="text" placeholder="Username"></div>
						<div class="clear"></div>
					</div>
					<div class="form-row">
						<div class="form-item twelve"><input type="text" placeholder="Password"></div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="form-footer">
					<button name="button" class="form button" type="submit"><span>Log In</span></button>
				</div>
			</form>
			<div id="closeButton"><span class="fa fa-close"></span></div>
		<div class="clear"></div></div>
	</section>
</body>
</html>