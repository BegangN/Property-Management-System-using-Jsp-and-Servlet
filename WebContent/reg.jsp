<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Botswana Online Property Advertiser</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<header>
<nav>
<div class="logo">
<a class="logs" href="index.html">ASPIN </a><a class="log" href="index.html">PROPERTIES</a>
</div>
<ul>
<li><a href="">Home</a></li>
<li><a href="">About</a></li>
<li><a href="">Properties</a>
<li><a href="">Contact</a></li>
</ul>

<div class="login"><a href="login.jsp">Login</a></div>
<div class="reg"><a href="reg.jsp">SignUp</a></div>
</nav>
</header>

<form class="container" action="./usersController" method="post">
    <input type="hidden" name="command" value="ADD" />
    
      <label for="firstName"><b>FirstName</b></label>
    <input type="text" name="firstName" required>
    
    <label for="lastName"><b>LastName</b></label>
    <input type="text" name="lastName" required>
    
       <label for=" gender"><b> Gender</b></label>
    <input type="text" name="gender" required>
    
    <label for="address"><b>Address</b></label>
    <input type="text" name="address" required>
    
    <label for="dateRegistered"><b>dateRegistered</b></label>
    <input type="date" name="dateRegistered" required>
    
    <label for="email"><b>Email</b></label>
    <input type="text" name="email" required>
    
       <label for=" contacts"><b> Contacts</b></label>
    <input type="text" name="contacts" required>
    
    <label for=" usertype"><b> Usertype</b></label>
    <select id="usertype" name="userType">
        
      <option value="seller">Seller</option>
      <option value="buyer">Buyer</option>
    </select>
    
    <label for="username"><b>Username</b></label>
    <input type="text" name="username" required>
    
    <label for="passwords"><b>Password</b></label>
    <input type="password" name="password" required>
    
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
    
      <button type="submit" class="signupbtn">Sign Up</button>
     <button type="button" class="cancelbtn">Login</button>
           
    </form>
    
</body>
</html>