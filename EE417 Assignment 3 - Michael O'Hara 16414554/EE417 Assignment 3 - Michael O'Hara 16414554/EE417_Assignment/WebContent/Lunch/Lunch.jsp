<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-gb">
	<head>
		<h1> Lunch Section </h1>
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

		            				<li><a class = "active" href="#lunch">Lunch</a></li>
									<li><a href="../Dinner/Dinner.jsp">Dinner</a></li>
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
				<h2>Lunch Section</h2>
				<hr>
				<p>
					This section of the website contains the receipes and steps to make them for meals which can be classified as lunch. It will provide the ingredients needed for the meal. Following this will be the steps to prepare the meal.
				</p>
				</div>

				<br>
				<div class = "receipes">
					<div class = "one">
						<hr>
						<H2>Recipe One - Fresh salmon with Thai noodle salad</H2>
						<p>This recipe comes from BBC good food and can be found at: <a class = "ref" href="https://www.bbcgoodfood.com/recipes/fresh-salmon-thai-noodle-salad">Here</a></p>
						<button class="hider" onclick="ShowHide()">Show or Hide</button>
						<div id = "hideme">
							<H2>Ingredients</H2>
							<ul>
							    <li>2 skinless salmon fillets</li>
							    <li>1 large orange , the juice and zest of half, the rest peeled and chopped</li>
							    <li>125g French beans , trimmed and halved</li>
							    <li>50g mange tout , shredded</li>
							    <li>75g frozen peas</li>
							    <li>75g vermicelli rice noodles</li>
							    <li>2 tsp red curry paste</li>
							    <li>1 tsp fish sauce</li>
							    <li>3 spring onions , finely chopped
							    half a pack basil or coriander, chopped</li>
							</ul>
							<h2>Steps</h2>
							<ol>
								<li>Put a pan of water on to boil. Line a steamer with baking parchment, add the salmon fillets and scatter with a little of the orange zest.</li>
								<li>When the water is boiling, add the beans to the pan, put the salmon in the steamer on top and cook for 5 mins.</li>
								<li>Take the salmon off, and if it is cooked, set aside but add the peas and mange tout to the pan and cook for 1 min more, or if not quite cooked leave on top for the extra min.</li>
								<li>Drain the veg, but return the boiling water to the pan, add the noodles and leave to soak for 5 mins.</li>
								<br>
								<li>Put the curry paste and fish sauce in a salad bowl with the orange juice and a little of the remaining zest and the spring onions</li>
								<li>Drain the noodles when they are ready and add to the salad bowl, toss well, then add the chopped orange with the basil or coriander and the cooked vegetables.</li>
								<li>Tip in the juice from the fish, then toss well and serve in bowls with the salmon on top.</li>
							</ol>
							<hr>
						</div>
					</div>

					<br>			  
				</div>

			</div>
		<footer>
		    <p>Copyright © 2021  Michael O'Hara EE417 Assignment 1 Part 1</p> 
		</footer>

	</body>
</html>