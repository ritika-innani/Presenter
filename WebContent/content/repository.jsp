<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Presenter | Repository</title>
	
	<link href="<%=request.getContextPath()%>/styles/repository.css" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/favicon.png">
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/scripts/repopage.js"></script>
	
</head>
<body id="repo-page">
	<%@ page import="java.sql.ResultSet" %>
	<header id="header">
		<section class="fixed-header">
			<div class="logo sbh">
				<a><h2>Presenter</h2></a>
			</div>
			<div class="search-bar-container sbh">
				<div class="search-bar">
					<div class="search-bar-left">
						<input type="text" placeholder="search..">
					</div>
					<div class="search-bar-right">
						<button class="search-button">
							<span class="fa fa-search"></span>
						</button>
					</div>
				</div>
			</div>
			
			<div class="right nav-bar sbh">
				<div class="profile-button">
					<a class="profile-anchor">
						<span class="user-name"><%= session.getAttribute("Username") %></span>
						<span class="fa fa-navicon"></span>
					</a>
					
					<div class="logout-popup popup">
						<div class="arrow-below"></div>
						<div class="arrow-above"></div>
						<div class="description">
							<div class="dp"><img src="<%=request.getContextPath()%>/images/anonymous.jpg" /></div>
							<div class="acc-info">
								<div><%= session.getAttribute("Username") %></div>
							</div>
						</div>
						<div class="log-out">
						<form action="logout" >
							<button class="log-out-button button" type="submit">Log Out</button>
						</form>
						</div>
					</div>
				</div>
			</div>
			<div class="account-settings right nav-bar sbh"><span class="fa fa-cog" onclick="$('#applyForm').show();"></span></div>
			<div class="clear"></div>
		</section>
	</header>
	
	<div id="applyForm">
	  	<span class="fa fa-close" style="color : white;position: fixed;top: 0;right: 0;font-size: 30px;background: rgba(0,0,0,0.8);padding: 10px 10px 20px 20px; border-radius: 0 0 0 40px; width: 60px; cursor : pointer;" onclick="$('#applyForm').hide();"></span>
	    <div class="innerForm">
	      <h1 class="bold text-center">Account Settings</h1>
	      <form action="update" method="post">
				<div class="row">
					<div class="twelve user-data">
						<label>Name</label><input name="name" type="text" value="<%= request.getAttribute("name")%>" required /><br />
					</div>
					<div class="twelve user-data">
						<label>Username</label><input name="uname" type="text" value="<%= session.getAttribute("Username") %>" required /><br />
					</div>
					<div class="twelve user-data">
						<label>Email</label><input name="email" type="email" value="<%= request.getAttribute("email")%>" required /><br />
					</div>
					<div class="twelve user-data">
						<label>New Password</label><input name="pass" type="password" placeholder="Leave blank if you dont want to change" /><br />
					</div>
				</div>
				<button name="button" type="submit" class="form button submit">Save</button>
		 </form>
	    </div>
   </div>
  
	<section class="page-container">
		<section class="page-content">
			<div class="side-bar">
				<div class="new-presentation">
					<a id="new-button" href="<%=request.getContextPath()%>/content/product.jsp">New</a>
				</div>
				<div class="nav-buttons">
					<div class="user-presentations-option nav-style">
						<div id="user-created" class= "nav-item active">
							<span class="material-icons">perm_media</span>
							&ensp;My Presentations
						</div>
					</div>
					<div class="shared-presentations-option nav-style">
						<div id="shared" class="nav-item">
							<span class="material-icons">people</span>
							&ensp;Shared
						</div>
					</div>
					<div class="starred-presentations-option nav-style">
						<div id="starred" class="nav-item">
							<span class="material-icons">star</span>
							&ensp;Favourites
						</div>
					</div>
					<div class="draft-presentations-option nav-style">
						<div id="draft" class="nav-item">
							<span class="material-icons">drafts</span>
							&ensp;Draft
						</div>
					</div>
					<div class="deleted-presentations-option nav-style">
						<div id="deleted" class="nav-item">
							<span class="material-icons">delete</span>
							&ensp;Trash
						</div>
					</div>
				</div>
			</div>
			<div class="seperator"></div>
			<div class="presentations-container">
				<div class="user-presentations presentations-wrapper display">
					<%
			    		if (request.getAttribute("presentationlist") != null) {
			         %>
			        	<ul class="user-deck-list">
			        
			        <%
			       		ResultSet res = (ResultSet)(request.getAttribute("presentationlist"));
			        	while(res.next())
			       		 {
    						String ref = request.getContextPath() + "/EditPresentation?id=" +  res.getString(1);
							String ref1 = request.getContextPath() + "/DeletePresentation?id=" +  res.getString(1);
							String ref2 = request.getContextPath() + "/PlayPresentation?id=" +  res.getString(1);
    				%>
						<li class="presentation-item">
							<div class="deck-thumbnail"><a class="deck-link" href="<%= ref %>"><span class="material-icons">crop_original</span></a></div>
							<h2 class="deck-title"><%= res.getString(2) %></h2>
							<% 
								if(res.getString(3) != null && res.getString(3).trim().equals("yes")){
							%>
								<span class="fa fa-star starred" id="myfav"></span>
							<%
								} else
								{
							%>
								<span class="fa fa-star-o starred" id="myfav"></span>
							<% 
								}
							%>
							<div class="deck-controls">
								<a href="<%= ref %>"><button class="button1 outline edit" title="edit"><span id="edit" class="fa fa-pencil"></span></button></a>
								<div class="delete-button">
									<button class="button1 outline delete" title="delete"><span class="fa fa-trash-o"></span></button>
									<div class="delete-popup popup">
										<div class="arrow-below"></div>
										<div class="arrow-above"></div>
										<h3>Are you sure you want to delete presentation?</h3>
										<a href="<%= ref1 %>" class="delete-yes button"><h3>Delete</h3></a>
										<a href="" class="delete-cancel button"><h3>Cancel</h3></a>
									</div>
								</div>
								<a href="<%= ref2 %>"><button class="button1 outline present" title="present"><span class="fa fa-play"></span></button></a>
								<div class="more-button">
									<button class="button1 outline more" title="more"><span class="fa fa-ellipsis-v"></span></button>
									<div class="more-popup popup">
										<div class="arrow-below"></div>
										<div class="arrow-above"></div>
										<ul class="more-options">
											<li><a><span class="fa fa-share"></span> Share</a></li>
											<li><a><span class="fa fa-facebook-square"></span> Share on Facebook</a></li>
											<li><a><span class="fa fa-download"></span> Download</a></li>
											<li><a><span class="fa fa-print"></span> Print</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						
						<%}%></ul><%}
					
			    		else{
						%>
    					<div class="no-item-display-wrapper">
    						<div class="no-item-display">
    							<span class="material-icons">perm_media</span>
    							<h3>Nothing in My Presentations</h3>
    							<p>Create a presentation and it will show up here</p>
    						</div>
    					</div>	
    					
    					<%
    					}%>
					
				</div>
			</div>
			<div class="clear"></div>
		</section>
		<div class="clear"></div>			
	</section>
</body>
</html>