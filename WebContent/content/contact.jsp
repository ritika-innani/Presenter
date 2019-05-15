<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="scroll-controller">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<title>Contact Us | Presenter</title>
	<link href="<%=request.getContextPath()%>/styles/default.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/styles/contact.css" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/favicon.png">
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/scripts/default.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/scripts/contactpageslide.js" type="text/javascript"></script>
</head>
<body id="contact-page">
	<header id="header">
		<section>
			<div class="logo"><a href="index.jsp"><h2>Presenter</h2></a></div>
			<div class="right nav-bar">
				<ul class="nav-list">
					<li class="nav-list-item"><a href="features.jsp" class="nav-list-anchor">Features</a></li>
				<!-- 	<li class="nav-list-item"><a href="pricing.jsp" class="nav-list-anchor">Pricing</a></li> -->
					<li class="nav-list-item"><a href="contact.jsp" class="nav-list-anchor">Contact Us</a></li>
					<li class="nav-list-item" ><a href="index.jsp" class="nav-list-anchor">Sign in</a></li>
					<li class="nav-list-item free-trial"><a href="signupfree.jsp" class="nav-list-anchor">Free Trial</a></li>
					<div class="clear"></div>
				</ul>
			</div>
		</section>
	</header>
	<section class="page-container">
		<section class="layer first content-section">
			<div class="row"><div class="clear"></div>
				<div class="main-heading">
					<h1>Contact Us</h1>
					<h3>We Would love to hear from you</h3>
					<a class="arrow">
						<span id="arrow" class="fa fa-chevron-down"></span>
					</a>
				</div>
			<div class="clear"></div></div>
		</section>
			
		<section class="layer second content-section">
			<div class="row"><div class="clear"></div>
				<div class="main-heading"><h3>For any Query</h3></div>
				<div class="contactform text-centered">
					<form action="" method="post">
						<div class="six column text-centered">
							<span class="fa fa-user"></span><input type="text" placeholder="Name"><br />
							<span class="fa fa-phone"></span><input type="text" placeholder="Contact No"><br />
							<span class="fa fa-envelope"></span><input type="email" placeholder="Email Id"><br />
							<span class="fa fa-hand-o-up"></span><input type="text" placeholder="Query"><br />
						</div>
						<div class="six column text-centered">
							<textarea placeholder="Comments..."></textarea>
						</div>
						<button class="contact-form-button button" name="contact-form-button" type="submit">Send</button>
					</form>
					<div class="clear"></div>
				</div>
				<div class="emailus text-centered">
					<h3>Lazy to fill the form?</h3>
					<h4>Email Us : present_it@gmail.com</h4>
				</div>
			<div class="clear"></div></div>
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