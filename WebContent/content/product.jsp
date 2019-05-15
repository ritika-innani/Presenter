<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Untitled Presentation</title>
	<link href="<%=request.getContextPath()%>/styles/default.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/styles/product.css" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/favicon.png">
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/scripts/presentpreview.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/scripts/product.js" type="text/javascript"></script>
</head>
<body id="presentation-page">
	<%@ page import="java.sql.ResultSet" %>
	<div id="presenter-view"></div>
	<div id="editor-view">
		<form action="SavePresentation"  method="post">
		<section id="document-header">
			<div class="docs-titlebar">
				<div class="clear"></div>
				<div class="logo"><span class="fa fa-file-image-o"></span></div>
				<%	
					ResultSet res, res1;
	    			if ( request.getAttribute("presentation")!= null) {
	        		res = (ResultSet)(request.getAttribute("presentation"));
	        		while(res.next())
	        		{ 
	        	%>
				<div class="docs-title-container">
					<input type="hidden" value="<%= res.getString(1) %>" name="pid" />
					<input class="docs-title-input" type="text" name="PresentationName" placeholder="Untitled Presentation" value="<%=res.getString(2)%>" />
						<% 
							if(res.getString(3) != null && res.getString(3).trim().equals("yes"))
							{%>
							<span class="fa fa-star starred" id="favourite"></span>
							<%}
							else
							{%>
							<span class="fa fa-star-o starred" id="favourite"></span>
							<% 
							}%>
					<input type="hidden" value="" id="is-favourite" name="favourite">
				</div>
				<%}}
	    			else
	    			{%>
				<div class="docs-title-container">
					<input class="docs-title-input" type="text" name="PresentationName" placeholder="Untitled Presentation" />
					<span class="fa fa-star-o starred" id="favourite"></span>
					<input type="hidden" value="" id="is-favourite" name="favourite">
				</div>
			<%} %>
			<!--	<div class="profile-button">
					<a class="profile-anchor">
						<span class="user-name"><%= session.getAttribute("Username") %></span>
						<span class="sort-down"></span>
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
							<a href="<%=request.getContextPath()%>/logout"><button class="log-out-button button">Log Out</button></a>
						</div>
					</div> 
				</div> -->
				<div class="clear"></div>
			</div>
			
			<div class="docs-toolbar">
				<div class="primary-toolbar">
					<div id="newSlideButton" class="add-button toolbar-item" onclick = "slideAdd();"><span class="fa fa-plus"></span></div>
					<div id="slideMenuButton" class="drop-down-button toolbar-item"><span class="fa fa-sort-down"></span></div>
					<button class="save-submit-button" type="submit"><div class="save-button toolbar-item" title="Save"><span class="fa fa-save"></span></div></button>
					<div id="printButton" class="print-slide toolbar-item"><span class="fa fa-print"></span></div>
					<div id="undoButton" class="undo toolbar-item"><span class="fa fa-undo"></span></div>
					<div id="redoButton" class="redo toolbar-item"><span class="fa fa-repeat"></span></div>
					<div class="seperator"></div>
					
					<div class="toolbar-item-combo">
						<div id="fillColorButton" class="fill-color toolbar-item color-pack no-hover"><span class="material-icons">format_color_fill</span></div>
						<div id="fillColorDropdown" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="toolbar-item-combo">
						<div id="borderColorButton" class="border-color toolbar-item color-pack no-hover"><span class="material-icons">border_color</span></div>
						<div id="boderColorDropdown" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="toolbar-item-combo">
						<div id="borderWeightButton" class="border-weight toolbar-item color-pack no-hover"><span class="material-icons">line_weight</span></div>
						<div id="boderWeightDropdown" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="toolbar-item-combo">
						<div id="borderStyleButton" class="border-style toolbar-item color-pack no-hover"><span class="material-icons">line_style</span></div>
						<div id="boderStyleDropdown" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="seperator"></div>
					
					<div class="toolbar-item-combo">
						<div class="font-family toolbar-item no-hover">
							<select id="select-font" title="Font" name="text-font">
								<option selected value="Arial">Arial</option>
								<option value="Comic Sans MS">Comic Sans MS</option>
								<option value="Monotype Corsiva">Monotype Corsiva</option>
								<option value="Verdana">Verdana</option>
							</select>
						</div>
						<div id="fontFamilyButton" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="seperator"></div>
					
					<div class="toolbar-item-combo">
						<div class="font-size toolbar-item no-hover">
							<select id="select-size" name="text-size" title="Font-size">
								<option value="20">20</option>
								<option value="24">24</option>
								<option value="30">30</option>
								<option selected value="36">36</option>
								<option value="48">48</option>
								<option value="56">56</option>
								<option value="64">64</option>
								<option value="72">72</option>
							</select>
						</div>
						<div id="sizeButton" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="seperator"></div>
					
					<div id="boldButton" class="bold-button toolbar-item color-pack"><span class="material-icons">format_bold</span></div>
					<div id="italicButton" class="italic-button toolbar-item color-pack"><span class="material-icons">format_italic</span></div>
					<div id="underlineButton" class="underline-button toolbar-item color-pack"><span class="material-icons">format_underlined</span></div>
					<div id="textColorButton" class="text-color-button toolbar-item color-pack"><span class="material-icons">format_color_text</span></div>
					<div class="seperator"></div>
					
					<input type="hidden" value="" id="text-align" name="text-align" />
					<div id="left-align" class="left-align toolbar-item"><span class="fa fa-align-left" title="Left-Align"></span></div>
					<div id="center-align" class="center-align toolbar-item"><span class="fa fa-align-center" title="Center-align"></span></div>
					<div id="right-align" class="right-align toolbar-item"><span class="fa fa-align-right" title="Right-align"></span></div>
					<div id="justify-align" class="justify-align toolbar-item"><span class="fa fa-align-justify" title="Justify-align"></span></div>
					<div class="seperator"></div>
					
					<div class="toolbar-item-combo">
						<div class="line-spacing toolbar-item no-hover">
							<span class="fa fa-arrows-v"></span>
							<span class="fa fa-align-left"></span>
							<!--  <select id="select-spacing" name="text-spacing" title="Line Spacing">
								<option selected value="1">Single</option>
								<option value="1.15">1.15</option>
								<option value="1.5">1.5</option>
								<option value="2">Double</option>
							</select> -->
						</div>
						<div id="spacingButton" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="seperator"></div>
					
					<div class="toolbar-item-combo">
						<div id="numberedList" class="ol-list toolbar-item color-pack no-hover"><span class="material-icons">format_list_numbered</span></div>
						<div id="numberedListDropdown" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="toolbar-item-combo">
						<div id="bulletedList" class="ul-list toolbar-item color-pack no-hover"><span class="material-icons">format_list_bulleted</span></div>
						<div id="bulletedListDropdown" class="drop-down-button toolbar-item no-hover"><span class="fa fa-sort-down"></span></div>
					</div>
					<div class="seperator"></div>
					
					<div class="toolbar-buttons">
						<div class="play-button toolbar-item" title="play"><span id="play" class="fa fa-play-circle">&nbsp;Present</span></div>
						<div class="view-button toolbar-item" title="View"><a href="<%= request.getContextPath() %>/ViewPresentations"><span class="fa fa-file-text">&nbsp;View</span></a></div>	
						<div class="share-button toolbar-item" title="Share"><span id="share" class="fa fa-share-square-o">&nbsp;Share</span></div>
					</div>
					
				</div>
			</div> 	
		</section>
	
		<section id="document-editor-container">
			<div class="slide-container">
				<div class="left-container relative">
					<span id="addSlide" class="material-icons" onclick = "slideAdd();" >add_circle</span>
					<div class="thumbnails">
					</div>	
				</div>
				<div class="body-seperator"></div>
				
				<div class="right-container">
				<% int index = 1;
					if(request.getAttribute("slide") != null){ 
					res1 = (ResultSet)(request.getAttribute("slide"));
					while(res1.next())
					{ 
						if(index == 1)
						{
				%>
					<div class="slide ">
						<div class="slide-cover selected" id="slide1">
							<input class="title" type="text" placeholder="Click to add title" name="sinput11" value="<%=res1.getString(2)%>" />
							<input class="subtitle" type="text" placeholder="Click to add subtitle" name="sinput12" value="<%=res1.getString(3)%>" />
							<span id="delSlide1" class="fa fa-close"></span>
						</div>
					</div>
				<% 		
						} 
						else
						{
				%>
					<div class="slide">
						<div class="slide-content" id = "slide<%= index %>">
						<input class="title" type="text" placeholder="Add Title" name = "sinput<%= index %>1" value="<%= res1.getString(2) %>" />
						<br /><span class="fa fa-circle"></span>
						<input class="text" type="text" placeholder="Add Text" name = "sinput<%= index %>2" value="<%= res1.getString(3) %>" />
						<br /><span class="fa fa-circle"></span>
						<input class="text" type="text" placeholder="Add Text" name = "sinput<%= index %>3" value="<%= res1.getString(4) %>" />
						<br /><span class="fa fa-circle"></span>
						<input class="text" type="text" placeholder="Add Text" name = "sinput<%= index %>4" value="<%= res1.getString(5) %>" />
						<br /><span class="fa fa-circle"></span>
						<input class="text" type="text" placeholder="Add Text" name = "sinput<%= index %>5" value="<%= res1.getString(6) %>" />
						<br /><span class="fa fa-circle"></span>
						<input class="text" type="text" placeholder="Add Text" name = "sinput<%= index %>6" value="<%= res1.getString(7) %>" />
						<br /><span class="fa fa-circle"></span>
						<input class="text" type="text" placeholder="Add Trxt" name = "sinput<%= index %>7" value="<%= res1.getString(8) %>" />
						<footer class="footer">
						<input class="footer-text" type="text" placeholder="Project Title" name = "sinput<%= index %>8" value="<%= res1.getString(9) %>" /></footer>
						<span id="delSlide<%= index %>" class="fa fa-close"></span>
						</div>
					</div>
					<%
						}
					index++;
	    			}
					}
				
				  else{
				%>
					<div class="slide">
						<div class="slide-cover selected" id="slide1">
							<input class="title" type="text" placeholder="Click to add title" name="sinput11" value="" />
							<input class="subtitle" type="text" placeholder="Click to add subtitle" name="sinput12" value="" />
							<span id="delSlide1" class="fa fa-close"></span>
						</div>
					</div>
					
				<% index++; } %>
				</div>
			 
				<div class="clear"></div>
			</div>
		</section>	
	<input type="hidden" value="<%= index %>" id="slide-number" name="slide-number" />
	<script src="<%=request.getContextPath()%>/scripts/slideadd.js" type="text/javascript"></script>
	</form>
	</div>
</body>
</html>