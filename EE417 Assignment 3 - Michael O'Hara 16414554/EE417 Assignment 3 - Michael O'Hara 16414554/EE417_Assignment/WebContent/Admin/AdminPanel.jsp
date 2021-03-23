<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-gb">
	<head>
		<meta charset="utf-8">
		<meta name = "keywords" content="recipes, breakfast, lunch, dinner, cook, prepare, ingredients">
		<link rel="stylesheet" type="text/css" href="/EE417_Assignment/Style/style.css"/>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		<script src="/EE417_Assignment/js/myScript.js"></script>

		<title>EE417 Assignment 1</title>
	</head>

	<body>
		<h1>EE417 Assignment 1 - Home Page</h1>
		<p class="info">By Michael O'Hara - 16414554</p>


		<nav class="nav navbar navbar-default navbar-fixed-top navbar-collapse" role="navigation">
	        <ul>
	        	<li>
	        		<a>
	        			<div class="hamburger" onclick="myFunction(this)">
  							<div class="bar1"></div>
  							<div class="bar2"></div>
  							<div class="bar3"></div>
						</div>
					</a>
				</li>
				<div class="pages" id="pages">
		          	<li><a href="../index.jsp">Home</a></li>
	  				<div class="subnav">
	    				<button class="subnavbtn">Account <i class="fa fa-caret-down"></i></button>
	    				<div class="subnav-content">
  							<li id= "admin" class = "admin"><a class="active" href="#AdminPanel">Admin</a></li> 
  							<li><a  href="/EE417_Assignment/Admin/HiddenForm.html">HiddenForm</a></li> 
  							<li><a href="/EE417_Assignment/Admin/URLRewrite.html">URL Rewrite</a></li>
  							<li><a href="/EE417_Assignment/Admin/GetCookies.jsp">Cookies</a></li>
  							<li><a href="/EE417_Assignment/Admin/HTTP.jsp">HTTP</a></li>


  							
	    				</div>	
  					</div>
		            <div class = "navright">
		            	<li><input type="text" placeholder="Search.."></li>
		            </div>
	        	</div>
	        </ul>
		</nav>
		<div class = "contain">
			<p>Welcome to the Admin Panel for the website. From here you can access functions which regular users can't. You are able to reset usernames and passwords for
		 	regular users should they forget their login details. This can be done from the "Hidden Form" page in the navbar, which regular users cannot see.</p>
		</div>
	</body>
	<footer>
	    <p>Copyright © 2021  Michael O'Hara EE417 Assignment 1 Part 1</p> 
	</footer>
</html>