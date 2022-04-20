<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/jquery-3.6.0.min.js" type="text/javascript"></script> 
<script src="js/LoadMAEcsv.js" type="text/javascript"></script>
<script src="js/LoadMZEcsv.js" type="text/javascript"></script> 
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/showElements.js" type="text/javascript"></script>

<title>Results</title>

</head>
<body>
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp">Algoritmos</a></li>
				<li><a href="#" style="color: #219ebc">Resultados</a></li>
				<li><a href="Researches.jsp">Investigadores</a></li>
				<li><a href="Libraries.jsp">Librer�as</a></li>
				<li><a href="Bibliography.jsp">Bibliograf�a</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>

	<div class="home">
		<div class="margins">
			<div class="result-content">
				<h3>Resultados</h3>
				<p>Se puede encontrar los resultados de distintos algoritmos de
					clasificaci�n ordinal en distintos conjuntos de datos aplicando dos
					m�tricas distintas.</p>

				<div class="options">
					<div class="card" id="buttonMAE" onclick="showMAE()" style="background: var(--secondary-color)">
						<div class="box">
							<p>MAE</p>
							<i class="fa-solid fa-code-branch"></i>
						</div>
					</div>

					<div class="card" id="buttonMZE" onclick="showMZE()">
						<div class="box">
							<p>MZE</p>
							<i class="fa-solid fa-code-branch"></i>
						</div>
					</div>
				</div>

				<div class="tables" id="mze" style="display:none">
					<div class="desc">
						<p>M�trica MZE</p>
					
						<div class="button">
							<a href="sources/mze.csv" download="mze.csv">Descargar (.csv)</a>
						</div>
					</div>
					
					
					<div class="table-mze" id="table-mze"></div>

				</div>
				
				<div class="tables" id="mae">
					<div class="desc">
						<p>M�trica MAE</p>
					
						<div class="button">
							<a href="sources/mae.csv" download="mae.csv">Descargar (.csv)</a>
						</div>
					</div>
					
					<div class="table-mae" id="table-mae"></div>

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