<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>

<title>Librerías</title>

</head>
<body>
	
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="#" >Datasets</a></li>
				<li><a href="Algorithms.jsp">Algoritmos</a></li>
				<li><a href="Results.jsp">Resultados</a></li>
				<li><a href="Researches.jsp">Investigadores</a></li>
				<li><a href="Bibliography.jsp">Bibliografía</a></li>
				<li><a href="#" style="color: #219ebc">Librerías</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>
	
	<div class="home">
		<div class="margins">
			<div class="lib-content">
				<h3>Librerías</h3>
				<p>Librerías relacionadas con el análisis de datos de clasificación ordinal.</p>
				
				
				<div class="lib-table">
					<table>
						<thead>
							<th>Librería</th>
							<th>Lenguaje</th>
							<th>Autor</th>
							
						</thead>
						<tbody>
							<tr onclick="window.location='https://github.com/ayrna/orca/tree/master/src/Algorithms'">
								<td>ORCA</td>		
								<td>MATLAB</td>
								<td>AYRNA</td>
							</tr>
							
							<tr onclick="window.location='https://github.com/ayrna/orca-python/tree/master/classifiers'">
								<td>ORCA-python</td>
								<td>Python</td>
								<td>AYRNA</td>
							</tr>
							
							<tr onclick="window.location='https://pythonhosted.org/mord/'">
								<td>mord</td>
								<td>Python</td>
								<td>Fabian Pedregosa Izquierdo</td>
							</tr>
						</tbody>
					
					</table>
				
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
				<a href="#">Contacto</a> <a href="AboutUs.jsp">Sobre nosotros</a> <a href="#">Términos
					legales</a>
			</div>



			</footer>
		</div>
	
	</div>

</body>
</html>