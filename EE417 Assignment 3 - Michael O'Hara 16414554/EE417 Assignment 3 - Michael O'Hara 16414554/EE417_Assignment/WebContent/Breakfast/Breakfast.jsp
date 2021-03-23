<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-gb">
	<head>
		<h1>Breakfast Section</h1>
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
		            				<li><a class = "active" href="#breakfast">Breakfast</a></li>
									<li><a href="../Lunch/lunch.jsp">Lunch</a></li>
									<li><a href="../Dinner/dinner.jsp">Dinner</a></li>
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
				<h2>Breakfast Section</h2>
				<hr>
				<p>This section of the website contains the receipes and steps to make them for meals which can be classified as breakfast. It will provide the ingredients needed for the meal. Following this will be the steps to prepare the meal.</p>
			</div>

			<br>

			<div class = "receipes">
				<div class = "one">
					<hr>
					<H2>Recipe One - Chocolate Porridge</H2>
					<p>This recipe comes from BBC good food and can be found at: <a class = "ref" href="https://www.bbcgoodfood.com/recipes/chocolate-porridge">Here</a></p>
					<button class="hider" onclick="ShowHide()">Show or Hide</button>
					<div id = "hideme">
						<H2>Ingredients</H2>
						<ul>
							<li>125g porridge oats</li>
							<li>4 dates</li>
							<li>500/600ml milk</li>
							<li>1 tbsp cacao or good quality cocoa powder</li>
							<li>yogurt and maple syrup, to serve (optional)</li>
						</ul>
						<h2>Steps</h2>
						<ol>
							<li>Blend half the oats and the dates in a food processor until you have a thick paste, adding a splash of milk to help the blades go round if necessary</li>
							<li>Scrape the mixture into a saucepan and add the rest of the oats, 500ml milk, the cacao and a pinch of salt</li>
							<li>Stir well and set over a low-medium heat.</li>
							<li>Stir the porridge every now and then for the next 5-10 mins, until its thick and creamy, add a splash more milk if you prefer a looser consistency.</li>
							<li>Serve with a dollop of yogurt and a drizzle of maple syrup, if you like.</li>
						</ol>
						<hr>
					</div>
				</div>

				<br>

				<div class = "two">
					<hr>
					<H2>Recipe Two - Tropical Breakfast Bars</H2>
					<p>This recipe comes from BBC good food and can be found at: <a class = "ref" href="https://www.bbcgoodfood.com/recipes/tropical-breakfast-bars">Here</a></p>
					<button class = "hider" onclick="ShowHide1()">Show or Hide</button>
					<div id = "hideme1">
						<H2>Ingredients</H2>
						<ul>
							<li>3 tbsp vegetable oil , plus extra for the tin</li>
							<li>2 large, very ripe bananas</li>
							<li>1 large egg , beaten</li>
							<li>70g light brown soft sugar</li>
							<li>250g nutty muesli</li>
							<li>100g tropical dried fruit mix</li>

						</ul>
						<h2>Steps</h2>
						<ol>
							<li>Heat the oven to 180C/160C fan/gas 4. Lightly oil and line a 20cm deep square tin with baking parchment.</li>
							<li>Mash the bananas in a bowl until smooth, then stir through the oil, egg and sugar.</li>
							<li>Fold through the muesli, most of the tropical mix and a pinch of salt. Spoon the mixture into the tin and sprinkle with the remaining tropical mix. </li>
							<li>Bake for 35-40 mins, leave to cool in the tin, then turn out on to a board and slice into 10 bars. Will keep in an airtight container for four days.</li>
						</ol>
						<hr>
					</div>
				</div>

				  
			</div>
		</div>
	</body>
	<footer>
	    <p>Copyright © 2021  Michael O'Hara EE417 Assignment 1 Part 1</p> 
	</footer>
</html>