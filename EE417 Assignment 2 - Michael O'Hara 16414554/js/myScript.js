//validate the login by making sure the forms arent blank
function validateLogin() {
	var x = document.forms["loginform"]["email"].value;
	var y = document.forms["loginform"]["password"].value;

	var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	var emailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	
	if(x == "" && y == ""){
		alert("Both fields cant be blank");
		return false;
	}
	if(x == ""){
		alert("Email field cant be blank");
		return false;
	}
	if(!x.match(emailformat))
	{
		alert("You have entered an invalid email address!");
		return false;
	}
	if(!y.match(passw)){
		alert("Password must be at least 6 characters long and contain 1 number and 1 upper and lowercase letter");
		return false;
	}
	if(y == ""){
		alert("Password field cant be blank");
		return false;
	}
}

//validates the details provided in the account details section of the reigster page
function validateAccount()	{

	var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	var emailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	
	var fname = document.forms['register']['fname'].value;
	var lname = document.forms['register']['lname'].value;
	var x = document.forms["register"]["email"].value;
	var y = document.forms["register"]["password"].value;

	//check to make sure the fields arent blank.
	if(fname == ""){
		alert("Must enter a first name");
		return false;
	}
	if(lname == ""){
		alert("Must enter a last name");
		return false;
	}
	//check if email is valid
	if(!x.match(emailformat))
	{
		alert("You have entered an invalid email address!");
		return false;
	}
	//check if password is valid
	if(!y.match(passw)){
		alert("Password must be at least 6 characters long and contain 1 number and 1 upper and lowercase letter");
		return false;
	}
}

function validatePersonal() {
	var addr1 = document.forms['register']['Address1'].value;
	var addr2 = document.forms['register']['Address2'].value;
	var addr3 = document.forms['register']['Address3'].value;

	var eircode = document.forms['register']['Eircode'].value;
	var eircodeformat = /^\d{4}$/;


	if(!document.getElementById("Male").checked && !document.getElementById("Female").checked){
		alert("Please choose a gender");
	}

	if(addr1 == ""){
		alert("Must enter an address line 1");
		return false;
	}
	if(addr2 == ""){
		alert("Must enter an address line 2");
		return false;
	}
	if(eircode.match(eircodeformat)){
		alert("Eircode must be a combination of four digits");
		return false;
	}
}

//calls fucntions to validate the both account and personal details.
function validate() {
	validateAccount();
	validatePersonal();

	alert("User registered successfully!");
}

//collect all the details provided in the form
function collect() {
	var fields = document.getElementById("register");
	txt="";
	i=0;
	var key = "";
	var val = "";
	var pairs = [];
	var foo = {};


	for (i; i<fields.length; i++){
		key = fields.elements[i].id;
		value = fields.elements[i].value;
		foo[key] = value;
	}
	pairs.push(foo);

	console.log(pairs);
	answers = JSON.stringify(pairs);
	response_name = document.getElementById("fname").value;
	localStorage.setItem(response_name, answers);

	document.getElementById("r").innerHTML = "All elements saved to localStorage";

}

//display ALL details stored by the form.
function Display(){
	var table = document.getElementById("response_display");
	
	for (var i = 0; i < localStorage.length; i++) {
		var key = localStorage.key(i);
		var x = JSON.parse(localStorage.getItem(key));
		var row = document.createElement("tr");


		var cell1 = document.createElement("td");
		var cell2 = document.createElement("td");	
		var cell3 = document.createElement("td");
		var cell4 = document.createElement("td");
		var cell5 = document.createElement("td");	
		var cell6 = document.createElement("td");
		var cell7 = document.createElement("td");
		var cell8 = document.createElement("td");	
		var cell9 = document.createElement("td");
		var cell10 = document.createElement("td");
		var cell11 = document.createElement("td");	
		
		cell1.innerHTML = x[0].fname;
		cell2.innerHTML = x[0].lname;
		cell3.innerHTML = x[0].email;
		cell4.innerHTML = x[0].password;
		cell6.innerHTML = x[0].Address1;
		cell7.innerHTML = x[0].Address2;
		cell8.innerHTML = x[0].Address3;
		cell9.innerHTML = x[0].Town;
		cell10.innerHTML = x[0].County;
		cell11.innerHTML = x[0].Eircode;

		row.appendChild(cell1);
		row.appendChild(cell2);
		row.appendChild(cell3);
		row.appendChild(cell4);
		row.appendChild(cell6);
		row.appendChild(cell7);
		row.appendChild(cell8);
		row.appendChild(cell9);
		row.appendChild(cell10);
		row.appendChild(cell11);
		
		table.appendChild(row);
	}

}

//used for showing and hiding recipes -- couldnt get it work with only one due to ids
function ShowHide() {
	var x = document.getElementById("hideme");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function ShowHide1() {
	var x = document.getElementById("hideme1");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}


function Display_DOM(){
	var all = document.getElementsByTagName('*');
	var allLength = all.length;
	var text = document.getElementById("dom");

	for(var i=0; i<allLength; i++){
			var cell1 = document.createElement("li");

			if(i == 1 || i == 8){
				cell1.style.padding = "0px 0px 0px 20px"; //left, top, right, bottom
				cell1.style.backgroundColor = "#474b4f";
			}
			else if(i == 2 || i== 3 || i == 4 || i == 5 || i == 6 || i == 7 || i == 9 || i == 10 || i == 11 || i ==43 || i ==79){
				cell1.style.padding = "0px 0px 0px 50px"; //left, top, right, bottom
				cell1.style.backgroundColor = "#222629";
			}
			else if(i == 12|| i ==44 || i ==80){
				cell1.style.padding = "0px 0px 0px 80px"; //left, top, right, bottom
				cell1.style.backgroundColor = "#474b4f";
			}

			else if(i == 13 || i ==20 || i ==26 || i==28 || i ==34|| i ==36|| i ==38|| i ==41 || i ==45|| i ==51|| i ==56|| i ==68 || i ==81|| i ==82 || i ==83){
				cell1.style.padding = "0px 0px 0px 110px"; //left, top, right, bottom
				cell1.style.backgroundColor = "#222629";
			}
			else if(i == 15 || i == 16 || i == 17 || i ==18 || i == 19 || i ==21 || i ==22 || i ==25 || i ==27 || i ==29|| i ==30 || i ==33 || i ==35 || i ==37 || i ==39|| i ==40|| i ==42 || i ==46 || i ==47 || i ==48|| i ==49|| i ==50 || i ==52 || i ==53 || i ==54 || i ==55|| i ==57 || i ==69 || i ==78){
				cell1.style.padding = "0px 0px 0px 140px"; //left, top, right, bottom
				cell1.style.backgroundColor = "#474b4f";
			}
			else if(i ==23 || i ==24 || i ==31 || i ==32|| i ==57 || i ==58|| i ==70){
				cell1.style.padding = "0px 0px 0px 170px"; //left, top, right, bottom
				cell1.style.backgroundColor = "#222629";
			}
			else if(i ==59 ||i ==60 || i ==61 || i ==62|| i ==63|| i ==64|| i ==65|| i ==66|| i ==67 || i ==71|| i ==72|| i ==73|| i ==74|| i ==75|| i ==76|| i ==77){
				cell1.style.padding = "0px 0px 0px 200px"; //left, top, right, bottom
				cell1.style.backgroundColor = "#474b4f";
			}
			else{
				cell1.style.backgroundColor = "#333";
			}
			cell1.style.color = "white";
			cell1.style.listStyleType = "none"
			cell1.innerHTML = all[i];
			text.appendChild(cell1);

	}

}

//used for toggling the menu bar
function myFunction(y) {
  y.classList.toggle("change");

  hide();

}
function hide(){
	var x = document.getElementById("pages");
 	if (x.style.display === "block") {
    	x.style.display = "none";
  	} 
  	else {
    	x.style.display = "block";
    }
}

