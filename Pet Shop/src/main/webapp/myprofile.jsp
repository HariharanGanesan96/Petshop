<%@page import="com.petshop.daoimpl.PetDAO"%>
<%@page import="com.petshop.controller.login"%>
<%@page import="com.petshop.model.Customers"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My profile</title>
<link rel="stylesheet" href="myprofile.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/aeca6704b2.js"
	crossorigin="anonymous"></script>
<style type="text/css">
body {
	background-image: linear-gradient(rgba(0, 0, 0, .5) 50%,
		rgb(0, 0, 0, .5) 50%), url("./Images/myprofilebackground.jpg");
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
}

.navigation {
	padding-top: 15px;
	font-family: sans-serif;
}

h1 {
	display: inline;
	width: 300px;
	position: absolute;
	top: 10px;
	left: 10px;
	font-size: 25px;
}

#search:hover {
	background-color: white;
	border-color: white;
	color: black;
}

#menu li {
	display: inline;
}

#menu a {
	float: right;
	padding-right: 20px;
	margin-top: 2px;
	font-size: 20px;
	font-weight: bold;
	text-decoration: none;
	transition: 0.5s;
	font-weight: bold;
}

#menu a:hover {
	color: black;
}

h2 {
	margin-top: 30px;
	margin-left: 70px;
	width: 150px;
	font-size: 30px;
	width: 150px;
}

h2:hover {
	color: black;
}

table {
	margin-top: -30px;
	margin-left: 50px;
}

form {
	margin-top: 30px;
	font-size: 20px;
}

table td {
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	font-size: x-large;
	height: 25px;
	width: 200px;
	padding-left: 10px;
}

table img {
	width: 300px;
	height: 400px;
	border: 1px solid;
	border-color: black;
}

table tr, td {
	margin-left: 30px;
	padding-top: 15px;
}

#update {
	width: 130px;
	height: 30px;
	font-size: 15px;
	font-weight: bold;
	color: white;
	background-color: tomato;
	border: none;
	margin: auto;
	border-radius: 10px;
	box-shadow: 0 0 5px black;
}

#ok {
	width: 80px;
	height: 30px;
	font-size: 15px;
	font-weight: bold;
	color: white;
	background-color: rgb(4, 155, 29);
	border: none;
	border-radius: 10px;
	box-shadow: 0 0 5px black;
}

#update1 {
	width: 130px;
	height: 30px;
	font-size: 15px;
	font-weight: bold;
	color: white;
	background-color: tomato;
	border: none;
	border-radius: 10px;
	box-shadow: 0 0 5px black;
}

#updatewallet {
	width: 130px;
	height: 30px;
	font-size: 15px;
	font-weight: bold;
	color: white;
	background-color: rgb(4, 155, 29);
	border: none;
	border-radius: 10px;
	box-shadow: 0 0 5px black;
}

#logout {
	width: 130px;
	height: 30px;
	font-size: 15px;
	font-weight: bold;
	color: white;
	background-color: tomato;
	border: none;
	margin: auto;
	border-radius: 10px;
	box-shadow: 0 0 5px black;
}

#updatewallet a {
	color: white;
	text-decoration: none;
}

#updatetable {
	margin-top: 40px;
	margin-left: 40px;
}
</style>
</head>
<body>
	<%
	Customers customerDetails = new Customers();
	customerDetails = (Customers) session.getAttribute("customer");
	String updateProfile = (String) session.getAttribute("updateProfile");
	%>

	<div class="navigation">
		<h1>
			<i class="fas fa-paw" style="color: white;"></i> Pet Shop
		</h1>
		<ul id="menu">
			<li><a href="myprofile.jsp">My Profile</a></li>
			<li><a href="mycart.jsp">My cart</a></li>
			<li><a href="myorders.jsp">My orders</a></li>
			<li><a href="MyPets.jsp">My pets</a></li>
			<li><a href="AddItem.jsp">Add item</a></li>
			<li><a href="home.jsp">Home</a></li>
		</ul>
	</div>

	<h2>My profile</h2>


	<table>
		<tbody>
			<tr>
				<td rowspan="7"><img
					src="./Profile Picture/<%=customerDetails.getImage()%>"
					alt="user picture">
					<p>
						Update Image : <input type="file" id="image" name="image">
						<button type="button" id="ok" onclick="UpdateImage()">OK</button>
					</p></td>

				<td>Firstname</td>
				<td>: <%=customerDetails.getFirstName()%></td>
				<td>Lastname</td>
				<td>: <%=customerDetails.getLastName()%></td>
			</tr>
			<tr>
				<td>UserName</td>
				<td>: <%=customerDetails.getUserName()%></td>
				<td>Gender </label></td>
				<td>: <%=customerDetails.getGender()%></td>
			</tr>
			<tr>
				<td>Email</td>
				<td style="width: 250px;">: <%=customerDetails.getEmail()%></td>
				<td>Mobile</td>
				<td>: <%=customerDetails.getNumber()%></td>
			</tr>
			<tr>
				<td>Password</td>
				<td>: <%=customerDetails.getPassword()%></td>
				<td>Street</td>
				<td>: <%=customerDetails.getAddress()%></td>


			</tr>
			<tr>
				<td>City</td>
				<td>: <%=customerDetails.getCity()%></td>
				<td>Pincode</td>
				<td>: <%=customerDetails.getPincode()%></td>
			</tr>
			<tr>

				<td>wallet</td>
				<td>: Rs.<%=customerDetails.getWallet()%></td>
			</tr>
		</tbody>
	</table>

	<table id="updatetable">
		<tbody>
			<tr>
				<td id="headings" colspan="4" style="font-size: 30px;">Update
					Profile</td>
			</tr>
			<tr>
				<form action="UpdateProfile">
					<td><label for="firstname">Firstname</label></td>
					<td><input type="text" name="firstname"
						value="<%=customerDetails.getFirstName()%>"
						pattern="[a-zA-Z]{3,20}" required></td>
					<td><label for="lastname">Lastname</label></td>
					<td><input type="text" name="lastname"
						value="<%=customerDetails.getLastName()%>"
						pattern="[a-zA-Z]{3,20}" required></td>
			</tr>
			<tr>
				<td><label for="username" UserName>Username</label></td>
				<td><input type="text" name="username" id="username"
					value="<%=customerDetails.getUserName()%>"
					pattern="[a-zA-Z0-9]{8,20}" required></td>
				<td><label for="gender">Gender</label></td>
				<td><input type="text" name="gender"
					value="<%=customerDetails.getGender()%>" pattern="[a-zA-Z]{4,15}"
					required></td>
			</tr>
			<tr>
				<td><label for="email">Email</label></td>
				<td><input type="text" name="email" id="email"
					value="<%=customerDetails.getEmail()%>"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required></td>
				<td><label for="number">Mobile</label></td>
				<td><input type="text" name="number"
					value="<%=customerDetails.getNumber()%>" pattern="[6-9]{1}[0-9]{9}"
					required></td>
			</tr>
			<tr>
				<td><label for="password">Password</label></td>
				<td><input type="password" name="password"
					value="<%=customerDetails.getPassword()%>"
					pattern="[a-zA-Z0-9!@#$%^&*()_+]{8,20}" required></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>
					<button type="submit" id="update">Update Profile</button>
				</td>
				</form>
			</tr>
			<tr>
				<td id="headings" colspan="4"
					style="font-size: 30px; padding-top: 70px;">Update Address</td>
			</tr>

			<tr>
				<form action="UpdateAddress.jsp">
				<td><label for="address">Street</label></td>
				<td><input type="text" name="address" id="address"
					value="<%=customerDetails.getAddress()%>" required></td>
				<td><label for="city">City</label></td>
				<td><input type="text" name="city" id="city"
					" value="<%=customerDetails.getCity()%>" required></td>
			</tr>
			<tr>
				<td><label for="pincode">Pincode</label></td>
				<td><input type="text" name="pincode" id="pincode"
					value="<%=customerDetails.getPincode()%>" required>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><button type="submit" id="update1">Update Address</button></td>
				</from>
			</tr>

			<tr>
				<td id="headings" colspan="4"
					style="font-size: 30px; padding-top: 70px;">Update Wallet</td>
			</tr>
			<tr>

				<td><label for="wallet">Add Amount</label></td>
				<td><input type="text" name="wallet" id="updatewallet1" min="0"
					value="0" required></td>
				<td><button id="updatewallet" onclick="UpdateWallet()"
						type="button">Add</button></td>
			</tr>
		    <tr>
		    <td> <a href="Logout.jsp"> <button type="button" id="logout">Logout</button> </a>
		    </td>
		    </tr>
		</tbody>
	</table>
	
	<%
	if (session.getAttribute("profileMessage") != "none") {
		String message = (String) session.getAttribute("profileMessage");
	%>
	<script type="text/javascript">
           alert("<%=message%>");
          </script>

	<%
	session.setAttribute("profileMessage", "none");
	}
	%>
	</div>
	</div>
	<script type="text/javascript">
	
  function UpdateWallet(){
	  var wallet=document.getElementById("updatewallet1").value;
	  console.log(wallet);
  	var url="UpdateWallet.jsp?wallet="+wallet;  
    console.log("called");
  	if(window.XMLHttpRequest){  
  		request=new XMLHttpRequest();  
  		}  
  		else if(window.ActiveXObject){  
  		request=new ActiveXObject("Microsoft.XMLHTTP");  
  		}  
  	try  
  	{  
  	request.onreadystatechange=getInfo;  
  	request.open("GET",url,true);  
  	request.send();  
  	}  
  	catch(e)  
  	{  
  	alert("Unable to connect to server");  
  	}    
  } 
 	
  function UpdateImage(){
	  var image=document.getElementById("image").value;
	  console.log(image);
	  const name = image.substring(12, image.length);
//	  console.log(myArray);
  	var url="UpdateImage.jsp?image="+name;  
    console.log("called");
  	if(window.XMLHttpRequest){  
  		request=new XMLHttpRequest();  
  		}  
  		else if(window.ActiveXObject){  
  		request=new ActiveXObject("Microsoft.XMLHTTP");  
  		}  
  	try  
  	{  
  	request.onreadystatechange=getInfoImage;  
  	request.open("GET",url,true);  
  	request.send();  
  	}  
  	catch(e)  
  	{  
  	alert("Unable to connect to server");  
  	}    
  }
  
  function getInfo(){  
  	if(request.readyState==4){  
  	var val=request.responseText;
  	console.log(val);
  	   alert(""+val); 
  	  location.reload();
  	}  
  	}  
  function getInfoImage(){  
	  	if(request.readyState==4){  
	  	var val=request.responseText;
	  	console.log(val);
	  	   alert(""+val); 
	  	 location.reload();
	  	}  
	  	}  
 
  
  
 <%String message = (String) session.getAttribute("profileMessage");
if (!message.equals("none")) {%>
 
  alert("<%=message%>
		");
	<%}
session.setAttribute("profileMessage", "none");%>
		
	</script>

</body>
</html>