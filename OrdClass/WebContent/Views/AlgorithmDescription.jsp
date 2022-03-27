<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Algorithm"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/showElements.js" type="text/javascript"></script>

<title>Algoritmos</title>


</head>
<body>
<%
	Algorithm algorithm = (Algorithm) session.getAttribute("algorithm");
%>

	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp" style="color: #219ebc">Algoritmos</a></li>
				<li><a href="Results.jsp">Resultados</a></li>
				<li><a href="Researches.jsp">Investigadores</a></li>
				<li><a href="Bibliography.jsp">Bibliografía</a></li>
				<li><a href="#">Foro</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>
	
	<div class="home">
		<div class="margins">
			<h3><%=algorithm.getName() %></h3>
			
			<div class="nal-content">
				
				<div class="info">
					<div class="table-1">
						<table>
						<tr>
							<th>Acronym</th>
							<td><%=algorithm.getAcronym() %></td>
							
							
							
						</tr>
						
						<tr>
							<th>Type</th>
							<td><%=algorithm.getType() %></td>
						</tr>
						<tr>
							<th>Year</th>
							<td><%=algorithm.getYear() %></td>
						</tr>
						<tr>
							<th>Publication</th>
							<td><%=algorithm.getPublication() %></td>
						</tr>
					</table>
					</div>
					
					<div class="table-2">
						<table>
						<tr>
							<th>Description</th>
							<td><%=algorithm.getDescription() %></td>
							
						</tr>
						
						<tr>
							<th>Source Code</th>
							<td><%=algorithm.getSource_code() %></td>
						</tr>
						
						<tr>
							<th>Link</th>
							<td><%=algorithm.getLink() %></td>
						</tr>
					</table>
					</div>	
				</div>
				
				<div class="code-types">
					<div class="buttons">
						<ul>
							<li>
								<div class="card" onclick="showMLCode()">
									<div class="box">
										<p>MatLab</p>
										<i class="fa-solid fa-code"></i>
									</div>
								</div>
							</li>
							
							<li>
								<div class="card" onclick="showPyCode()">
									<div class="box">
										<p>Python</p>
										<i class="fa-brands fa-python""></i>
									</div>
								</div>
							</li>
						</ul>
					
					</div>
					
					<div class="code">
						<div id="matlab">
							<script src="<%=algorithm.getMl_code() %>"></script>
						</div>
						
						<div id="python" style="display: none">
							<script src="<%=algorithm.getPy_code() %>"></script>
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