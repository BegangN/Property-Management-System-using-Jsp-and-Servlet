<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOPA | SELLER PANEL</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<header>
<nav>
<div class="logo">
<img src="images/logo.png">
</div>
<ul>
<li><a href="home.jsp">Home</a></li>
<li><a href="about.jsp">About</a></li>
<li><a href="viewProperty.jsp">Properties</a>
<li><a href="contact.jsp">Contact</a></li>
<li><a onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Add Property</a>
</li>
</ul>
<div class="reg"><a href="login.jsp">Logout</a></div>
</nav>
</header>

	<div id="Container">
		<h3>Update Account</h3>
		<form action="StudentControllerServlet" method="POST">

			<input type="hidden" name="command" value="UPDATE" /> <input
				type="hidden" name="studentId" value="${THE_USER.userID }" />
			<label for="firstName"><b>FirstName</b></label>
    <input type="text" name="firstName" value="${THE_USER.firstName }" required>
    
    <label for="lastName"><b>LastName</b></label>
    <input type="text" name="lastName" value="${THE_USER.lastName }" required>
    
       <label for=" gender"><b> Gender</b></label>
    <input type="text" name="gender" value="${THE_USER.gender }" required>
    
    <label for="address"><b>Address</b></label>
    <input type="text" name="address" value="${THE_USER.address }" required>
    
    <label for="dateRegistered"><b>dateRegistered</b></label>
    <input type="date" name="dateRegistered" value="${THE_USER.dateRegistered }" required>
    
    <label for="email"><b>Email</b></label>
    <input type="text" name="email" value="${THE_USER.email }" required>
    
       <label for=" contacts"><b> Contacts</b></label>
    <input type="text" name="contacts" value="${THE_USER.contacts }" required>
    
    <label for=" usertype"><b> Usertype</b></label>
    <select id="usertype" name="userType">
        
      <option value="seller">Seller</option>
      <option value="buyer">Buyer</option>
    </select>
    
    <label for="username"><b>Username</b></label>
    <input type="text" name="username" value="${THE_USER.username }" required>
    
    <label for="passwords"><b>Password</b></label>
    <input type="password" name="password" value="${THE_USER.password }" required>

    
							<input type="submit" value="Save" class="save" />

		</form>
		<div style="clear: both;"></div>
		<p>
			<a href="usersController">Back to list</a>
	</div>


<footer class="footer-distributed">

			<div class="footer-left">

				<h3><img src="images/logo2.png"></h3>

				<p class="footer-links">
					<a href="#">Home</a>
					·
					<a href="#">About</a>
					·
					<a href="#">Properties</a>
					·
					<a href="#">Contact</a>
					·
					<a href="#">Login</a>
					·
					<a href="#">SignUp</a>
				</p>

				<p class="footer-company-name">Botswana Online Property Advertiser &copy; 2019</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>Galo Minestone</span> Francistown, Botswana</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+267 77871569</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p></div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					We are here to help secure your wealth and security by providing shelter,a home, a legacy to leave behind for your kids by investing in property. </p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>
</body>
</html>