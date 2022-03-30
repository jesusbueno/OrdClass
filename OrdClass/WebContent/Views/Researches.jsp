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

<title>Investigadores</title>
</head>
<body>

<%
ArrayList<Researcher> researches = (ArrayList<Researcher>) session.getAttribute("researches");

if(researches == null){
	response.sendRedirect("../loadData");
	return;
}
%>
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp" >Algoritmos</a></li>
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
			<div class="r-content">
				<h3>Investigadores</h3>
				<p>Investigadores implicados en la información que se muestra en OrdClass.</p>
				
				<div class="r-container">
					
					<%for(int i=0; i<researches.size(); i++){
					%>
						<div class="r-card">
						<a href="../SearchResearcherInfo?id=<%=researches.get(i).getId() %>">
						<div class="profile">
							<img src=<%=researches.get(i).getImage() %>>
							<div class="name"><p><%=researches.get(i).getSurname()%>, <%=researches.get(i).getName()%></p></div>
							<div class="institution"><p><%=researches.get(i).getInstitution() %></p></div>
							<div class="country"><p><%=researches.get(i).getCountry() %></p></div>
						</div>
						</a>
					</div>
						
					<%
					}
						%>
					
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