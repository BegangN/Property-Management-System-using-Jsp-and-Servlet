<%@ page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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



<article>
  
		<div class="open">
			<div class="layer"></div>
			<div class="layer"></div>
		</div>
    <section id="header">
<h1>Botswana Online Property Advertiser</h1>
<h2>Advertise your property with us and get the best deals out there</h2>

    <!-- 
<img class="left-banner" src="images/left-banner.png" width="450px "height="500px" alt="left-banner">
<img class="right-banner "src="images/right-banner.png" width="550px "height="600px" alt="right-banner">

-->
<img class="banner" src="images/banner.png" alt="left-banner">
        
 </section>
    
 </article>
    
<article>

<aticle>


</aticle>
    <section id="about">

        <img src="images/line.png" >
        <h3>MANAGE REGISTERED PROPERTIES</h3>
      <table>
			<tr>
				<th>First Name</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Email</th>
				<th>Email</th>
				<th>Email</th>
				<th>Email</th>
				<th>Email</th>
				<th>Email</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
			<c:forEach var="tempUser" items="${USERS_LIST }">

				<c:url var="tempLink" value="usersController">
					<c:param name="command" value="LOAD" />
					<c:param name="userID" value="${tempUser.userID}" />

				</c:url>


				<!-- set up a link delete each student -->

				<c:url var="deleteLink" value="usersController">
					<c:param name="command" value="DELETE" />
					<c:param name="userID" value="${tempUser.userID}" />
				</c:url>
				<tr>
					<td>${tempUser.firstName}</td>
					<td>${tempUser.lastName}</td>
					<td>${tempUser.gender}</td>
					<td>${tempUser.address}</td>
					<td>${tempUser.dateRegistered}</td>
					<td>${tempUser.email}</td>
					<td>${tempUser.contacts}</td>
					<td>${tempUser.userType}</td>
					<td>${tempUser.username}</td>
					<td>${tempUser.password}</td>

					<td><a href="${tempLink}">Update</a> <a href="${deleteLink}"
						onClick="if(!(confirm('Are you sure you want to delete this user?')))
        	 return false">Delete</a>
				</tr>

			</c:forEach>

		</table>


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

 <article>
   
     <div id="id01" class="modal">
           
  <div class="container-form">
      <h2>ENTER DETAILS TO REGISTER</h2>

      
<form class="modal-content animate" action="./propertyController" method="post" enctype="multipart/form-data">
<input type="hidden" name="command" value="ADD" />
  
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
   
    <input type="hidden" name="command" value="ADD" />
      <label for="propertyName"><b>propertyName</b></label>
    <input type="text" name="propertyName" required>
    
    <label for="propertyType"><b>propertyType</b></label>
    
    <select id="propertyType" name="propertyType">
    
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
    <input type="text" name="quantity" required>
    
    <label for="amount"><b>amount</b></label>
    <input type="text" name="amount" required>
     
       <label for=" termID"><b> termID</b></label>
    <input type="text" name=" termID" required>
    
    <label for="duration"><b> duration</b></label>
    
    <select id="duration" name="duration">
        
      <option value="month">1 Month</option>
      <option value="half">6 Months</option>
       <option value="year">1 year</option>
    </select>
    
    <select id="statusID" name="statusID">
        
      <option value="new">New</option>
      <option value="old">Old</option>
    </select>
    
    
       <label for="description"><b>description</b></label>
    <input type="text" name="description" required>
    
    <select id="advertID" name="advertID">
        
      <option value="1">1</option>
      <option value="2">2</option>
       <option value="3">3</option>
    </select>
    
    
    <label for="dateAdvertised"><b>dateAdvertised</b></label>
    <input type="date" name="dateAdvertised" required>
    
     <label for="propertyImage"><b>propertyImage</b></label>
    <input type="file" name="propertyImage" required>
    
    <p>By creating an Advertisement you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
    
      <button type="submit" class="signupbtn">Sign Up</button>
           
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
 
</html>