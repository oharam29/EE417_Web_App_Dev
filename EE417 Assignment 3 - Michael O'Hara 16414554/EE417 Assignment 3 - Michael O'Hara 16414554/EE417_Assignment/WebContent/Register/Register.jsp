<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-gb">
	<head>
		<h1> Register for Website </h1>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../Style/style.css"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
		            			<li><a class = "active" href="#register">Register</a></li>

	    				</div>	
  					</div>
	  				<div class="subnav">
	    				<button class="subnavbtn">Recipes <i class="fa fa-caret-down"></i></button>
	    						<div class="subnav-content">
			            			<li><a href="../Breakfast/Breakfast.jsp">Breakfast</a></li>
									<li><a href="../Lunch/Lunch.jsp">Lunch</a></li>
									<li><a href="../Dinner/Dinner.jsp">Dinner</a></li>	    				
								</div>	
  					</div> 
		            <div class = "navright">
  					<li class = "admin"><a  href="../Admin/AdminPanel.html">Admin</a></li> 

		            	<li><input type="text" placeholder="Search.."></li>
		            </div>
	        	</div>
	        </ul>
		</nav>
	    <div id = "wrapper">
			<div class = "regform">
				<form name = "register" id="register" onsubmit="return validate()" method="post">
					<div class = "account">
						<table>
							<tr>
								<td>
									<h2> Account Details </h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td>
									<div class = "col-label">
										<label for="fname">First Name</label>
									</div>
								</td>
								<td>
									<div class = "col-input">
										<input type="text" id="fname"placeholder="First name" name="fname">
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class = "col-label">
										<label for="lname">Last Name</label>
									</div>
								</td>
								<td>
									<div class = "col-input">
										<input type="text" id="lname" placeholder="Last name" name="lname">
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class = "col-label">
										<label for="email">Email Address</label>
									</div>
								</td>
								<td>
									<div class = "col-input">
										<input type="text" id="email" placeholder="Email" name= "email">
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class = "col-label">
										<label for="password">Password</label>
									</div>
								</td>
								<td>
									<div class = "col-input">
										<input type="text" id="password" placeholder="Password" name="password">
									</div>
								</td>
							</tr>
						</table>
					</div>

					<br>
					<br>

					<div class = "personal">
						<table>
							<tr>
								<td>
									<h2> Personal Details </h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td>
									<div class = "col-label">
										<label for = "gender">Gender:</label>
									</div>
								</td>
								<td>
									<div class = "col-input">		
										<input type="checkbox" id="Male" name="Male" value="Male"> Male<br>
			  							<input type="checkbox" id="Female" name="Female" value="Female"> Female<br>
			  						</div>
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<form action="/action_page.php">
									<label for="birthday">Birthday:</label>
									<input type="date" id="birthday" name="birthday">
									
									</form>
								</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<label for = "Address 1">Address Line 1:</label>
			  					</td>
			  					<td>
			  						<input type = "text" id="Address1" placeholder="Address 1" name="addr1">
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<label for = "Address 2">Address Line 2:</label>
			  					</td>
			  					<td>
			  						<input type = "text" id="Address2" placeholder="Address 2" name="addr2">
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<label for = "Address 3">Address Line 3:</label>
			  					</td>
			  					<td>
			  						<input type = "text" id="Address3" placeholder="Address 3" name="addr3">
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<label for = "Town">Town:</label>
			  					</td>
			  					<td>
			  						<input type = "text" id="Town" placeholder="Town" name="town">
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<label for = "County">County:</label>
			  					</td>
			  					<td>
			  						<input type = "text" id="County" placeholder="County" name="county">
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>
			  						<label for = "Eircode">Eircode:</label>
			  					</td>
			  					<td>
			  						<input type = "text" id="Eircode" placeholder="Eircode" name="eircode">
			  					</td>
			  				</tr>
			  			</table>

		  			</div>
		    		<input type="submit" onclick="collect()" value="Register Now">
				</form>
			</div>
			<p id = "r"></p>

			<button class="btn" onclick = "Display()">Display</button>

			<table id="response_display">
				<tr id="titleRow">
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Password</th>
					<th>Address 1</th>
					<th>Address 2</th>
					<th>Address 3</th>
					<th>Town</th>
					<th>County</th>
					<th>Eircode</th>
				</tr>
			</table>
		</div>
	</body>
	<footer>
	    <p>Copyright © 2021  Michael O'Hara EE417 Assignment 1 Part 1</p> 
	</footer>
</html>