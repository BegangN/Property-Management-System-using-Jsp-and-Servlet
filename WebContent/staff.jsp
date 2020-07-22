<%@ page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOPA | Admin & Staff</title>
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
<li><a href="admin.jsp">Home</a></li>
<li><a href="admin.jsp">About</a></li>
<li><a href="admin.jsp">Properties</a>
<li><a href="admin.jsp">Contact</a></li>
</ul>


<a  href="admin.jsp" class="reg" >Logout</a>
</nav>
</header>

<article class="menu">

<input type="submit" value="Properties"
				onclick="window.location.href='viewProperties.jsp'; return
    false;"
				class="add-student-button" /> 
				
<input type="submit" value="Advertising Terms"
				onclick="window.location.href='terms.jsp'; return
    false;"
				class="add-student-button" /> 
				
<input type="submit" value="Reports"
				onclick="window.location.href='reports.jsp'; return
    false;"
				class="add-student-button" /> 

</article>




	<article>
	
	<h2>ADDED PROPERTIES</h2>
		<table>
			<tr>
				<th>PropertyName</th>
				<th>PropertyType</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Amount</th>
				<th>termId</th>
				<th>Duration</th>
				<th>StusId</th>
				<th>Description</th>
				<th>AdvertId</th>
				<th>Date</th>
				<th>Images</th>
			</tr>
			<c:forEach var="tempUser" items="${PROPERTY_LIST }">

				<c:url var="tempLink" value="propertyController">
					<c:param name="command" value="LOAD" />
					<c:param name="propertyId" value="${tempUser.propertyId}" />

				</c:url>


				<!-- set up a link delete each student -->

				<c:url var="deleteLink" value="usersController">
					<c:param name="command" value="DELETE" />
					<c:param name="tempUser.propertyId" value="${tempUser.propertyId}" />
				</c:url>
				<tr>
					<td>${tempUser.propertyName}</td>
					

					<td><a href="${tempLink}">Approve</a> <a href="${deleteLink}"
						onClick="if(!(confirm('Are you sure you want to delete this user?')))
        	 return false">Delete</a>
				</tr>

			</c:forEach>

		</table>


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