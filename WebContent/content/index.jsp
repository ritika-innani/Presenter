<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="scroll-controller">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<title>Presenter-Create Presentations Online</title>
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
				$('.new-login-form').addClass('selected');
				$('#signup-click').css('text-decoration' , 'none');
				$('#login-click').css('text-decoration' , 'underline');
				$('.new-signup-form').removeClass('selected');
			}
		});
</script>
</head>
<body id="index-page">
	<header id="header">
		<section>
			<div class="logo"><a href="<%=request.getContextPath()%>/content/index.jsp"><h2>Presenter</h2></a></div>
			<div class="right nav-bar">
				<ul class="nav-list">
					<li class="nav-list-item"><a href="<%=request.getContextPath()%>/content/features.jsp" class="nav-list-anchor">Features</a></li>
					<!-- <li class="nav-list-item"><a href="<%=request.getContextPath()%>/content/pricing.jsp" class="nav-list-anchor">Pricing</a></li> -->
					<li class="nav-list-item"><a href="<%=request.getContextPath()%>/content/contact.jsp" class="nav-list-anchor">Contact Us</a></li>
					<li class="nav-list-item" id="loginPanel"><a class="nav-list-anchor">Sign in</a></li>
					<li class="nav-list-item free-trial"><a href="<%=request.getContextPath()%>/content/signupfree.jsp" class="nav-list-anchor">Free Trial</a></li>
					<div class="clear"></div>
				</ul>
			</div>
		</section>
	</header>
	<section class="page-container">
		<section class="layer first">
			<div class="row"><div class="clear"></div>
				<div class="six column left">
					<div class="first-title">
						<h1>Think Innovative, <br />Create Amazing!</h1>
						<h2>Mark your presence by delivering best presentations</h2>
					</div>
				</div>
				<div class="six column right">
					<div class="signup-form">
						<pre><p class="clickme">Get Started Today!				<a id="signup-click" style="text-decoration: underline;" > Signup </a> / <a id="login-click"> Login </a></p></pre>
						<form class="new-signup-form selected" id="new-signup-form" action="<%=request.getContextPath()%>/content/signupfree.jsp" method="post">
							<div class="form-container">
								<div class="form-row">
									<div class="form-item six column"><input type="text" placeholder="First Name" name="fname" autocomplete="off" /></div>
									<div class="form-item six column"><input type="text" placeholder="Last Name" name="lname" autocomplete="off" /></div>
									<div class="clear"></div>
								</div>
								<div class="form-row">
									<div class="form-item twelve column"><input type="text" placeholder="Email Address" name="email" autocomplete="off" /></div>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
							<div class="form-footer">
								<button name="button" class="form button" type="submit"><span>Claim your free trial</span></button>
							</div>
						</form>
						<form class="new-login-form" id="new-login-form" action="<%=request.getContextPath()%>/login" method="post">
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
							<div class="form-footer">
								<button name="button" class="form button" type="submit"><span>Log In</span></button>
							</div>
						</form>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</section>
		<section class="layer second content-section">
			<div class="row"><div class="clear"></div>
				<div class="twelve column">
					<div class="main-heading">
						<h1>How Presenter Works</h1>
						<p>Build your presentations and change the world</p>
					</div>
					<div class="twelve column">
						<ul class="procedure">
							<li class="procedure-items">
								<div class="image-container one">
									<img src="<%=request.getContextPath()%>/images/view.jpg" class="img1" />
									<img src="<%=request.getContextPath()%>/images/connect1.jpg" class="img2" />
								</div>
								<div class="description one">
									<h2>View</h2>
									<p>View your saved presentation by selecting it from the repository. We provide you 
									with an online repository where all your presentations are saved.</p>
								</div>
							</li>
							<li class="procedure-items">
								<div class="image-container two">
									<img src="<%=request.getContextPath()%>/images/play.jpg" class="img1" />
									<img src="<%=request.getContextPath()%>/images/connect2.jpg" class="img2" />
								</div>
								<div class="description two">
									<h2>Play</h2>
									<p>To play the presentation we just need the gesture of our hands.We provide you a very
									exclusive,handy and interactive way to play your presentation. Realize what your gesture can do.</p>
								</div>
							</li>
							<li class="procedure-items">
								<div class="image-container three">
									<img src="<%=request.getContextPath()%>/images/save1.jpg" class="img1" />
								</div>
								<div class="description three">
									<h2>Save and Share</h2>
									<p>We also provide you with feature to save your presentation on our repository as well
									as on your system.Along with it you can share it with other Users.</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			<div class="clear"></div></div>
		</section>
		<section class="layer third content-section">
			<div class="row"><div class="clear"></div>
				<div class="main-heading">
					<h1>Some of the Awesome Stuff You'll Learn</h1>
					<p>The fast, easy, and affordable way to build your presentations</p>
				</div>
				<div class="four column">
					<div class="item">
						<img src="<%=request.getContextPath()%>/images/tools.jpg" alt="tools" />
						<h3>Advance Tools</h3>
						<p>Using Presenter you will learn about several advance tools and use them in your presentations.
						These tools helps you make your presentations even more amazing & beautiful.</p>
					</div>
				</div>
				<div class="four column">
					<div class="item">
						<div class="image-container"><img src="<%=request.getContextPath()%>/images/present1.jpg" /></div>
						<h3>Creating Presentations</h3>
						<p>With Presenter you will learn to make awesome gesture based presentations and
						it also teaches you to deliver those presentations in an effective way.</p>
					</div>
				</div>
				<div class="four column">
					<div class="item">
						<img src="<%=request.getContextPath()%>/images/ideas.jpg" alt="ideas" />
						<h3>Innovate more ideas</h3>
						<p>Users are free to explore more and more ideas and put them onto their presentations.
						Their innovation and our modification is all that is required.</p>
					</div>
				</div>
			<div class="clear"></div></div>
		</section>
		<section class="layer fourth content-section has-bg">
			<div class="row"><div class="clear"></div>
				<div class="twelve column text-centered">
					<div class="quote">
						<img src="<%=request.getContextPath()%>/images/quotation.jpg" alt="quotation-mark" />
						<p>
						"Presenter has awesome tools that goes far beyond the<br />
						surface ,touching nearly every aspect of how to<br /> 
						create amazing and wonderful presentation."
						</p>
					</div>
					<span class="attribution">
						<div class="image-div"><img src="<%=request.getContextPath()%>/images/anonymous.jpg" alt="anonymous" /></div>
						<strong>Anonymous</strong>Designer & Developer
					</span>
				</div>
				<!--  <div class="six column video-section">
					
				</div> -->
			<div class="clear"></div></div>
		</section>
		<!--  <section class="layer fifth content-section plan-section">
			<div class="row"><div class="clear"></div>
				<!-- basic plan 
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
							<li><span class="fa fa-check-circle"></span>Share Presentations with other users</li>
						</ul>
						<div class="plan-start">
							<a href="content/signupfree.jsp" class="button full">Get Started</a>
						</div>
					</div>
				</div>
				<!-- pro plan 
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
							<a href="" class="button full">Coming Soon</a> <!-- content/signuppro.jsp 
						</div>
					</div>
				</div>
			<div class="clear"></div></div>
		</section> -->
		<footer id="footer">
			<p>
				&copy; Copyright 2016-17 All Rights Reserved | Presenter
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
			<form id="new-login-form" action="<%=request.getContextPath()%>/login" method="post">
				<div class="form-container">
					<div class="form-row">
						<div class="form-item twelve"><input type="text" autocomplete="off" placeholder="Username" name="uname" /></div>
						<div class="clear"></div>
					</div>
					<div class="form-row">
						<div class="form-item twelve"><input type="text" placeholder="Password" name="pass" /></div>
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