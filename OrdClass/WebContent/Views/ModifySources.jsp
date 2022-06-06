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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="Images/icon.png">
<script src="https://kit.fontawesome.com/e289be1c63.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="js/NavbarScroll.js" type="text/javascript"></script>
<script src="js/showElements.js" type="text/javascript"></script>
<script src="js/CheckValues.js" type="text/javascript"></script>
<title>Modify Content</title>
</head>
<body>

<%
	User user = (User) session.getAttribute("user");

	if(user == null){
		response.sendRedirect("../loadData");
		return;
	}
	
	/*Carga de contenidos*/
	
	ArrayList<Algorithm> algorithms = (ArrayList<Algorithm>) session.getAttribute("algorithms");
	ArrayList<Dataset> datasets = (ArrayList<Dataset>) session.getAttribute("datasets");
	ArrayList<Library> libraries = (ArrayList<Library>) session.getAttribute("libraries");
	ArrayList<Researcher> researches = (ArrayList<Researcher>) session.getAttribute("researches");
	ArrayList<Bibliography> bibliographies = (ArrayList<Bibliography>) session.getAttribute("bibliographies");
	ArrayList<New> news = (ArrayList<New>) session.getAttribute("news");

	if(algorithms == null || datasets == null || libraries == null || researches == null || bibliographies == null || news == null){
		response.sendRedirect("../loadData");
		return;
	}
	
%>


	<div class="menu-admin">
		<div class="margins">
			<p><i class="fa-solid fa-lock"></i> Admin Mode</p>
			<ul class="menu-a">
				<li><a href="AddSources.jsp">Add content</a></li>
				<li><a href="DeleteSources.jsp" >Delete content</a></li>
				<li><a href="#" style="color: #219ebc">Modify content</a></li>
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
				<p>Select the type of content you want to modify, and select the corresponding content.</p>
				
				
				<div class="section-1">
			
				<div class="filters">
						<h5>Type</h5>
						<label class="container"><input type="radio" name="type" value="algorithm" checked="true" onclick="showAlgorithm()">Algorithm</label><br>
						<label class="container"><input type="radio" name="type"  value="dataset" onclick="showDataset()">Dataset</label><br>
						<label class="container"><input type="radio" name="type"  value="researcher" onclick="showResearcher()">Researcher</label><br>
						<label class="container"><input type="radio" name="type"  value="libraries" onclick="showLibraries()">Library</label><br>
						<label class="container"><input type="radio" name="type" value="bibliography" onclick="showBibliography()">Bibliography</label><br>
						<label class="container"><input type="radio" name="type"  value="news" onclick="showNews()">News</label><br>
					</div>
					
				<div class="right">
				
					<div class="delete-al" id="algoritmo">
						<h5>Modify Algorithm</h5>
							<table>
								<thead>
									<th>Name</th>
									<th>Action</th>
								</thead>
								
								<tbody>
								
									<%for(int i = 0; i<algorithms.size(); i++){
										%>
										<tr>
											<td><%=algorithms.get(i).getName() %></td>
											<td onclick="window.location='../SearchContentInfo?id=<%=algorithms.get(i).getId() %>&type=algorithm'"><span>Modify</span></td>
										</tr>
										
										<%
									}
									%>
								</tbody>
							</table>
					</div>
					
					<div class="delete-ds" id="dataset" style="display:none">
						<h5>Modify Dataset</h5>
							<table>
								<thead>
									<th>Name</th>
									<th>Action</th>
								</thead>
								
								<tbody>
								
									<%for(int i = 0; i<datasets.size(); i++){
										%>
										<tr>
											<td><%=datasets.get(i).getName() %></td>
											<td onclick="window.location='../SearchContentInfo?id=<%=datasets.get(i).getId() %>&type=dataset'"><span>Modify</span></td>
										</tr>
										
										<%
									}
									%>
								</tbody>
							</table>
					</div>
					
					<div class="delete-rs" id="researcher" style="display:none">
						<h5>Modify Researcher</h5>
							<table>
								<thead>
									<th>Name</th>
									<th>Action</th>
								</thead>
								
								<tbody>
								
									<%for(int i = 0; i<researches.size(); i++){
										%>
										<tr>
											<td><%=researches.get(i).getName() %> <%=researches.get(i).getSurname() %></td>
											<td onclick="window.location='../SearchContentInfo?id=<%=researches.get(i).getId() %>&type=researcher'"><span>Modify</span></td>
										</tr>
										
										<%
									}
									%>
								</tbody>
							</table>
					</div>
					
					
					<div class="library" id="library" style="display:none">
						<h5>Modify Library</h5>
							<table>
								<thead>
									<th>Name</th>
									<th>Modify</th>
								</thead>
								
								<tbody>
								
									<%for(int i = 0; i<libraries.size(); i++){
										%>
										<tr>
											<td><%=libraries.get(i).getName() %></td>
											<td onclick="window.location='../SearchContentInfo?id=<%=libraries.get(i).getId() %>&type=library'"><span>Modify</span></td>
										</tr>
										
										<%
									}
									%>
								</tbody>
							</table>
					</div>
					
					<div class="delete-b" id="bibliografia" style="display:none">
						<h5>Modify Bibliography</h5>
							<table>
								<thead>
									<th>Title</th>
									<th>Action</th>
								</thead>
								
								<tbody>
								
									<%for(int i = 0; i<bibliographies.size(); i++){
										%>
										<tr>
											<td><%=bibliographies.get(i).getTitle() %></td>
											<td onclick="window.location='../SearchContentInfo?id=<%=bibliographies.get(i).getId() %>&type=bibliography'"><span>Modify</span></td>
										</tr>
										
										<%
									}
									%>
								</tbody>
							</table>
					</div>
					
					<div class="delete-n" id="new" style="display:none">
						<h5>Modify News</h5>
							<table>
								<thead>
									<th>Name</th>
									<th>Action</th>
								</thead>
								
								<tbody>
								
									<%for(int i = 0; i<news.size(); i++){
										%>
										<tr>
											<td><%=news.get(i).getName() %></td>
											<td onclick="window.location='../SearchContentInfo?id=<%=news.get(i).getId() %>&type=new'"><span>Modify</span></td>
										</tr>
										
										<%
									}
									%>
								</tbody>
							</table>
					</div>
					
					<div class="alert alert-danger" role="alert" style="width: 90%; height: 40px; padding: 7px 0px 0px 20px; margin-left: auto; margin-right: auto; margin-top: 20px; display: none" id="empty">
  							You have to select at least one element.
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