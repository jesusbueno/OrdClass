<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<script src="js/showElements.js" type="text/javascript"></script>

<title>Algorithms</title>


</head>
<body>
<%
	Algorithm algorithm = (Algorithm) session.getAttribute("algorithm");

	if(algorithm == null){
		response.sendRedirect("../loadData");
		return;
	}
%>

	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp" style="color: #219ebc">Algorithms</a></li>
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
			<h3><%=algorithm.getName() %></h3>
			
			<div class="nal-content">
				
				<div class="info">
					<div class="table-1">
						<table>
						<tr>
							<th>Acronym</th>
							<td><%=algorithm.getAcronym() %></td>
							
							
							
						</tr>
						
						<tr>
							<th>Type</th>
							<td><%=algorithm.getType() %></td>
						</tr>
						<tr>
							<th>Year</th>
							<td><%=algorithm.getYear() %></td>
						</tr>
						<tr>
							<th>Publication</th>
							<td><%=algorithm.getPublication() %></td>
						</tr>
					</table>
					</div>
					
					<div class="table-2">
						<table>
						<tr>
							<th>Description</th>
							<td><%=algorithm.getDescription() %></td>
							
						</tr>
						
						<tr>
							<th>Source Code</th>
							<td><%=algorithm.getSource_code() %></td>
						</tr>
						
						
					</table>
					</div>	
				</div>
				
				<div class="code-types">
					<div class="buttons">
						<ul>
							<li>
								<div class="card" id="buttonML" onclick="showMLCode()" style="background: var(--secondary-color)">
									<div class="box">
										<p>MATLAB</p>
										<img src="icons/matlab.png">
									</div>
								</div>
							</li>
							
							<li>
								<div class="card" id="buttonPy" onclick="showPyCode()">
									<div class="box">
										<p>Python</p>
										<i class="fa-brands fa-python"></i>
									</div>
								</div>
							</li>
						</ul>
					
					</div>
					
					<div class="code">
						<div id="matlab">
							<script src="<%=algorithm.getMl_code() %>"></script>
							
							<div class="link">
								<table>
									<tr>
										<th>Link</th>
										<td><a href="<%=algorithm.getLink() %>"><%=algorithm.getLink() %></td>
									</tr>
								</table>
							</div>
						</div>
						
						<div id="python" style="display: none">
							<script src="<%=algorithm.getPy_code() %>"></script>
							
							<div class="link">
								<table>
									<tr>
										<th>Link</th>
										<td><a href="<%=algorithm.getLink() %>"><%=algorithm.getLink() %></td>
									</tr>
								</table>
							</div>
						</div>
						
						
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