<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOPA | PROPERTIES</title>
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
      
      <section>

</section>
        
   <section class="table">
 
        
    <div class="wrapper">
    <div class="item item_1">
      <h3>Commercial</h3>
      <img src="images/houses/2.jpg" alt="cycle_image">
      <div class="info">
        <p>Francistown</p>
        <p>30 X 25 sq/Mt</p>
        <p>4 Bathrooms and 2 Rooms</p>
      </div>
      <div class="prices">
           <h3><sup>P</sup>20 000<sub>.00</sub></h3>
        
      </div>
      <div class="btn">
          <a href="#">View More</a>
      </div>
  </div>
    <div class="item item_2">
      <h3>Residential</h3>
      <img src="images/houses/3.jpg" alt="bike_image">
      <div class="info">
       <p>Gaborone</p>
        <p>40 X 35 sq/Mt</p>
        <p>2 Bathrooms and 3 Rooms</p>
      </div>
      <div class="prices">
        
           <h3><sup>P</sup>50 000<sub>.00</sub></h3>
      </div>
      <div class="btn">
          <a href="#">View More</a>
      </div>
  </div>
    <div class="item item_3">
      <h3>Commercial</h3>
      <img src="images/houses/4.jpg" alt="bike_image">
      <div class="info">
        <p>Tonota</p>
        <p>50 X 25 sq/Mt</p>
        <p>2 Bathrooms</p>
      </div>
      <div class="prices">
        <h3><sup>P</sup>10 000<sub>.00</sub></h3>
      </div>
      <div class="btn">
          <a href="#">View More</a>
      </div>
  </div>
</div>

    
     <div class="wrapper">
    <div class="item item_1">
      <h3>Commercial</h3>
      <img src="images/houses/5.jpg" alt="cycle_image">
      <div class="info">
       <p>Mahalapye</p>
        <p>20 X 25 sq/Mt</p>
        <p>2 Bathrooms</p>
      </div>
      <div class="prices">
           <h3><sup>P</sup>20 000<sub>.00</sub></h3>
        
      </div>
      <div class="btn">
          <a href="#">View More</a>
      </div>
  </div>
    <div class="item item_2">
      <h3>Commercial</h3>
      <img src="images/houses/5.jpg" alt="cycle_image">
      <div class="info">
       <p>Mahalapye</p>
        <p>20 X 25 sq/Mt</p>
        <p>2 Bathrooms</p>
      </div>
      <div class="prices">
        
           <h3><sup>P</sup>500<sub>.00</sub></h3>
      </div>
      <div class="btn">
          <a href="#">View More</a>
      </div>
  </div>
    <div class="item item_3">
      <h3>Residential</h3>
      <img src="images/houses/house1.png" alt="bike_image">
      <div class="info">
        <p>Serowe</p>
        <p>25 X 25 sq/Mt</p>
        <p>2 Bathrooms</p>
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
		
		
		<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
</body>
</html>