<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="es.uco.ordclass.business.Log"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>

<title>OrdClass</title>
</head>
<body>

<%
	if(session == null){
		response.sendRedirect("../loadData");
	}

	ArrayList<Log> logs = (ArrayList<Log>) session.getAttribute("logs");

	Date today = new Date(System.currentTimeMillis());
	int milisecondsByDay = 86400000;
	int days = 0;
	

%>

	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="#" style="color: #219ebc">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
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
			<div class="header">

				<img src="Images/logo.png">

				<div class="title">
					<h1>OrdClass</h1>

					<div class="box">
						<h2>An�lisis de datos de Clasificaci�n Ordinal</h2>
					</div>

					<div class="button">
						<a href="#section-2">Saber mas</a>
					</div>
				</div>
			</div>



			<div class="home-content">
				<div class="section-1">
				<div class="noticias">
					<h3>Noticias</h3>
					<div id="carouselExampleCaptions" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<a href="https://es.wikipedia.org/wiki/Inteligencia_artificial"><img src="Images/news/new1.jpg" class="d-block w-100" alt="..."></a>
								<div class="carousel-caption d-none d-md-block">
									<h5>Qu� es la Inteligencia Artificial</h5>
									<p>Aprende conceptos b�sicos sobre Inteligencia Artificial</p>
								</div>
							</div>
							<div class="carousel-item">
								<a href="https://www.xataka.com/aplicaciones/google-quiere-llevar-su-autocorrector-a-otro-nivel-asi-su-tecnologia-para-corregir-nuestra-gramatica"><img src="Images/news/new2.jpeg" class="d-block w-100" alt="..."></a>
								<div class="carousel-caption d-none d-md-block">
									<h5>Google quiere llevar su autocorrector a otro nivel</h5>
									<p>El autocorrector lleva con nosotros desde hace a�os, mostrando sugerencias o sustituyendo aquellas palabras que hemos escrito mal. Con la llegada de los Google Pixel 6 y el nuevo motor neuronal de su chip tensor, Google quiere llevar esta autocorrecci�n a�n m�s all�, analizando la propia gram�tica de las frases que escribimos.</p>
								</div>
							</div>
							<div class="carousel-item">
								<a href="https://www.questionpro.com/blog/es/escala-ordinal/"><img src="Images/news/new3.jpg" class="d-block w-100" alt="..."></a>
								<div class="carousel-caption d-none d-md-block">
									<h5>Escala ordinal: Ejemplos y ventajas de su uso</h5>
									<p>La escala ordinal es uno de los niveles de medici�n que nos otorga la clasificaci�n y el orden de los datos sin que realmente se establezca el grado de variaci�n entre ellos.</p>
								</div>
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
				
				

				<div class="novedades">
					<h3>Novedades</h3>
					<div class="news">
						<table>
						<tbody>
						
							<%
								for(int i=0; i<logs.size(); i++){
									%>
									<tr>
										<td><%=logs.get(i).getDate()%></td>
										<td><%=logs.get(i).getInfo() %></td>
										<%
											days =(int) (today.getTime() - logs.get(i).getDate().getTime()) / milisecondsByDay;
											if(days < 7){
												%>
												<td><span>new</span></td>
											<%
											}
										%>
										
									</tr>
									<%
								}
							%>
						
						
						</tbody>
					</table>
					</div>
					
				</div>
				
				</div>
				
				
				<div class="section-2" id="section-2">
					<h3>Qu� es la Clasificaci�n Ordinal</h3>
					<p>La clasificaci�n ordinal es un tipo de an�lisis que se utiliza para predecir una variable ordinal, en este caso la 
					variable dependiente de un determinado problema. Dicha predicci�n se realizar� en funci�n 
					de un conjunto de variables independientes o de entrada. En t�rminos matem�ticos, los problemas de 
					clasificaci�n ordinal consisten en predecir un valor y sobre un vector de entrada x,
					 donde x es un espacio k-dimensional e  y  es una etiqueta 
					 perteneciente a Q diferentes niveles. Adem�s, existe una relaci�n de orden entre las clases de Y, 
					 de forma que se cumple la restricci�n C1C2 ...Cq , donde  representa la relaci�n de orden.</p>
					 
					 
					 <p>La clasificaci�n ordinal puede realizarse aplicando diferentes m�todos y algoritmos. Cada m�todo presenta 
					 una serie de ventajas y desventajas respecto a los dem�s, dependiendo de las caracter�sticas que estos presenten 
					 y de la forma de realizar la clasificaci�n. Por ejemplo, el m�todo Proportional Odds Model [2] es una de las mejores
					  opciones si se prioriza el coste computacional. En la Figura 2.1 se muestra
					  una taxonom�a de las principales t�cnicas de clasificaci�n ordinal, extra�da del art�culo Ordinal Regression Methods: Survey and Experimental Study [3].</p>
					  
					  <img src="Images/taxonomy.png"
					  title="Taxonom�a de los m�todos de Clasificaci�n Ordinal">
					  
					  <p>Este tipo de problema es cada vez m�s frecuente, adem�s de que dicho campo ha evolucionado mucho en 
					  la �ltima d�cada. Actualmente, no hay ninguna aplicaci�n web que ayude a analizar los conjuntos de datos 
					  disponibles para este tipo de problema y muestre los mejores m�todos y resultados en funci�n del conjunto de datos 
					  que se est� tratando. Por otra parte, existen softwares donde se puede realizar la clasificaci�n ordinal de diferentes 
					  conjuntos de datos, pero estos requieren un alto conocimiento de inform�tica y matem�ticas. Por ello, una de las principales consideraciones a tener en cuenta es simplificar 
					  el procedimiento de la clasificaci�n lo m�ximo posible, as� como proporcionar una herramienta potente para los investigadores de este.</p>
					  
				</div>
				
				<div class="section-3">
					<h3>Qu� es OrdClass</h3>
					
					<img src="Images/logo.png"
					title="Logotipo de OrdClass">
					<p>Los problemas de clasificaci�n ordinal comentados anterioremente son cada vez m�s frecuentes, adem�s de que dicho campo ha evolucionado mucho en la �ltima d�cada. 
					Actualmente, no hay ninguna aplicaci�n web que ayude a analizar los conjuntos de datos disponibles para este tipo de 
					problema y muestre los mejores m�todos y resultados en funci�n del conjunto de datos que se est� tratando. Por otra parte,
					 existen softwares donde se puede realizar la clasificaci�n ordinal de diferentes conjuntos de datos, pero estos requieren un 
					 alto conocimiento de inform�tica y matem�ticas. Por ello, una de las principales consideraciones a tener en cuenta es simplificar 
					 el procedimiento de la clasificaci�n lo m�ximo posible, as� como proporcionar una herramienta potente para los investigadores de este.</p>
					 
					 <p>Al ser un problema bastante frecuentado, sobre todo en tecnolog�as relacionadas con la titulaci�n, y las alternativas que hay requieren 
					 de un nivel de conocimiento bastante alto, se propone este proyecto, una aplicaci�n web intuitiva que pueda ser utilizada tanto por expertos 
					 en el �rea (tendr�n conjuntos de datos ordinales dispuestos para probar las nuevas metodolog�as desarrolladas por ellos, tendr�n los resultados
					  obtenidos en la actualidad por los m�todos del estado del arte, etc), como por principiantes, cuyo principal inter�s consiste en poder lanzar algunos 
					  de los m�todos ya implementados sobre sus conjuntos de datos propios, permitiendo adem�s que puedan subir dichos conjuntos de datos a la aplicaci�n web. 
					  De esta forma, a estos �ltimos usuarios se les facilitar�a mucho la tarea al poder incluir documentaci�n suficiente y tutoriales con los que simplificar 
					  la tarea de ejecuci�n de m�todos posterior.</p>
					  
					  <p>La aplicaci�n web tendr� funcionalidades como importar datos para su posterior an�lisis, una lista de los m�todos m�s utilizados para la clasificaci�n ordinal,
					   an�lisis de resultados, entre otras. Se incluir�n conjuntos de datos predefinidos, pero se podr�n cargar conjuntos de datos externos si el usuario as� lo desea, 
					   con la finalidad de incrementar tanto como sea posible el total de conjuntos de datos disponibles para la evaluaci�n de m�todos. </p>
					   
					   <p>Los conjuntos de datos predefinidos y los m�todos de clasificaci�n ordinal ser�n proporcionados por AYRNA, por lo que el proyecto se centrar� en 
					   la construcci�n y dise�o de la aplicaci�n web. </p>
					  
				</div>
			</div>
			
			<footer class="footer">
				<div class="buttons">
					<a href="https://twitter.com/?logout=1645563425361"><i class="fa-brands fa-twitter"></i></a>
					<a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a>
					<a href="https://www.google.com/intl/es/gmail/about/"><i class="fa-solid fa-envelope"></i></a>
					<a href="#"><i class="fa-solid fa-phone"></i></a>
				</div>
				
				<p>Trabajo Fin de Grado 2022 Universidad de C�rdoba - OrdClass</p>
				
				<div class="terms">
					<a href="#">Contacto</a>

					<a href="#">Sobre nosotros</a>

					<a href="#">T�rminos legales</a>
				</div>
			
			
				
			</footer>
		</div>
		
		
		
	</div>


</body>
</html>