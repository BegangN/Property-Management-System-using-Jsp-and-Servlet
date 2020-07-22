<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOPA | LOGIN</title>
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
<li><a href="index.jsp">Home</a></li>
<li><a href="login.jsp">About</a></li>
<li><a href="login.jsp">Properties</a>
<li><a href="login.jsp">Contact</a></li>
</ul>


<a  class="reg" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">SignUp</a>
</nav>
</header>


<article>
  
		<div class="open">
			<div class="layer"></div>
			<div class="layer"></div>
		</div>
	
<form class="logins" action="./staff" method="post">
    <input type="hidden" name="command" value="login" />
    <div class="loginContainer">
      <h4>Login</h4>

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter username" name="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
      
      <button type="submit" class="btn">Login</button>
    </div>
  </form>

    
 </article>
 
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