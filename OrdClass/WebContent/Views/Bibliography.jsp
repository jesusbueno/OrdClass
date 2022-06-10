<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Bibliography"%>

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


<title>Bibliography</title>
</head>

<body>

<%
	ArrayList<Bibliography> bibliographies = (ArrayList<Bibliography>) session.getAttribute("bibliographies");

	if(bibliographies == null){
		response.sendRedirect("../loadData");
		return;
	}
%>

	<div class="menu" id="navbar">
		<div class="margins">
			<ul>
				<li><a href="../">Home</a></li>
				<li><a href="Datasets.jsp">Datasets</a></li>
				<li><a href="Algorithms.jsp">Algorithms</a></li>
				<li><a href="Results.jsp">Results</a></li>
				<li><a href="Researches.jsp">Researchers</a></li>
				<li><a href="Libraries.jsp">Libraries</a></li>
				<li><a href="#" style="color: #219ebc">Bibliography</a></li>
				<li><a href="AboutUs.jsp">About Us</a></li>
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
				<h3>Bibliography</h3>
				<p>This section includes all related bibliographic references on ordinal classification used on this website. Click to find out more.</p>

				<div class="searchs">
					<div class="input-field">
						<input id="searchTerm" type="text" placeholder="Key word" name="word" onkeyup="doSearch()">
					</div>
					
					<div class="button">
						<a href="#">Search</a>
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
						
							<%
								for(int i=0; i<bibliographies.size(); i++){
							%>
									<tr onclick="showModal('<%=bibliographies.get(i).getTitle() %>')">
										<td><%=bibliographies.get(i).getAuthor() %></td>
										<td><%=bibliographies.get(i).getTitle() %></td>
										<td><%=bibliographies.get(i).getYear() %></td>
										<td><%=bibliographies.get(i).getBook() %></td>
										<td><%=bibliographies.get(i).getVolume() %></td>
										<td><%=bibliographies.get(i).getNumber() %></td>
										<td><%=bibliographies.get(i).getPages() %></td>
									</tr>
							<%
								}	
							%>
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