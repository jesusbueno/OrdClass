<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/SearchOnTables.js" type="text/javascript"></script>
<script src="js/showElements.js" type="text/javascript"></script>


<title>Bibliografía</title>
</head>

<body>
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp">Algoritmos</a></li>
				<li><a href="Results.jsp">Resultados</a></li>
				<li><a href="Researches.jsp">Investigadores</a></li>
				<li><a href="Libraries.jsp">Librerías</a></li>
				<li><a href="#" style="color: #219ebc">Bibliografía</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>


	<div class="home">
		<div class="margins">
		
			<div class="modal" id="modal" style="display: none">
				<div class="container">
					<div class="close">
						<a onclick="closeModal()"><i class="fa-solid fa-rectangle-xmark"></i></a>
					</div>
					
					<div class="page">
						<iframe id="iframe" src=""></iframe>
					</div>
					
				</div>
			</div>
			
			
			<div class="b-content">
				<h3>Bibliografía</h3>
				<p>A continuación se muestran todas las fuentes bibliográficas
					para la realización y obtención de datos de la aplicación web
					OrdClass.</p>

				<div class="searchs">
					<div class="input-field">
						<input id="searchTerm" type="text" placeholder="Palabra relacionada" name="word" onkeyup="doSearch()">
					</div>
					
					<div class="button">
						<a href="#">Buscar</a>
					</div>
				</div>
				
				
				<div class="b-table">
					<table id="sortable">
						<thead>
							<tr>
								<td>Author</td>
								<td>Title</td>
								<td>Year</td>
								<td>Book</td>
								<td>Volume</td>
								<td>Number</td>
								<td>Pages</td>

							</tr>
						</thead>
						<tbody>
							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>

							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>

							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>
							
							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>

							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>

							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>
							
							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>

							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>

							<tr onclick="showModal('A run length transformation for discriminating between auto regressive time series')">
								<td>Bagnall, A. & Janacek, G.</td>
								<td>A run length transformation for discriminating between
									auto regressive time series</td>
								<td>2014</td>
								<td>Journal of Classification</td>
								<td>31</td>
								<td>-</td>
								<td>154--178</td>
							</tr>

							<tr onclick="showModal('CID: an efficient complexity-invariant distance measure for time series')">
								<td>BBatista, G.; Keogh, E.; Tataw, O. & deSouza, V.</td>
								<td>CID: an efficient complexity-invariant distance measure
									for time series</td>
								<td>2014</td>
								<td>Data Mining and Knowledge Discovery</td>
								<td>28</td>
								<td>3</td>
								<td>634--669</td>
							</tr>
						</tbody>
					</table>
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

					<a href="#">Términos legales</a>
				</div>
				
				<p>AYRNA Research Group - University of Córdoba (Spain) - 2022</p>
			
			
				
			</footer>


			
		</div>

	</div>
</body>
</html>