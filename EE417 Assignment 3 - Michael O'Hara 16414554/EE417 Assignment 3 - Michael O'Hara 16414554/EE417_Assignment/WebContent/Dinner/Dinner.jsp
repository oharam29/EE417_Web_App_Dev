<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-gb">
	<head>
		<h1> Dinner Section </h1>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../Style/style.css"/>
		<script src="../js/myScript.js"></script>

		<p class="info">By Michael O'Hara - 16414554</p>
	</head>
	<body>
		<nav class="nav">
	        <ul>
	        	<li>
	        		<a><div class="hamburger" onclick="myFunction(this)">
  						<div class="bar1"></div>
  						<div class="bar2"></div>
  						<div class="bar3"></div>
					</div></a>
				</li>
				<div class="pages" id="pages">
		          	<li><a href="../index.jsp">Home</a></li>
	  				<div class="subnav">
	    				<button class="subnavbtn">Account <i class="fa fa-caret-down"></i></button>
	    				<div class="subnav-content">
								<li><a href="../Login/Login.html">Login</a></li>
								<li><a href="../Register/Register.jsp">Register</a></li>

	    				</div>	
  					</div>
	  				<div class="subnav">
	    				<button class="subnavbtn">Recipes <i class="fa fa-caret-down"></i></button>
	    						<div class="subnav-content">
									<li><a href="../Breakfast/Breakfast.jsp">Breakfast</a></li>

									<li><a href="../Lunch/Lunch.jsp">Lunch</a></li>
		            				<li><a class = "active" href="#dinner">Dinner</a></li>
	    				</div>	
  					</div> 
  					<li class = "admin"><a  href="../Admin/AdminPanel.html">Admin</a></li> 

		            <div class = "navright">
		            	<li><input type="text" placeholder="Search.."></li>
		            </div>
	        	</div>
	        </ul>
		</nav>
		<div class="contain">
			<div class = "intro_info">
				<h2>Dinner Section</h2>
					<hr>
					<p>
						This section of the website contains the receipes and steps to make them for meals which can be classified as dinner. It will provide the ingredients needed for the meal. Following this will be the steps to prepare the meal.
					</p>
			</div>

			<br>

			<div class = "receipes">
				<div class = "one">
					<hr>
					<H2>Recipe One - Pasta with salmon & peas</H2>
					<p>This recipe comes from BBC good food and can be found at: <a class = "ref" href="https://www.bbcgoodfood.com/recipes/pasta-salmon-peas">Here</a></p>
					<button class = "hider" onclick="ShowHide()">Show or Hide</button>
					<div id = "hideme">
						<H2>Ingredients</H2>
						<ul>
						    <li>240g wholewheat fusilli</li>
						    <li>knob of butter</li>
						    <li>1 large shallot, finely chopped</li>
						    <li>140g frozen peas</li>
						    <li>2 skinless salmon fillets, cut into chunks</li>
						    <li>140g low-fat cr?me fra?che</li>
						    <li>? low-salt vegetable stock cube</li>
						    <li>small bunch of chives, snipped</li>
						</ul>
						<h2>Steps</h2>
						<ol>
							<li>Bring a pan of water to the boil and cook the fusilli according to the pack instructions.</li>
							<li>Meanwhile, heat a knob of butter in a saucepan, then add the shallot and cook for 5 mins or until softened.</li>
							<li>Add the peas, salmon, cr?me fra?che and 50ml water. Crumble in the stock cube.</li>
							<li>Cook for 3-4 mins until cooked through, stir in the chives and some black pepper.</li>
							<li>Then stir through to coat the pasta. Serve in bowls.</li>
						</ol>
						<hr>
					</div>
				</div>
				<br>
			</div>
		</div>
		<footer>
	    	<p>Copyright ? 2021  Michael O'Hara EE417 Assignment 1 Part 1</p> 
		</footer>
	</body>
</html>