<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Algorithm"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="https://kit.fontawesome.com/e289be1c63.js"
	crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/SortTables.js" type="text/javascript"></script>
<script src="js/SearchOnTables.js" type="text/javascript"></script>

<title>Algoritmos</title>
</head>
<body>

<%
	ArrayList<Algorithm> algorithms = (ArrayList<Algorithm>) session.getAttribute("algorithms");
%>
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="#" style="color: #219ebc">Algoritmos</a></li>
				<li><a href="Results.jsp">Resultados</a></li>
				<li><a href="Researches.jsp">Investigadores</a></li>
				<li><a href="Bibliography.jsp">Bibliograf�a</a></li>
				<li><a href="#">Foro</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>


	<div class="home">
		<div class="margins">
			<div class="al-content">
				<h3>Algoritmos</h3>
				<p>Biblioteca de algoritmos de clasificaci�n ordinal con
					informaci�n detallada. Selecciona un algoritmo para ver m�s
					informaci�n acerca de �l.</p>

				<div class="searchs">
					<div class="input-field">
						<input id="searchTerm" type="text" placeholder="Buscar Algoritmo" name="word" onkeyup="doSearch()">
					</div>

					<div class="button">
						<a href="#">Buscar</a>
					</div>
				</div>

				<div class="section-1">
					<div class="filters">
						<h5>Tipo</h5>
						<label class="container"><input type="checkbox" id="cbox1" value="first_checkbox">Dictionary</label><br>
						<label class="container"><input type="checkbox" id="cbox2" value="first_checkbox">Intervals</label><br>
						<label class="container"><input type="checkbox" id="cbox3" value="first_checkbox">Distance based</label><br>
						<h5>A�o</h5>
						<label class="container"><input type="checkbox" id="cbox1" value="first_checkbox">2020</label><br>
						<label class="container"><input type="checkbox" id="cbox2" value="first_checkbox">2017</label><br>
						<label class="container"><input type="checkbox" id="cbox3" value="first_checkbox">2015</label>
					
					</div>

					<div class="al-table">
						<table id="sortable">
							<thead>
								<th>Acronym <i class="fa-solid fa-sort"></i></th>
								<th>Algoritmo <i class="fa-solid fa-sort"></i></th>
								<th>Tipo <i class="fa-solid fa-sort"></i></th>
								<th>A�o <i class="fa-solid fa-sort"></i></th>

							</thead>
							<tbody>

								
								<%for(int i=0; i<algorithms.size(); i++){
									%>
										<tr onclick="window.location='../SearchAlgorithmInfo?id=<%=algorithms.get(i).getId() %>'">
											<td><%=algorithms.get(i).getAcronym()%></td>
											<td><%=algorithms.get(i).getName()%></td>
											<td><%=algorithms.get(i).getType()%></td>
											<td><%=algorithms.get(i).getYear()%></td>		
										</tr>
									<%
								}
								%>

							</tbody>
						</table>
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

			<p>Trabajo Fin de Grado 2022 Universidad de C�rdoba - OrdClass</p>

			<div class="terms">
				<a href="#">Contacto</a> <a href="#">Sobre nosotros</a> <a href="#">T�rminos
					legales</a>
			</div>



			</footer>

		</div>
	</div>
	</div>
</body>
</html>