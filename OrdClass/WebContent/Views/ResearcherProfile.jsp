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

<title>Perfil</title>
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
				<li><a href="Algorithms.jsp">Algoritmos</a></li>
				<li><a href="Results.jsp">Resultados</a></li>
				<li><a href="Researches.jsp" style="color: #219ebc">Investigadores</a></li>
				<li><a href="Bibliography.jsp">Bibliografía</a></li>
				<li><a href="#">Foro</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
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
							<div class="title">Profesión </div><p><%=researcher.getProfession() %></p>
							<div class="title">Institución </div><p><%=researcher.getInstitution()%>, <%=researcher.getCountry() %></p>
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
				<a href="https://twitter.com/?logout=1645563425361"><i
					class="fa-brands fa-twitter"></i></a> <a
					href="https://www.instagram.com/"><i
					class="fa-brands fa-instagram"></i></a> <a
					href="https://www.google.com/intl/es/gmail/about/"><i
					class="fa-solid fa-envelope"></i></a> <a href="#"><i
					class="fa-solid fa-phone"></i></a>
			</div>

			<p>Trabajo Fin de Grado 2022 Universidad de Córdoba - OrdClass</p>

			<div class="terms">
				<a href="#">Contacto</a> <a href="#">Sobre nosotros</a> <a href="#">Términos
					legales</a>
			</div>



			</footer>
		</div>
	</div>
</body>
</html>