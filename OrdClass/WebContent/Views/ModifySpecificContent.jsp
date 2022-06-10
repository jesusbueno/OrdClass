<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="es.uco.ordclass.business.User"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="es.uco.ordclass.business.Algorithm"%>
<%@ page import="es.uco.ordclass.business.Dataset"%>
<%@ page import="es.uco.ordclass.business.Researcher"%>
<%@ page import="es.uco.ordclass.business.Bibliography"%>
<%@ page import="es.uco.ordclass.business.Library"%>
<%@ page import="es.uco.ordclass.business.New"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/showElements.js" type="text/javascript"></script>
<title>Modify Content</title>
</head>
<body>

<%
	User user = (User) session.getAttribute("user");

	if(user == null){
		response.sendRedirect("../loadData");
		return;
	}
	
	Algorithm algorithm = (Algorithm) session.getAttribute("algorithm");
	Dataset dataset = (Dataset) session.getAttribute("dataset");
	Researcher researcher = (Researcher) session.getAttribute("researcher");
	Library library = (Library) session.getAttribute("library");
	Bibliography bibliography = (Bibliography) session.getAttribute("bibliography");
	New new_ = (New) session.getAttribute("new");
	
	String type = (String) session.getAttribute("type");
	
	System.out.println(type);

%>

	<div class="menu-admin">
		<div class="margins">
			<p><i class="fa-solid fa-lock"></i> Admin Mode</p>
			<ul class="menu-a">
				<li><a href="AddSources.jsp" >Add content</a></li>
				<li><a href="DeleteSources.jsp">Delete content</a></li>
				<li><a href="ModifySources.jsp" style="color: #219ebc">Modify content</a></li>
				<li><a href="#"><i class="fa-solid fa-circle-user"></i> <%=user.getName() %></a>
					<ul>
						<li><a href="#">Configuration</a></li>
						<li><a href="../loadData">Exit</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="home">
		<div class="margins">
			<div class="add-content">
				<h3>Modify content</h3>
				<p>Complete the content fields.</p>
				<form name="form" action="/OrdClass/ModifyContent" method="post">
				
				
				<div class="section-2">
					<div class="right">
					
						<%
						if(type.equals("algorithm")){
						%>
							<div class="algoritmo" id="algoritmo">
							<h5><%=algorithm.getName() %></h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="al-acronym" placeholder="Acronym" value="<%=algorithm.getAcronym() %>"  >
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="al-name" placeholder="Name" value="<%=algorithm.getName() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-type" placeholder="Type" value="<%=algorithm.getType() %>" >
								</div>
								
								<div class="input-field-2">
									<textarea placeholder="Description" name="al-description" ><%=algorithm.getDescription()%></textarea>
								</div>
							
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="number" id="tipo2" name="al-year" placeholder="Year" min="1990" max="2022" value="<%=algorithm.getYear() %>" >
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="al-publication" placeholder="Publication" value="<%=algorithm.getPublication() %>" >
								</div>
							
								
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-sourcecode" placeholder="Source Code" value="<%=algorithm.getSource_code() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-link" placeholder="Link" value="<%=algorithm.getLink() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-matlab" placeholder="MATLAB Code" value="<%=algorithm.getMl_code() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-python" placeholder="Python Code" value="<%=algorithm.getPy_code() %>" >
								</div>
							</div>
							</div>		
						</div>
						
						
						<%
						}
						
						if(type.equals("dataset")){
						%>
							<div class="dataset" id="dataset">
							<h5><%=dataset.getName() %></h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-name" placeholder="Name" value="<%=dataset.getName() %>" >
								</div>
						
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-trainsize" placeholder="Train Size" min="0" value="<%=dataset.getTrain_size() %>" >
								</div>
							
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-testsize" placeholder="Test Size" min="0" value="<%=dataset.getTest_size() %>" >
								</div>
								
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-length" placeholder="Length" min ="0" value="<%=dataset.getLength() %>" >
								</div>
								
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-classes" placeholder="Classes" min="0" value="<%=dataset.getClasses() %>" >
								</div>
								
								<div class="input-field-2">
									<textarea placeholder="Description" name="ds-description" ><%=dataset.getDescription() %></textarea>
								</div>
							
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-type" placeholder="Type" value="<%=dataset.getType() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-bestalgorithm" placeholder="Best Algorithm" value="<%=dataset.getBest_algorithm() %>" >
								</div>
							
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-bestaccuracy" placeholder="Best Accurary" min="0" max="100" value="<%=dataset.getBest_accuracy() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-images" placeholder="Images" value="<%=dataset.getImages()%>" >
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-download" placeholder="Download link" value="<%=dataset.getDownload() %>" >
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-result" placeholder="Results link" value="<%=dataset.getResult() %>" >
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-donor" placeholder="Donor" value="<%=dataset.getDonor() %>" >
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-datasource" placeholder="Data Source" value="<%=dataset.getData_source() %>" >
								</div>
							</div>
								
							
								
							</div>
							
											
						</div>
							
							
						<%
						}
						
						if(type.equals("researcher")){
						%>
							<div class="researcher" id="researcher">
							<h5><%=researcher.getName() %></h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="r-name" placeholder="Name" value="<%=researcher.getName() %>" >
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="r-surname" placeholder="Surname" value="<%=researcher.getSurname() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-institution" placeholder="Institution" value="<%=researcher.getInstitution() %>" >
								</div>
								
								<div class="input-field-2">
									<textarea placeholder="Description" name="r-description" ><%=researcher.getDescription() %></textarea>
								</div>
							
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-country" placeholder="Country" value="<%=researcher.getCountry() %>" >
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="r-profession" placeholder="Profession" value="<%=researcher.getProfession() %>" >
								</div>
							
								
							
								<div class="input-field">
									<input type="number" id="tipo2" name="r-phone" placeholder="Phone" min="0" max="999999999" value="<%=researcher.getPhone() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-links" placeholder="Links" value="<%=researcher.getLink() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-email" placeholder="Email" value="<%=researcher.getEmail() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-image" placeholder="Image link" value="<%=researcher.getImage() %>" >
								</div>
							</div>
							
							</div>
							
											
						</div>
							
							
						<%
						}
						
						
						if(type.equals("library")){
						%>
							<div class="library" id="library">
							<h5><%=library.getName() %></h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="l-name" placeholder="Name" value="<%=library.getName() %>" >
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="l-author" placeholder="Author" value="<%=library.getAuthor() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="l-language" placeholder="Language" value="<%=library.getLanguage() %>" >
								</div>
								
							
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="text" id="tipo2" name="l-github" placeholder="Github_Link" value="<%=library.getGithub_link() %>" >
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="l-documentation" placeholder="Documentation_link" value="<%=library.getDocumentation_link() %>" >
								</div>
							
							</div>
								
							
								
							</div>
					
							</div>
							
							
						<%
						}
						
						if(type.equals("bibliography")){
						%>
							<div class="bibliografia" id="bibliografia">
							<h5>Modify Bibliography</h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="b-author" placeholder="Author" value="<%=bibliography.getAuthor() %>" >
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="b-title" placeholder="Title" value="<%=bibliography.getTitle() %>">
								</div>
							
								<div class="input-field">
									<input type="number" id="tipo2" name="b-year" placeholder="Year" min="1900" max="2022" value="<%=bibliography.getYear() %>" >
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="b-book" placeholder="Book" value="<%=bibliography.getBook() %>" >
								</div>
				
								
							</div>
							
							<div class="column">
							
								
								
								<div class="input-field">
									<input type="number" id="tipo2" name="b-volume" placeholder="Volume" min="0" value="<%=bibliography.getVolume() %>" >
								</div>
							
								
							
								<div class="input-field">
									<input type="number" id="tipo2" name="b-number" placeholder="Number" min="0" value="<%=bibliography.getNumber() %>" >
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="b-pages" placeholder="Pages" value="<%=bibliography.getPages() %>" >
								</div>
							
							</div>				
							</div>				
						</div>
							
							
						<%
						}
						
						if(type.equals("new")){
						%>
							<div class="new" id="new">
							<h5><%=new_.getName() %></h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="n-name" placeholder="Name" value="<%=new_.getName() %>" >
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="n-description" placeholder="Description" value="<%=new_.getDescription() %>" >
								</div>
							
				
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="text" id="tipo2" name="n-link" placeholder="Link" value="<%=new_.getLink() %>" >
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="n-image" placeholder="Image Link" value="<%=new_.getImage() %>" >
								</div>
							</div>					
							</div>
					
						</div>
							
							
						<%
						}
						
						%>
						
						<input type="submit" name="action" value="Modify" class="button">
						
					</div>
				</div>
				
				</form>
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