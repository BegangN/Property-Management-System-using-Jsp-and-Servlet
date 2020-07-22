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

<form class="container" action="./propertyController" method="post" enctype="multipart/form-data">
    <input type="hidden" name="command" value="UPDATE" />
    
    <input type="hidden" name="propertyId" value="${propertyId }" />
    
      <label for="propertyName"><b>propertyName</b></label>
    <input type="text" name="propertyName" value="${propertyName}" required>
    
    <label for="propertyType"><b>propertyType</b></label>
    
    <select id="propertyType" name="propertyType" >
    
   <option value="residential">Residential</option>
       <option value="commercial">Commercial</option>
    
    </select>
    
       <label for=" gender"><b> Price</b></label>
    <select id="price" name="price">
    
    <option value="">P500</option>
    <option value="">P2000</option>
    <option value="">P5000</option>
    </select>
    
    <label for="quantity"><b>quantity</b></label>
    <input type="text" name="quantity" value="${quantity }" required>
    
    <label for="amount"><b>amount</b></label>
    <input type="text" name="amount" value="${amount }" required>
     
       <label for=" termID"><b> termID</b></label>
    <input type="text" name=" termID" value="${termID }" required>
    
    <label for="duration"><b> duration</b></label>
    
    <select id="duration" name="duration">
        
      <option value="month">1 Month</option>
      <option value="half">6 Months</option>
       <option value="year">1 year</option>
    </select>
    
    
    <label for="statusID"><b>statusID</b></label>
    <input type="text" name="statusID" value="${statusID }" required>
    
       <label for="description"><b>description</b></label>
    <input type="text" name="description" value="${description }" required>
    
       <label for="advertID"><b>advertID</b></label>
    <input type="text" name="advertID" value="${advertID }" required>
    
    <label for="dateAdvertised"><b>dateAdvertised</b></label>
    <input type="date" name="dateAdvertised" value="${dateAdvertised }" required>
    
     <label for="propertyImage"><b>propertyImage</b></label>
    <input type="file" name="propertyImage" value="${propertyImage }" required>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
    
      <button type="submit" class="signupbtn">Sign Up</button>
     <button type="button" class="cancelbtn">Login</button>
           
    </form>
    
    
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