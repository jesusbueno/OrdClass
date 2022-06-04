<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/CheckValues.js" type="text/javascript"></script>

<title>Login</title>
</head>

<script>
	
	
	function contador(){
		var cont = localStorage.getItem("contador")+1;
		localStorage.setItem("contador", cont);
		if(cont>1){
			document.getElementById('incorrect').style.display = '';
		}
	}
</script>

<body onload="contador()">

	<div class="home">
		<div class="margins">
			<div class="login-content">
				<h3><i class="fa-solid fa-lock"></i> Admin Mode </h3>
				<p>If you have administrator privileges, log in and add or delete data in the application.</p>
				
				<form name="form" action="/OrdClass/LoginUser" method="post" onsubmit="return checkLogin()">
				<div class="login">
					<div class="container">
						
						<img src="Images/logo.png">
					
						<div class="input-field">
							<input type="text" name="email" placeholder="Email">
						</div>
								
						<div class="input-field">
							<input type="password" name="password" placeholder="Password">
						</div>
						
						<div class="alert alert-danger" role="alert" style="width: 90%; height: 40px; padding: 7px 0px 0px 20px; display:none" id="incorrect">
  							Incorrect email or password.
						</div>
						
						<div class="alert alert-danger" role="alert" style="width: 90%; height: 40px; padding: 7px 0px 0px 20px; display:none" id="empty">
  							There cannot be empty fields.
						</div>
						
						<input type="submit" name="action" value="Login" class="button">
						
					</div>
				
				</div>
				</form>
			</div>




			<footer class="footer">
				<div class="buttons">
					<img src="Images/logo.png">
				</div>
				<div class="terms">
					<a href="https://www.uco.es/ayrna/">AYRNA</a> <a
						href="mailto:dguijo@uco.es">Contact</a> 
						<a href="AboutUs.jsp">About Us</a> <a href="#">Legal Terms</a>
				</div>

				<p>AYRNA Research Group - University of Córdoba (Spain) - 2022</p>
			</footer>
		</div>
	</div>
</body>
</html>