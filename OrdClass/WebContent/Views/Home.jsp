<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="es.uco.ordclass.business.Log"%>
<%@ page import="es.uco.ordclass.business.New"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">

<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>

<title>OrdClass</title>

<script>
	var cont = 0;
	localStorage.setItem("contador", cont);
</script>
</head>
<body>

<%
	


	ArrayList<Log> logs = (ArrayList<Log>) session.getAttribute("logs");
	ArrayList<New> news = (ArrayList<New>) session.getAttribute("news");

	if(logs == null){
		System.out.println(logs);
		response.sendRedirect("../loadData");
		return;
	}
	
	Date today = new Date(System.currentTimeMillis());
	int milisecondsByDay = 86400000;
	int days = 0;
	

%>

	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="#" style="color: #219ebc">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp">Algorithms</a></li>
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
			<div class="header">

				<img src="Images/logo.png">

				<div class="title">
					<h1>OrdClass</h1>

					<div class="box">
						<h2>Ordinal Classification data analysis</h2>
					</div>

					<div class="button">
						<a href="#section-2">More about</a>
					</div>
				</div>
			</div>



			<div class="home-content">
				<div class="section-1">
				<div class="noticias">
					<h3>News</h3>
					<div id="carouselExampleCaptions" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-indicators">
						
							<%
							for(int i=0; i<news.size(); i++){
							%>	
								<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to=<%=i %> class="active" aria-current="true" aria-label="Slide "<%=i+1 %>></button>
								
							<%	
							}
							
							%>
						</div>
						
						<div class="carousel-inner">
							<div class="carousel-item active">
								<a href=<%=news.get(0).getLink() %>><img src=<%=news.get(0).getImage() %> class="d-block w-100" alt="..."></a>
								<div class="carousel-caption d-none d-md-block">
									<h5><%=news.get(0).getName() %></h5>
									<p><%=news.get(0).getDescription() %></p>
								</div>
							</div>
							
							<%
							if(news.size() > 1){
							for(int i=1; i<news.size(); i++){
								%>
								<div class="carousel-item">
									<a href=<%=news.get(i).getLink() %> ><img src=<%=news.get(i).getImage() %> class="d-block w-100" alt="..."></a>
									<div class="carousel-caption d-none d-md-block">
										<h5><%=news.get(i).getName() %></h5>
										<p><%=news.get(i).getDescription() %></p>
									</div>
								</div>
								<%
							}		
							}
							
							%>
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
					<h3>New features</h3>
					<div class="news">
						<table>
						<tbody>
						
							<%
								for(int i=0; i<logs.size(); i++){
									%>
									<tr onclick="window.location='../SearchLog?reference=<%=logs.get(i).getType()%>-<%=logs.get(i).getReference()%>'">
										<td><%=logs.get(i).getDate()%></td>
										<td><%=logs.get(i).getInfo() %></td>
										<%
											days =(int) (today.getTime() - logs.get(i).getDate().getTime()) / milisecondsByDay;
											if(days < 7){
												%>
												<td><span>new</span></td>
											<%
											}
											else{
												%>
												<td></td>
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
					<h3>What is Ordinal Classification?</h3>
					<p>Ordinal classification is a type of analysis used to predict an ordinal variable, in this case the dependent variable of a given problem. 
					dependent variable of a given problem. This prediction is made on the basis of a set of independent or input variables. 
					of a set of independent or input variables. In mathematical terms, ordinal 
					problems consist of predicting a y-value over an input vector x,
					 where x is a k-dimensional space and y is a label belonging to Q different levels. 
					 belonging to Q different levels. In addition, there is an ordering relation between the classes of y, 
					 so that the constraint C1C2 ...Cq is satisfied, where represents the ordering relation.</p>
					 
					 
					 <p>Ordinal classification can be performed by applying different methods and algorithms. Each method has 
					 a series of advantages and disadvantages with respect to the others, depending on the characteristics that they present 
					 and the way in which the classification is performed. For example, the Proportional Odds Model [2] is one of the best options if computational cost is a priority.
					  options if computational cost is a priority. Figure 2.1 shows
					  a taxonomy of the main ordinal classification techniques, extracted from the article Ordinal Regression Methods: Survey and Experimental Study.</p>
					  
					  <img src="Images/taxonomy.png"
					  title="Taxonomía de los métodos de Clasificación Ordinal">
					  
					  <p>This type of problem is becoming more and more frequent, and the field has evolved a lot in the last decade. 
					  the last decade. Currently, there is no web application that helps to analyse the available datasets for this type of problem and shows the best methods and results based on the dataset. 
					  available for this type of problem and shows the best methods and results depending on the dataset being treated. 
					  dataset being treated. On the other hand, there are softwares where the ordinal classification of different datasets can be performed, but these require a 
					  datasets, but these require a high knowledge of computer science and mathematics. Therefore, one of the main considerations to be taken into account is to simplify 
					  the classification procedure as much as possible, as well as to provide a powerful tool for classification researchers.</p>
					  
				</div>
				
				<div class="section-3">
					<h3>OrdClass project</h3>
					
					<img src="Images/logo.png"
					title="Logotipo de OrdClass">
					<p>The ordinal classification problems discussed above are becoming more and more frequent, and the field has evolved a lot in the last decade. 
					Currently, there is no web application that helps to analyse the available datasets for this type of problem and shows the best methods and results depending on the dataset being dealt with. 
					problem and shows the best methods and results depending on the dataset being dealt with. On the other hand,
					 there are softwares where ordinal classification of different datasets can be performed, but these require a high knowledge of computer science and mathematics. 
					 knowledge of computer science and mathematics. Therefore, one of the main considerations to be taken into account is to simplify 
					 the classification procedure as much as possible, as well as to provide a powerful tool for classification researchers.</p>
					 
					 <p>As this is a fairly common problem, especially in degree-related technologies, and the alternatives available require 
					 of a fairly high level of knowledge, this project proposes an intuitive web application that can be used both by experts in the field (they will have ordinal datasets available to test the new methodologies 
					 (they will have ordinal datasets ready to test the new methodologies developed by them, they will have the results currently obtained by the methods of the
					  currently obtained by the state-of-the-art methods, etc.), as well as by beginners, whose main interest is to be able to launch some of the methods already implemented on their 
					  of the methods already implemented on their own datasets, while allowing them to upload these datasets to the web application. 
					  In this way, the latter users would be greatly facilitated by being able to include sufficient documentation and tutorials to simplify the task of executing methods later on. 
					  the task of executing methods later on.</p>
					  
					  <p>The web application will have functionalities such as importing data for further analysis, a list of the most commonly used methods for ordinal classification,
					   analysis of results, among others. Predefined datasets will be included, but external datasets can be uploaded if the user wishes, 
					   in order to increase as much as possible the total number of datasets available for method evaluation. </p>
					   
					   <p>The predefined datasets and ordinal ranking methods will be provided by AYRNA, so the project will focus on 
					   the construction and design of the web application. </p>
					  
				</div>
				
				<div class="section-4">
					<h3>Do you have any problem or do you want to become an administrator?</h3>
					<p>If you have any problems, you can add an issue to one of our administrators, so that it will be pending review. Remember to make good use of this tool, as it can be very useful to improve our services and offer a quality website.</p>
					
					<p>On the other hand, if you want and feel qualified enough to be an administrator of the website, you can also state your details and reasons why you want to be an administrator. According to our policy, the review must be done by one of our administrators, and they will determine if you are sufficiently qualified. Once they approve your request, they will contact you via the email address you enter.</p>
					
					<div class="button">
						<a href="AddIssue.jsp">Add an issue</a>
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


</body>
</html>