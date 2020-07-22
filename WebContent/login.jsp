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
	
<form class="logins" action="./login" method="post">
    <input type="hidden" name="command" value="login" />
    <div class="loginContainer">
      <h4>Login</h4>

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter username" name="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
      
      <select id="userType" name="userType">
      <option value="seller">Seller</option>
      <option value="buyer">Buyer</option>
      
      </select>

      <button type="submit" class="btn">Login</button>
    </div>
  </form>

    
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
 

</body>
</html>