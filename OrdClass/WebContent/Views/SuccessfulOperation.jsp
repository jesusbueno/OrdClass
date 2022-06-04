<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="es.uco.ordclass.business.User"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>

<title>Succesful Operation</title>
</head>
<body>

<%
	User user = (User) session.getAttribute("user");

	if(user == null){
		response.sendRedirect("../loadData");
		return;
	}

%>

	<div class="menu-admin">
		<div class="margins">
			<p><i class="fa-solid fa-lock"></i> Admin Mode</p>
		</div>
	</div>
	
	<div class="home">
		<div class="margins">
			<div class="operation">
				<h3>Successful Operation</h3>
				
				
				<div class="buttons">
					<a href="../LoadAdmin">
					<div class="card">
						<div class="box">
							<p>Continue operating</p>
							<i class="fa-solid fa-house"></i>
						</div>
					</div>
					</a>
				
					<a href="../loadData">
					<div class="card">
						<div class="box">
							<p>Exit</p>
							<i class="fa-solid fa-arrow-right-from-bracket"></i>
						</div>
					</div>
					</a>
				</div>
			</div>
		
		
		
		</div>
	</div>


</body>
</html>