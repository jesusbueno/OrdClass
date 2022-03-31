<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<script src="js/SortTables.js" type="text/javascript"></script>
<script src="js/SearchOnTables.js" type="text/javascript"></script>
<script src="js/Filters.js" type="text/javascript"></script>

<title>Datasets</title>

</head>
<body>

	<%
		ArrayList<Dataset> datasets = (ArrayList<Dataset>) session.getAttribute("datasets");
	
		if(datasets == null){
			response.sendRedirect("../loadData");
			return;
		}
		

	%>

	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="#" style="color: #219ebc">Datasets</a></li>
				<li><a href="Algorithms.jsp">Algoritmos</a></li>
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
			<div class="ds-content">
				<h3>Datasets</h3>
				<p>Conjuntos de bases de datos utilizadas para el an�lisis de
					clasificaci�n ordinal.</p>


				<div class="searchs">
					<div class="input-field">
						<input id="searchTerm" type="text" placeholder="Buscar Dataset" name="word" onkeyup="doSearch()">
					</div>

					<div class="button">
						<a onclick="showAllDatasets()">Reset</a>
					</div>
				</div>

				<div class="section-1">
					<div class="filters">
						<h5>Train Size</h5>
						<label class="container"><input type="radio" name="train" value="minus" onclick="filterByRanges(this)">Less than 100</label>
						<label class="container"><input type="radio" name="train" value="between" onclick="filterByRanges(this)">100 to 500</label>
						<label class="container"><input type="radio" name="train" value="mayor" onclick="filterByRanges(this)">Greather than 500</label>

						<h5>Test Size</h5>
						<label class="container"><input type="radio" name="test" value="minus" onclick="filterByRanges(this)">Less than 300</label>
						<label class="container"><input type="radio" name="test" value="between" onclick="filterByRanges(this)">300 to 1000</label>
						<label class="container"><input type="radio" name="test" value="mayor" onclick="filterByRanges(this)">Greather than 1000</label>

						<h5>Length</h5>
						<label class="container"><input type="radio" name="length" value="minus" onclick="filterByRanges(this)">Less than 300</label>
						<label class="container"><input type="radio" name="length" value="between" onclick="filterByRanges(this)">300 to 700</label>
						<label class="container"><input type="radio" name="length" value="mayor" onclick="filterByRanges(this)">Greather than 700</label>

						<h5>Classes</h5>
						<label class="container"><input type="radio" name="classes" value="minus" onclick="filterByRanges(this)">Less than 10</label>
						<label class="container"><input type="radio" name="classes" value="between" onclick="filterByRanges(this)">10 to 30</label>
						<label class="container"><input type="radio" name="classes" value="mayor" onclick="filterByRanges(this)">Greather than 30</label>

						<h5>Type</h5>
					
						<label class="container"><input type="radio" name="type" value="Device" onclick="filterType(this)">Device</label>
						<label class="container"><input type="radio" name="type" value="ECG" onclick="filterType(this)">ECG</label>
						<label class="container"><input type="radio" name="type" value="Image" onclick="filterType(this)">Image</label>
						<label class="container"><input type="radio" name="type" value="Motion" onclick="filterType(this)">Motion</label>
						<label class="container"><input type="radio" name="type" value="Sensor" onclick="filterType(this)">Sensor</label>
						<label class="container"><input type="radio" name="type" value="Simulated" onclick="filterType(this)">Simulated</label>
						<label class="container"><input type="radio" name="type" value="Spectro" onclick="filterType(this)">Spectro</label>
						
					</div>

					<div class="ds-table">
						<table id="sortable">
							<thead>
								<th>Dataset <i class="fa-solid fa-sort"></i></th>
								<th>Train Size <i class="fa-solid fa-sort"></i></th>
								<th>Test Size <i class="fa-solid fa-sort"></i></th>
								<th>Length <i class="fa-solid fa-sort"></i></th>
								<th>Classes <i class="fa-solid fa-sort"></i></th>
								<th>Type <i class="fa-solid fa-sort"></i></th>
							</thead>
							<tbody>
								<%
								for (int i = 0; i < datasets.size(); i++) {
							%>
							
							<tr onclick="window.location='../SearchDatasetInfo?id=<%=datasets.get(i).getId() %>'">
									
									<td><%=datasets.get(i).getName()%></td>
									<td><%=datasets.get(i).getTrain_size()%></td>
									<td><%=datasets.get(i).getTest_size()%></td>
									<td><%=datasets.get(i).getLength()%></td>
									<td><%=datasets.get(i).getClasses()%></td>
									<td><%=datasets.get(i).getType()%></td>
								
							</tr>
							
							<% } %>
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
				<a href="#">Contacto</a> <a href="AboutUs.jsp">Sobre nosotros</a> <a href="#">T�rminos
					legales</a>
			</div>



			</footer>
		</div>
	</div>
</body>
</html>