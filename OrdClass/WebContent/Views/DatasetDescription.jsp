<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Dataset"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>

<title>Datasets</title>
</head>
<body>

<%
	Dataset dataset = (Dataset) session.getAttribute("dataset");

	if(dataset == null){
		response.sendRedirect("../loadData");
		return;
	}
%>
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp" style="color: #219ebc">Datasets</a></li>
				<li><a href="Algorithms.jsp" >Algoritmos</a></li>
				<li><a href="Results.jsp">Resultados</a></li>
				<li><a href="Researches.jsp">Investigadores</a></li>
				<li><a href="Bibliography.jsp">Bibliograf�a</a></li>
				<li><a href="Libraries.jsp">Librer�as</a></li>>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>
	
	<div class="home">
		<div class="margins">
		
			<h3><%=dataset.getName() %></h3>
			<div class="dsd-content">
				<div class="info">
					<div class="table-1">
						<table>
						<tr>
							<th>Train Size</th>
							<td><%=dataset.getTrain_size() %></td>			
						</tr>
						
						<tr>
							<th>Test Size</th>
							<td><%=dataset.getTest_size() %></td>
						</tr>
						
						<tr>
							<th>Length</th>
							<td><%=dataset.getLength() %></td>
						</tr>
						
						<tr>
							<th>Classes</th>
							<td><%=dataset.getClasses() %></td>
						</tr>
						
						<tr>
							<th>Type</th>
							<td><%=dataset.getType() %></td>
						</tr>
						
						<tr>
							<th>Best Algorithm</th>
							<td><%=dataset.getBest_algorithm() %></td>
						</tr>
						
						<tr>
							<th>Best Accuaricy</th>
							<td><%=dataset.getBest_accuracy()%>%</td>
						</tr>
					</table>
					
					
					</div>
					
					<div class="table-2">
						<table>
						<tr>
							<th>Description</th>
							<td><%=dataset.getDescription() %></td>							
						</tr>
						
						<tr>
							<th>Data Source</th>
							<td><a href="<%=dataset.getData_source() %>"><%=dataset.getData_source() %></a></td>
						</tr>
						
						<tr>
							<th>Donated by</th>
							<td><%=dataset.getDonor()%></td>
						</tr>
					</table>
					
					<div class="button">
						<a href="<%=dataset.getDownload()%>">Descargar</a>
					</div>
					</div>
				
				
				
				</div>
				
				<div class="images">
					<img src=<%=dataset.getImages()%> >
				</div>
				
				
				
			</div>
		
		
		
		<footer class="footer">
				<div class="buttons">
					<a href="https://twitter.com/?logout=1645563425361"><i class="fa-brands fa-twitter"></i></a>
					<a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a>
					<a href="https://www.google.com/intl/es/gmail/about/"><i class="fa-solid fa-envelope"></i></a>
					<a href="#"><i class="fa-solid fa-phone"></i></a>
				</div>
				
				<p>Trabajo Fin de Grado 2022 Universidad de C�rdoba - OrdClass</p>
				
				<div class="terms">
					<a href="#">Contacto</a>

					<a href="AboutUs.jsp">Sobre nosotros</a>

					<a href="#">T�rminos legales</a>
				</div>
			
			
				
			</footer>
		</div>
	</div>
</body>
</html>