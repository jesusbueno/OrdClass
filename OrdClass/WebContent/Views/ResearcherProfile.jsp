<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Researcher"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>

<title>Profile</title>
</head>
<body>

<%
	Researcher researcher = (Researcher) session.getAttribute("researcher");

	if(researcher == null){
		response.sendRedirect("../loadData");
		return;
	}
%>

	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp">Algorithms</a></li>
				<li><a href="Results.jsp">Results</a></li>
				<li><a href="Researches.jsp" style="color: #219ebc">Researchers</a></li>
				<li><a href="Libraries.jsp">Libraries</a></li>
				<li><a href="Bibliography.jsp">Bibliography</a></li>	
				<li><a href="AboutUs.jsp">About Us</a></li>
			</ul>
		</div>
	</div>

	<div class="home">
		<div class="margins">

			<div class="p-content">
				<h3><%=researcher.getName()%> <%=researcher.getSurname()%></h3>
				
				<div class="container">
					<img src=<%=researcher.getImage() %>>
					
					<div class="datos">
						<div class="left">
							<div class="title">Profession </div><p><%=researcher.getProfession() %></p>
							<div class="title">Institution </div><p><%=researcher.getInstitution()%>, <%=researcher.getCountry() %></p>
							<div class="title">Phone</div>
							<p><%=researcher.getPhone() %></p>
							<div class="title">External Link</div>
							<p><a href="<%=researcher.getLink() %>"><%=researcher.getLink() %></a></p>
						
							<div class="title">Email</div>
							<p><a href="mailto:<%=researcher.getEmail() %>"><%=researcher.getEmail() %></a></p>
						</div>
						
						
						<div class="right">
							<div class="title">Description</div>
							<p><%=researcher.getDescription() %></p>
						</div>
						
					</div>
				</div>
			
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