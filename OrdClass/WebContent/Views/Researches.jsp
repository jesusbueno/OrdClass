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
				<li><a href="Libraries.jsp">Librer�as</a></li>
				<li><a href="Bibliography.jsp">Bibliograf�a</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>

	<div class="home">
		<div class="margins">
			<div class="r-content">
				<h3>Investigadores</h3>
				<p>Investigadores implicados en la informaci�n que se muestra en OrdClass.</p>
				
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
					<img src="Images/logo.png">
				</div>
				
				
				
				<div class="terms">
					<a href="https://www.uco.es/ayrna/">AYRNA</a>
					
					<a href="mailto:dguijo@uco.es">Contacto</a>

					<a href="AboutUs.jsp">Sobre nosotros</a>

					<a href="#">T�rminos legales</a>
				</div>
				
				<p>AYRNA Research Group - University of C�rdoba (Spain) - 2022</p>
			
			
				
			</footer>
		</div>
	</div>

</body>
</html>