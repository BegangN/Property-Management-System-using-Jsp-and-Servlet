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
	
<form class="logins" action="seller.jsp" method="post">
    <input type="hidden" name="command" value="login" />
    <div class="loginContainer">
      <h4>PAYMENT PROCESS</h4>

      <label for="email"><b>Credit Card Number</b></label>
      <input type="text" placeholder="Enter Credit Card Number" name="username" required>

      <label for="psw"><b>EXPIRY DAYE</b></label>
      <input type="password" placeholder="MM/  YYYY" name="password" required>
      
      <select id="userType" name="userType">
      <option value="seller">VISA</option>
      <option value="buyer">MASTERCARD</option>
      
      </select>

      <button type="submit" class="btn">Pay</button>
    </div>
  </form>

    
 </article>

</body>
</html>