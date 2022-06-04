<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Library"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>

<title>Libraries</title>

</head>
<body>

<%
ArrayList<Library> libraries = (ArrayList<Library>) session.getAttribute("libraries");

if(libraries == null){
	response.sendRedirect("../loadData");
	return;
}
%>
	
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp" >Datasets</a></li>
				<li><a href="Algorithms.jsp">Algorithms</a></li>
				<li><a href="Results.jsp">Results</a></li>
				<li><a href="Researches.jsp">Researchers</a></li>
				<li><a href="#" style="color: #219ebc">Libraries</a></li>
				<li><a href="Bibliography.jsp">Bibliography</a></li>	
				<li><a href="AboutUs.jsp">About Us</a></li>
			</ul>
		</div>
	</div>
	
	<div class="home">
		<div class="margins">
			<div class="lib-content">
				<h3>Libraries</h3>
				<p>This section includes the libraries related to ordinal classification.</p>
				
				<div class="libs">
				
					<%
						for(int i = 0; i< libraries.size(); i++){
							%>
							<div class="l-card">

								<div class="box">
								

								
									<div class="name"><%=libraries.get(i).getName() %></div>
								
									<div class="author">
										<p>Author:</p>
										<p><%=libraries.get(i).getAuthor() %></p>
									</div>
								
									<div class="languaje">
										<p>Language:</p>
										<p><%=libraries.get(i).getLanguage() %></p>
									</div>
									
									<div class="botones">
										<a href=<%=libraries.get(i).getGithub_link() %>><i class="fa-brands fa-github"></i></a>
										
										<a href=<%=libraries.get(i).getDocumentation_link() %>><i class="fa-solid fa-book"></i></a>
	
									</div>
							</div>

						</div>
						<%
						}
					%>
					
					
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