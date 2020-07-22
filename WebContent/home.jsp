<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOPA | HOME</title>
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
</ul>

<div class="reg"><a href="login.jsp">Logout</a></div>
</nav>
</header>


<article>
  
		<div class="open">
			<div class="layer"></div>
			<div class="layer"></div>
		</div>
    <section id="header">
<h1>WELCOME TO BOPA HOMEPAGE</h1>
<h2>Everyone wants a piece of land. Its the only sure investment. 
</h2>
<img class="banner" src="images/banner.png" alt="left-banner">
        
 </section>
    
 </article>
    
<article>
    <section id="about">

        <img src="images/line.png" >
        <h3>WHY CHOOSE US</h3>
       <img class="left-about" src="images/left-about.png">
        
    <h4>LET US HELP YOU FIND YOUR <div  class="blue"> PROPERTY</div></h4>
    <p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit,
        sed ips eiusmod tempor incididunt ut labore et dolore magna aliqua isuspendisse ultrices gravida. Risus.
    </p>
  
    <a class="read" href="">Read More</a>
</section>
 

    
    
    
    <section class="table">
    <h2>ADVERTISING TERMS AND PRICES</h2>
        
    <div class="wrapper">
    <div class="item item_1">
      <h3>Starter</h3>
      <img src="images/house2.png" alt="cycle_image">
      <div class="info">
        <p>The advert runs on the website for a month then it is removed</p>
        <p>Limited Adverts</p>
      </div>
      <div class="prices">
           <h3><sup>P</sup>200<sub>.00</sub></h3>
        
      </div>
      <div class="btn">
          <a href="#">View More</a>
      </div>
  </div>
    <div class="item item_2">
      <h3>Premium</h3>
      <img src="images/house1.png" alt="bike_image">
      <div class="info">
        <p>The advert runs on the website for 6 months then it is removed</p>
        <p>Unlimited Adverts</p>
      </div>
      <div class="prices">
        
           <h3><sup>P</sup>500<sub>.00</sub></h3>
      </div>
      <div class="btn">
          <a href="#">View More</a>
      </div>
  </div>
    <div class="item item_3">
      <h3>Ultimate</h3>
      <img src="images/house3.png" alt="bike_image">
      <div class="info">
        <p>The advert runs on the website for a year then it is removed</p>
        <p>Unlimited Access</p>
      </div>
      <div class="prices">
        <h3><sup>P</sup>1000<sub>.00</sub></h3>
      </div>
      <div class="btn">
          <a href="#">View More</a>
      </div>
  </div>
</div>

    
    
    
    
    </section>
    </article> 
<article class="chat">


<button class="open-button" onclick="openForm()">Chat</button>

<div class="chat-popup" id="myForm">
  <form action="/action_page.php" class="form-containers">
    <h1>Chat</h1>

    <label for="msg"><b>Message</b></label>
    <textarea placeholder="Type message.." name="msg" required></textarea>

    <button type="submit" class="btn">Send</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

</article>
 <article>
   
     <div id="id01" class="modal">
           
  <div class="container-form">
      <h2>ENTER DETAILS TO REGISTER</h2>
  <form class="modal-content animate" action="./usersController" method="post">
      <input type="hidden" name="command" value="ADD" />
  
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
   
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
         <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    <button type="submit">Signup</button>
     

    
   

    
  </form>
         </div>
     </div>
    
    </article>
    
    
    
    <article>
    
    
    
    
    
    
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
 <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
 
</html>