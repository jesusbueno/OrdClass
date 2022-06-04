<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="es.uco.ordclass.business.User"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.User"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/showElements.js" type="text/javascript"></script>
<title>Send Issue</title>
</head>
<body>

<%
	ArrayList<User> users = (ArrayList<User>) session.getAttribute("users");

	if(users == null){
		response.sendRedirect("../loadData");
		return;
	}

%>

	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="Home.jsp" style="color: #219ebc">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp">Algorithms</a></li>
				<li><a href="Results.jsp">Results</a></li>
				<li><a href="Researches.jsp">Researchers</a></li>
				<li><a href="Libraries.jsp">Libraries</a></li>
				<li><a href="Bibliography.jsp">Bibliography</a></li>		
				<li><a href="AboutUs.jsp">About Us</a></li>
			</ul>
		</div>
	</div>

	
	<div class="home">
		<div class="margins">
			<div class="add-issue">
				<h3>New Issue</h3>
				<p>Complete the issue fields.</p>
				<form name="form" action="/OrdClass/SendIssue" method="post">
				
				
				<div class="section-issue">
				
					
							<div class="content">
							<h5>New Issue</h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="name" placeholder="Name">
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="surname" placeholder="Surname" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="email" placeholder="Email">
								</div>
								
								<div class="radios">
									<p>Concept.</p>
									<label class="container"><input type="radio" name="type" value="beadmin" checked="true" >I want be admin</label><br>
									<label class="container"><input type="radio" name="type"  value="other">Another suggestion</label><br>
								</div>
								
								
								<div class="select">
									<p>Choose an admin receiver.</p>
									
										<select name="admins" id="admins">
											<%
												for(int i=0; i< users.size(); i++){
											%>
												<option value=<%=users.get(i).getEmail() %>><%=users.get(i).getName() %> <%=users.get(i).getSurname()%></option>
											<%}
											%>
									 	</select>
									
								</div>
								
								<div class="input-field-2">
									<textarea placeholder="Describe your suggestion in as much detail as possible." name="cuerpo"></textarea>
								</div>
							
								
							</div>	
						</div>
						
						
						<input type="submit" name="action" value="Send" class="button">
						
					</div>
				</div>
				
				</form>
			</div>
		
		
			<footer class="footer">
				<div class="buttons">
					<img src="Images/logo.png">
				</div>
				
				
				
				<div class="terms">
					<a href="https://www.uco.es/ayrna/">AYRNA</a>
					
					<a href="mailto:dguijo@uco.es">Contact</a>

					<a href="AboutUs.jsp">About Us</a>

					<a href="#">Legal Terms</a>
				</div>
				
				<p>AYRNA Research Group - University of Córdoba (Spain) - 2022</p>
			
			
				
			</footer>
		</div>
	</div>
</body>
</html>