<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="es.uco.ordclass.business.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/showElements.js" type="text/javascript"></script>
<script src="js/CheckValues.js" type="text/javascript"></script>
<title>Add Sources</title>
</head>
<body>

<%
	User user = (User) session.getAttribute("user");

	if(user == null){
		response.sendRedirect("../loadData");
		return;
	}

%>

	<div class="menu-admin">
		<div class="margins">
			<p><i class="fa-solid fa-lock"></i> Admin Mode</p>
			<ul class="menu-a">
				<li><a href="#" style="color: #219ebc">Add content</a></li>
				<li><a href="DeleteSources.jsp">Delete content</a></li>
				<li><a href="ModifySources.jsp">Modify content</a></li>
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
				<h3>A�adir contenido</h3>
				<p>Selecciona el tipo de dato que deseas a�adir y rellena los campos correspondientes.</p>
				<form name="form" action="/OrdClass/AddContent" method="post" onsubmit="return checkAdds()">
				
				
				<div class="section-1">
					<div class="filters">
						<h5>Tipo</h5>
						<label class="container"><input type="radio" name="type" value="algorithm" checked="true" onclick="showAlgorithm()">Algoritmo</label><br>
						<label class="container"><input type="radio" name="type"  value="dataset" onclick="showDataset()">Dataset</label><br>
						<label class="container"><input type="radio" name="type"  value="researcher" onclick="showResearcher()">Researcher</label><br>
						<label class="container"><input type="radio" name="type"  value="libraries" onclick="showLibraries()">Libraries</label><br>
						<label class="container"><input type="radio" name="type" value="bibliography" onclick="showBibliography()">Bibliography</label><br>
						<label class="container"><input type="radio" name="type"  value="news" onclick="showNews()">News</label><br>
					</div>
					
					<div class="right">
					
						<div class="algoritmo" id="algoritmo">
							<h5>Nuevo Algoritmo</h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="al-acronym" placeholder="Acronym">
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="al-name" placeholder="Name">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-type" placeholder="Type">
								</div>
								
								<div class="input-field-2">
									<textarea placeholder="Descripci�n" name="al-description"></textarea>
								</div>
							
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="number" id="tipo2" name="al-year" placeholder="Year" min="1990" max="2022">
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="al-publication" placeholder="Publication">
								</div>
							
								
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-sourcecode" placeholder="Source Code">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-link" placeholder="Link">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-matlab" placeholder="MATLAB Code">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="al-python" placeholder="Python Code">
								</div>
							</div>
								
							
								
							</div>
							
											
						</div>
						
						
						<div class="dataset" id="dataset" style="display:none">
							<h5>Nuevo Dataset</h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-name" placeholder="Name">
								</div>
						
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-trainsize" placeholder="Train Size" min="0">
								</div>
							
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-testsize" placeholder="Test Size" min="0">
								</div>
								
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-length" placeholder="Length" min ="0">
								</div>
								
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-classes" placeholder="Classes" min="0">
								</div>
								
								<div class="input-field-2">
									<textarea placeholder="Descripci�n" name="ds-description"></textarea>
								</div>
							
								
							</div>
							
							<div class="column">
							
								
							
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-type" placeholder="Type">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-bestalgorithm" placeholder="Best Algorithm">
								</div>
							
								<div class="input-field">
									<input type="number" id="tipo2" name="ds-bestaccuracy" placeholder="Best Accurary" min="0" max="100">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-images" placeholder="Images">
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-download" placeholder="Download link">
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-donor" placeholder="Donor">
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="ds-datasource" placeholder="Data Source">
								</div>
							</div>
								
							
								
							</div>
							
											
						</div>
						
						
						
						<div class="researcher" id="researcher" style="display:none">
							<h5>Nuevo Investigador</h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="r-name" placeholder="Name">
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="r-surname" placeholder="Surname">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-institution" placeholder="Institution">
								</div>
								
								<div class="input-field-2">
									<textarea placeholder="Descripci�n" name="r-description"></textarea>
								</div>
							
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-country" placeholder="Country">
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="r-profession" placeholder="Profession">
								</div>
							
								
							
								<div class="input-field">
									<input type="number" id="tipo2" name="r-phone" placeholder="Phone" min="0" max="999999999">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-links" placeholder="Links">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-email" placeholder="Email">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="r-image" placeholder="Image link">
								</div>
							</div>
								
							
								
							</div>
							
											
						</div>
						
						<div class="library" id="library" style="display:none">
							<h5>Nueva Librer�a</h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="l-name" placeholder="Name">
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="l-author" placeholder="Author">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="l-language" placeholder="Language">
								</div>
								
							
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="text" id="tipo2" name="l-github" placeholder="Github_Link">
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="l-documentation" placeholder="Documentation_link">
								</div>
							
							</div>
								
							
								
							</div>
							
											
						</div>
						
						
						<div class="bibliografia" id="bibliografia" style="display:none">
							<h5>Nueva Fuente bibliogr�fica</h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="b-author" placeholder="Autor">
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="b-title" placeholder="Titulo">
								</div>
							
								<div class="input-field">
									<input type="number" id="tipo2" name="b-year" placeholder="A�o" min="1900" max="2022">
								</div>
								
								<div class="input-field">
									<input type="text" id="tipo2" name="b-book" placeholder="Libro">
								</div>
				
								
							</div>
							
							<div class="column">
							
								
								
								<div class="input-field">
									<input type="number" id="tipo2" name="b-volume" placeholder="Volumen" min="0">
								</div>
							
								
							
								<div class="input-field">
									<input type="number" id="tipo2" name="b-number" placeholder="N�mero" min="0">
								</div>
							
								<div class="input-field">
									<input type="text" id="tipo2" name="b-pages" placeholder="P�ginas">
								</div>
							
							</div>
								
							
								
							</div>
							
											
						</div>
						
						
						<div class="new" id="new" style="display:none">
							<h5>Nueva Noticia</h5>
							
							<div class="inputs">
							
							<div class="column">
								<div class="input-field">
									<input type="text" id="tipo2" name="n-name" placeholder="Name">
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="n-description" placeholder="Description">
								</div>
							
				
								
							</div>
							
							<div class="column">
							
								<div class="input-field">
									<input type="text" id="tipo2" name="n-link" placeholder="Link">
								</div>
						
								<div class="input-field">
									<input type="text" id="tipo2" name="n-image" placeholder="Image Link">
								</div>
							</div>					
							</div>
					
						</div>
						
						<div class="alert alert-danger" role="alert" style="width: 90%; height: 40px; padding: 7px 0px 0px 20px; margin-left: auto; margin-right: auto; margin-top: 20px; display: none" id="empty">
  							Debe seleccionar al menos un elemento.
						</div>
						
						<input type="submit" name="action" value="Add" class="button">
						
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
					
					<a href="mailto:dguijo@uco.es">Contacto</a>

					<a href="AboutUs.jsp">Sobre nosotros</a>

					<a href="#">T�rminos legales</a>
				</div>
				
				<p>AYRNA Research Group - University of C�rdoba (Spain) - 2022</p>
			
			
				
			</footer>
		</div>
	</div>
</body>
</html>