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

<title>Algorithms</title>
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
				<li><a href="#" style="color: #219ebc">Algorithms</a></li>
				<li><a href="Results.jsp">Results</a></li>
				<li><a href="Researches.jsp">Researchers</a></li>
				<li><a href="Libraries.jsp">Libraries</a></li>
				<li><a href="Bibliography.jsp">Bibliography</a></li>
				<li><a href="AboutUs.jsp">About Us</a></li>
			</ul>
		</div>
	</div>


	<div class="home">
		<div class="margins">
			<div class="al-content">
				<h3>Algorithms</h3>
				<p>This section includes some ordinal ranking algorithms. If you want to know more about one of them, click on it.</p>

				<div class="searchs">
					<div class="input-field">
						<input id="searchTerm" type="text" placeholder="Search algorithm" name="word" onkeyup="doSearch()">
					</div>

					<div class="button">
						<a onclick="showAllAlgorithms()">Reset</a>
					</div>
				</div>

				<div class="section-1">
					<div class="filters">
						<h5>Type</h5>
						<label class="container"><input type="radio" name="type" value="Naïve approaches" onclick="filterAlgorithm(this)">Naïve approaches</label><br>
						<label class="container"><input type="radio" name="type" value="Ordinal binary descompositions" onclick="filterAlgorithm(this)">Ordinal binary descompositions</label><br>
						<label class="container"><input type="radio" name="type" value="Threshold models" onclick="filterAlgorithm(this)">Threshold models</label><br>
						<h5>Year</h5>
						<label class="container"><input type="radio" name="year" value="2007" onclick="filterAlgorithm(this)">2007</label><br>
						<label class="container"><input type="radio" name="year" value="2009" onclick="filterAlgorithm(this)">2009</label><br>
						<label class="container"><input type="radio" name="year" value="2010" onclick="filterAlgorithm(this)">2010</label>
					
					</div>

					<div class="al-table">
						<table class="sortable" id="sortable">
							<thead>
								<th onclick="sortTable('sortable', 0)" >Acronym <i class="fa-solid fa-sort"></i></th>
								<th onclick="sortTable('sortable', 1)">Algorithm <i class="fa-solid fa-sort"></i></th>
								<th onclick="sortTable('sortable', 2)">Type <i class="fa-solid fa-sort"></i></th>
								<th onclick="sortTable('sortable', 3)">Year <i class="fa-solid fa-sort"></i></th>

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
	</div>
</body>
</html>