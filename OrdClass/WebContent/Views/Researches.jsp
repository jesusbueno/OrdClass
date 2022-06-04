<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Researcher"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>

<title>Researchers</title>
</head>
<body>

<%
ArrayList<Researcher> researches = (ArrayList<Researcher>) session.getAttribute("researches");

if(researches == null){
	response.sendRedirect("../loadData");
	return;
}
%>
	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp" >Algorithms</a></li>
				<li><a href="Results.jsp">Results</a></li>
				<li><a href="Researches.jsp" style="color: #219ebc">Researchers</a></li>
				<li><a href="Libraries.jsp">Libraries</a></li>
				<li><a href="Bibliography.jsp">Bibliography</a></li>
				<li><a href="AboutUs.jsp">About Us</a></li>
			</ul>
		</div>
	</div>

	<div class="home">
		<div class="margins">
			<div class="r-content">
				<h3>Researchers</h3>
				<p>This section includes the AYRNA researchers involved in the information displayed in OrdClass.</p>
				
				<div class="r-container">
					
					<%for(int i=0; i<researches.size(); i++){
					%>
						<div class="r-card">
						<a href="../SearchResearcherInfo?id=<%=researches.get(i).getId() %>">
						<div class="profile">
							<img src=<%=researches.get(i).getImage() %>>
							<div class="name"><p><%=researches.get(i).getSurname()%>, <%=researches.get(i).getName()%></p></div>
							<div class="institution"><p><%=researches.get(i).getInstitution() %></p></div>
							<div class="country"><p><%=researches.get(i).getCountry() %></p></div>
						</div>
						</a>
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