<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Algorithm"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/SortTables.js" type="text/javascript"></script>
<script src="js/SearchOnTables.js" type="text/javascript"></script>
<script src="js/Filters.js" type="text/javascript"></script>

<title>Algoritmos</title>
</head>
<body>

<%
	ArrayList<Algorithm> algorithms = (ArrayList<Algorithm>) session.getAttribute("algorithms");

	if(algorithms == null){
		response.sendRedirect("../loadData");
		return;
	}
%>
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="#" style="color: #219ebc">Algoritmos</a></li>
				<li><a href="Results.jsp">Resultados</a></li>
				<li><a href="Researches.jsp">Investigadores</a></li>
				<li><a href="Bibliography.jsp">Bibliografía</a></li>
				<li><a href="Libraries.jsp">Librerías</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>


	<div class="home">
		<div class="margins">
			<div class="al-content">
				<h3>Algoritmos</h3>
				<p>Biblioteca de algoritmos de clasificación ordinal con
					información detallada. Selecciona un algoritmo para ver más
					información acerca de él.</p>

				<div class="searchs">
					<div class="input-field">
						<input id="searchTerm" type="text" placeholder="Buscar Algoritmo" name="word" onkeyup="doSearch()">
					</div>

					<div class="button">
						<a onclick="showAllAlgorithms()">Reset</a>
					</div>
				</div>

				<div class="section-1">
					<div class="filters">
						<h5>Tipo</h5>
						<label class="container"><input type="radio" name="type" value="Dictionary" onclick="filterAlgorithm(this)">Dictionary</label><br>
						<label class="container"><input type="radio" name="type" value="Intervals" onclick="filterAlgorithm(this)">Intervals</label><br>
						<label class="container"><input type="radio" name="type" value="Distance based" onclick="filterAlgorithm(this)">Distance based</label><br>
						<h5>Año</h5>
						<label class="container"><input type="radio" name="year" value="2020" onclick="filterAlgorithm(this)">2020</label><br>
						<label class="container"><input type="radio" name="year" value="2017" onclick="filterAlgorithm(this)">2017</label><br>
						<label class="container"><input type="radio" name="year" value="2015" onclick="filterAlgorithm(this)">2015</label>
					
					</div>

					<div class="al-table">
						<table class="sortable" id="sortable">
							<thead>
								<th onclick="sortTable('sortable', 0)" >Acronym <i class="fa-solid fa-sort"></i></th>
								<th onclick="sortTable('sortable', 1)">Algoritmo <i class="fa-solid fa-sort"></i></th>
								<th onclick="sortTable('sortable', 2)">Tipo <i class="fa-solid fa-sort"></i></th>
								<th onclick="sortTable('sortable', 3)">Año <i class="fa-solid fa-sort"></i></th>

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

			<p>Trabajo Fin de Grado 2022 Universidad de Córdoba - OrdClass</p>

			<div class="terms">
				<a href="#">Contacto</a> <a href="AboutUs.jsp">Sobre nosotros</a> <a href="#">Términos
					legales</a>
			</div>



			</footer>

		</div>
	</div>
	</div>
</body>
</html>