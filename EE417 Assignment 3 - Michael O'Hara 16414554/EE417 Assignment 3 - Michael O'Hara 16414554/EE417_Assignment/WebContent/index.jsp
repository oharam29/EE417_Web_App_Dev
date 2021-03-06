<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-gb">
	<head>
		<meta charset="utf-8">
		<meta name = "keywords" content="recipes, breakfast, lunch, dinner, cook, prepare, ingredients">
		<link rel="stylesheet" type="text/css" href="./Style/style.css"/>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		<script src="./js/myScript.js"></script>

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
		            <li><a class="active" href="#home">Home</a></li>
	  				<div class="subnav">
	    				<button class="subnavbtn">Account <i class="fa fa-caret-down"></i></button>
	    				<div class="subnav-content">
								<li><a href="./Login/Login.html">Login</a></li>
								<li><a href="./Register/Register.jsp">Register</a></li>

	    				</div>	
  					</div>
	  				<div class="subnav">
	    				<button class="subnavbtn">Recipes <i class="fa fa-caret-down"></i></button>
	    						<div class="subnav-content">
									<li><a href="./Breakfast/Breakfast.jsp">Breakfast</a></li>
									<li><a href="./Lunch/Lunch.jsp">Lunch</a></li>
									<li><a href="./Dinner/Dinner.jsp">Dinner</a></li>
	    				</div>	
  					</div>
  					<li class = "admin"><a  href="./Admin/AdminPanel.html">Admin</a></li> 
		            <div class = "navright">
		            	<li><input type="text" placeholder="Search.."></li>
		            </div>
	        	</div>
	        </ul>
		</nav>

	<div class = "contain">
		<div class="content">	
			<div class = "intro_info">
				<h2 id = "head">About Us!</h2>
				<hr>

				<p>Welcome! This is a website which will allow you to find new recipes and provide some of your own receipes to other users. You can choose to browse with an account or without, but do consider making an account as it will allow you to post your own recipes. Each recipe will provide a list of ingredients require by the dish, and a list of detailed steps to prepare the dish.</p>
				<p>The recipes come from users of the site meaning there will be something for everypne no matter what your level of culinary skills. At the end of this page there isalso a section where you can submit your own recipe.

				</p>
				<br>

			</div>
			<div class = "featured">
				<h2 class = "key-recipe"> Featured Receipe of the Week - Brownies</h2>
				<hr>
				<p>This section will display the most popular recipes for the previous week. These will be decided based on the number of interactions with the post of the recipe and the feedback it recived. This weeks featured recipeis actually a dessert, it happens to be a batch of brownies.</p>
				<br>

				<div class="ingredients">
		        	<h2>Ingredients</h2>
		        	<ul>
					     <li>100g [4oz] Dark or Milk Chocolate, broken into small pieces</li>
						 <li>175g [6oz] Butter or Margarine</li>
						 <li>300g Muscovado or Brown Sugar</li>
						 <li>3 large eggs (4 med) beaten</li>
						 <li>2 teaspoons vanilla essence</li>
						 <li>130g [5oz] Plain Flour</li>
						 <li>1 tsp Baking Powder</li>
						 <li>25g [1oz] Cocoa Power</li>
						 <li>? tsp salt</li>
			    	</ul>  
	        	</div>

	        	<div class="steps">
			        <h2>Steps</h2>
			        <ol>
			          <li>Melt the chocolate butter/margarine & muscovado sugar in a large bowl on regeneration 120C. Or if you have an induction hob melt on power level two straight into a large saucepan. Stir Occasionally</li>
			          <li>Preheat the combi steam oven to 160C on Hot air humid function. This will only take a few minutes</li>
			          <li>When the chocolate mixture has melted, stir until the mixture is smooth and lump free and allow to cool for 5 mins</li>
			          <li>Slowly add the beaten eggs and vanilla essence to chocolate mixture and beat well</li>
			          <li>Sift in the dry ingredients together & stir into the mixture. Pour mixture evenly in to prepared tin and place on level two of the combi steam oven for 35 min(check after 30 mins) until springy in the centre.</li>
			          <li>When cooked remove from the oven and allow to cool for 15 mins. Cut into small squares in the pan. Allow to cool completely before removing from the pan and serving.</li>
			          <li>VZUG Tip: Be careful not to overcook as brownies should be soft and squidgy- they cannot be tested like a cake with a skewer as the mixture will be sticky in the middle when cooked.</li>
			        </ol>
			        <br>
			    </div>
			</div>
		</div>
	</div>

	<button class="btn" onclick="Display_DOM()">Get DOM</button>
	<ul class = "dom" id = "dom"></ul>
	<footer>
	    <p>Copyright ? 2021  Michael O'Hara EE417 Assignment 1 Part 1</p> 
	</footer>
	<script>
		function AddColor() {
    		this.style.background = "#0000ff";
		}

		function RemoveColor() {
    		this.style.background = "none";
		}

		document.getElementById('head').addEventListener("mouseover",AddColor);
		document.getElementById('head').addEventListener("mouseout",RemoveColor);
	</script>
	</body>


</html>

