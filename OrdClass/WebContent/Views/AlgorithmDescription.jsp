<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="https://kit.fontawesome.com/e289be1c63.js"
	crossorigin="anonymous"></script>

<title>Algoritmos</title>


</head>
<body>
	<div class="menu">
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
			<h3>Nombre algoritmo</h3>
			
			<div class="nal-content">
				
				<div class="info">
					<div class="table-1">
						<table>
						<tr>
							<th>Acronym</th>
							<td>TSF</td>
							
							
							
						</tr>
						
						<tr>
							<th>Type</th>
							<td>Intervals</td>
						</tr>
						<tr>
							<th>Year</th>
							<td>2013</td>
						</tr>
						<tr>
							<th>Publication</th>
							<td>InfoScience</td>
						</tr>
					</table>
					</div>
					
					<div class="table-2">
						<table>
						<tr>
							<th>Description</th>
							<td>Deng  overcome the problem of the huge interval feature space by employing a random forest approach, using summary statistics of each interval as features. Training a single tree involves selecting m--v random intervals, generating the mean, standard deviation and slope of the random intervals for every series then creating and training a tree on the resulting 3m--v features. Classification is by a majority vote of all the trees in the ensemble. The classification tree has two bespoke characteristics. Firstly, rather than evaluate all possible split points to find the best information gain, a fixed number of evaluation points is pre-defined. We assume this is an expedient to make the classifier faster, as it removes the need to sort the cases by each attribute value. Secondly, a refined splitting criteria to choose between features with equal information gain is introduced. This is defined as the distance between the splitting margin and the closest case. The intuition behind the idea is that if two splits have equal entropy gain, then the split that is furthest from the nearest case should be preferred. This measure would have no value if all possible intervals were evaluated because by definition the split points are taken as equi-distant between cases. We experimented with including these two features, but found the effect on accuracy was, if anything, negative. We found the computational overhead of evaluating all split points acceptable, hence we had no need to include the margin based tie breaker. We used the built in Weka RandomTree classifier (which is the basis for the Weka RandomForest classifier) with default parameters. This means there is no limit to the depth of the tree nor a minimum number of cases per leaf node. A more formal description is given in Algorithm 6.</td>
							
							
						</tr>
						
						<tr>
							<th>Source Code</th>
							<td>Time Series Forest Code</td>
						</tr>
						
						<tr>
							<th>Link</th>
							<td>hola</td>
						</tr>
					</table>
					</div>	
				</div>
				
				<div class="code-types">
					<div class="buttons">
						<ul>
							<li>
								<div class="card">
									<div class="box">
										<p>MatLab</p>
										<i class="fa-solid fa-code"></i>
									</div>
								</div>
							</li>
							
							<li>
								<div class="card">
									<div class="box">
										<p>Python</p>
										<i class="fa-brands fa-python""></i>
									</div>
								</div>
							</li>
						</ul>
					
					</div>
					
					<div class="code">
						<script src="https://gist.github.com/jesusbueno/2ee9b88e4df66fc673e6a753e3ef4914.js"></script>
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