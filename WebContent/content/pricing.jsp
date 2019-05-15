<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="scroll-controller">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<title>Pricing | Presenter</title>
	<link href="<%=request.getContextPath()%>/styles/default.css" rel="stylesheet" type="text/css">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/favicon.png">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/scripts/default.js" type="text/javascript"></script>
	
</head>
<body id="pricing-page">
	<header id="header">
		<section>
			<div class="logo"><a href="index.jsp"><h2>Presenter</h2></a></div>
			<div class="right nav-bar">
				<ul class="nav-list">
					<li class="nav-list-item"><a href="features.jsp" class="nav-list-anchor">Features</a></li>
					<li class="nav-list-item"><a href="pricing.jsp" class="nav-list-anchor">Pricing</a></li>
					<li class="nav-list-item"><a href="contact.jsp" class="nav-list-anchor">Contact Us</a></li>
					<li class="nav-list-item" id="loginPanel"><a class="nav-list-anchor">Sign in</a></li>
					<li class="nav-list-item free-trial"><a href="signupfree.jsp" class="nav-list-anchor">Free Trial</a></li>
					<div class="clear"></div>
				</ul>
			</div>
		</section>
	</header>
	<section class="page-container">
		<section class="content-section has-bg">
			<div class="row"><div class="clear"></div>
				<div class="main-heading">
					<h1>Pick Your Plan</h1>
					<h4>Choose the plan that fits best for your needs. Your first 7 days are free.</h4>
				</div>
			<div class="clear"></div></div>
		</section>
		<section class="content-section plan-section">
				<div class="row"><div class="clear"></div>
					<!-- basic plan -->
					<div class="six column">
						<div class="plan-panel plan-basic">
							<div class="plan-panel-header">
								<div class="clear"></div>
								<h3>Basic Plan</h3>
								<span>Free</span>
								<div class="clear"></div>
							</div>
							<ul class="plan-panel-features">
								<li><span class="fa fa-check-circle"></span>Normal Tools</li>
								<li><span class="fa fa-check-circle"></span>Save Presentation</li>
								<li><span class="fa fa-check-circle"></span>Play Presentation</li>
								<li><span class="fa fa-check-circle"></span>View & maintain repository</li>
							</ul>
							<div class="plan-start">
								<a href="signupfree.jsp" class="button full">Start Free Trial</a>
							</div>
						</div>
					</div>
					<!-- pro plan -->
					<div class="six column">
						<div class="plan-panel plan-pro">
							<div class="plan-panel-header">
								<div class="clear"></div>
								<h3>Pro Plan</h3>
								<span>$10<small>/mo</small></span>
								<div class="clear"></div>
							</div>
							<ul class="plan-panel-features">
								<li><span class="fa fa-check-circle"></span> Additional tools</li>
								<li><span class="fa fa-check-circle"></span>Save & play Presentation</li>
								<li><span class="fa fa-check-circle"></span>Use of Gestures</li>
								<li><span class="fa fa-check-circle"></span>Download PDF & Video</li>
								<li><span class="fa fa-check-circle"></span>Share Presentations with other users</li>
								<li><span class="fa fa-check-circle"></span>Share Presentations on other platforms</li>
							</ul>
							<div class="plan-start">
								<a class="button full">Coming Soon!</a> <!-- href="signuppro.jsp" -->
							</div>
						</div>
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
	<section id="sliding-form" class="loginForm">
		<div class="slide-login-form">
			<p>Welcome Back!</p>
			<form id="new-login-form" action="/login" method="post">
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