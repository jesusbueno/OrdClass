<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="https://kit.fontawesome.com/e289be1c63.js"
	crossorigin="anonymous"></script>
<script src="jquery-3.6.0.min.js" type="text/javascript"></script> 
<script src="js/LoadCSV.js" type="text/javascript"></script> 
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
				<li><a href="Bibliography.jsp">Bibliografía</a></li>
				<li><a href="#">Foro</a></li>
				<li><a href="AboutUs.jsp">Sobre nosotros</a></li>
			</ul>
		</div>
	</div>

	<div class="home">
		<div class="margins">
			<div class="result-content">
				<h3>Resultados</h3>
				<p>Se puede encontrar los resultados de distintos algoritmos de
					clasificación ordinal en distintos conjuntos de datos aplicando dos
					métricas distintas.</p>

				<div class="options">
					<div class="card" onclick="showMAE()">
						<div class="box">
							<p>MAE</p>
							<i class="fa-solid fa-code-branch"></i>
						</div>
					</div>

					<div class="card" onclick="showMZE()">
						<div class="box">
							<p>MZE</p>
							<i class="fa-solid fa-code-branch"></i>
						</div>
					</div>
				</div>

				<div class="tables" id="mze" style="display:none">
					<div class="desc">
						<p>Métrica MZE</p>
					
						<div class="button">
							<a href="sources/mze.csv" download="mze.csv">Descargar (.csv)</a>
						</div>
					</div>
					
					
					<div class="table-1"></div>

				</div>
				
				<div class="tables" id="mae">
					<div class="desc">
						<p>Métrica MAE</p>
					
						<div class="button">
							<a href="sources/mze.csv" download="mze.csv">Descargar (.csv)</a>
						</div>
					</div>
					
					
					<div class="table-1"></div>

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