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
				<li><a href="Bibliography.jsp">Bibliografía</a></li>
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
						<h2>Análisis de datos de Clasificación Ordinal</h2>
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
									<h5>Qué es la Inteligencia Artificial</h5>
									<p>Aprende conceptos básicos sobre Inteligencia Artificial</p>
								</div>
							</div>
							<div class="carousel-item">
								<a href="https://www.xataka.com/aplicaciones/google-quiere-llevar-su-autocorrector-a-otro-nivel-asi-su-tecnologia-para-corregir-nuestra-gramatica"><img src="Images/news/new2.jpeg" class="d-block w-100" alt="..."></a>
								<div class="carousel-caption d-none d-md-block">
									<h5>Google quiere llevar su autocorrector a otro nivel</h5>
									<p>El autocorrector lleva con nosotros desde hace años, mostrando sugerencias o sustituyendo aquellas palabras que hemos escrito mal. Con la llegada de los Google Pixel 6 y el nuevo motor neuronal de su chip tensor, Google quiere llevar esta autocorrección aún más allá, analizando la propia gramática de las frases que escribimos.</p>
								</div>
							</div>
							<div class="carousel-item">
								<a href="https://www.questionpro.com/blog/es/escala-ordinal/"><img src="Images/news/new3.jpg" class="d-block w-100" alt="..."></a>
								<div class="carousel-caption d-none d-md-block">
									<h5>Escala ordinal: Ejemplos y ventajas de su uso</h5>
									<p>La escala ordinal es uno de los niveles de medición que nos otorga la clasificación y el orden de los datos sin que realmente se establezca el grado de variación entre ellos.</p>
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
					<h3>Qué es la Clasificación Ordinal</h3>
					<p>La clasificación ordinal es un tipo de análisis que se utiliza para predecir una variable ordinal, en este caso la 
					variable dependiente de un determinado problema. Dicha predicción se realizará en función 
					de un conjunto de variables independientes o de entrada. En términos matemáticos, los problemas de 
					clasificación ordinal consisten en predecir un valor y sobre un vector de entrada x,
					 donde x es un espacio k-dimensional e  y  es una etiqueta 
					 perteneciente a Q diferentes niveles. Además, existe una relación de orden entre las clases de Y, 
					 de forma que se cumple la restricción C1C2 ...Cq , donde  representa la relación de orden.</p>
					 
					 
					 <p>La clasificación ordinal puede realizarse aplicando diferentes métodos y algoritmos. Cada método presenta 
					 una serie de ventajas y desventajas respecto a los demás, dependiendo de las características que estos presenten 
					 y de la forma de realizar la clasificación. Por ejemplo, el método Proportional Odds Model [2] es una de las mejores
					  opciones si se prioriza el coste computacional. En la Figura 2.1 se muestra
					  una taxonomía de las principales técnicas de clasificación ordinal, extraída del artículo Ordinal Regression Methods: Survey and Experimental Study [3].</p>
					  
					  <img src="Images/taxonomy.png"
					  title="Taxonomía de los métodos de Clasificación Ordinal">
					  
					  <p>Este tipo de problema es cada vez más frecuente, además de que dicho campo ha evolucionado mucho en 
					  la última década. Actualmente, no hay ninguna aplicación web que ayude a analizar los conjuntos de datos 
					  disponibles para este tipo de problema y muestre los mejores métodos y resultados en función del conjunto de datos 
					  que se esté tratando. Por otra parte, existen softwares donde se puede realizar la clasificación ordinal de diferentes 
					  conjuntos de datos, pero estos requieren un alto conocimiento de informática y matemáticas. Por ello, una de las principales consideraciones a tener en cuenta es simplificar 
					  el procedimiento de la clasificación lo máximo posible, así como proporcionar una herramienta potente para los investigadores de este.</p>
					  
				</div>
				
				<div class="section-3">
					<h3>Qué es OrdClass</h3>
					
					<img src="Images/logo.png"
					title="Logotipo de OrdClass">
					<p>Los problemas de clasificación ordinal comentados anterioremente son cada vez más frecuentes, además de que dicho campo ha evolucionado mucho en la última década. 
					Actualmente, no hay ninguna aplicación web que ayude a analizar los conjuntos de datos disponibles para este tipo de 
					problema y muestre los mejores métodos y resultados en función del conjunto de datos que se esté tratando. Por otra parte,
					 existen softwares donde se puede realizar la clasificación ordinal de diferentes conjuntos de datos, pero estos requieren un 
					 alto conocimiento de informática y matemáticas. Por ello, una de las principales consideraciones a tener en cuenta es simplificar 
					 el procedimiento de la clasificación lo máximo posible, así como proporcionar una herramienta potente para los investigadores de este.</p>
					 
					 <p>Al ser un problema bastante frecuentado, sobre todo en tecnologías relacionadas con la titulación, y las alternativas que hay requieren 
					 de un nivel de conocimiento bastante alto, se propone este proyecto, una aplicación web intuitiva que pueda ser utilizada tanto por expertos 
					 en el área (tendrán conjuntos de datos ordinales dispuestos para probar las nuevas metodologías desarrolladas por ellos, tendrán los resultados
					  obtenidos en la actualidad por los métodos del estado del arte, etc), como por principiantes, cuyo principal interés consiste en poder lanzar algunos 
					  de los métodos ya implementados sobre sus conjuntos de datos propios, permitiendo además que puedan subir dichos conjuntos de datos a la aplicación web. 
					  De esta forma, a estos últimos usuarios se les facilitaría mucho la tarea al poder incluir documentación suficiente y tutoriales con los que simplificar 
					  la tarea de ejecución de métodos posterior.</p>
					  
					  <p>La aplicación web tendrá funcionalidades como importar datos para su posterior análisis, una lista de los métodos más utilizados para la clasificación ordinal,
					   análisis de resultados, entre otras. Se incluirán conjuntos de datos predefinidos, pero se podrán cargar conjuntos de datos externos si el usuario así lo desea, 
					   con la finalidad de incrementar tanto como sea posible el total de conjuntos de datos disponibles para la evaluación de métodos. </p>
					   
					   <p>Los conjuntos de datos predefinidos y los métodos de clasificación ordinal serán proporcionados por AYRNA, por lo que el proyecto se centrará en 
					   la construcción y diseño de la aplicación web. </p>
					  
				</div>
			</div>
			
			<footer class="footer">
				<div class="buttons">
					<a href="https://twitter.com/?logout=1645563425361"><i class="fa-brands fa-twitter"></i></a>
					<a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a>
					<a href="https://www.google.com/intl/es/gmail/about/"><i class="fa-solid fa-envelope"></i></a>
					<a href="#"><i class="fa-solid fa-phone"></i></a>
				</div>
				
				<p>Trabajo Fin de Grado 2022 Universidad de Córdoba - OrdClass</p>
				
				<div class="terms">
					<a href="#">Contacto</a>

					<a href="#">Sobre nosotros</a>

					<a href="#">Términos legales</a>
				</div>
			
			
				
			</footer>
		</div>
		
		
		
	</div>


</body>
</html>