var cont = 0;


/*Comprobaciones login */
function checkLogin(){
	
	var email = document.form.email.value;
	var password = document.form.password.value;

	if(email==null || email==""){
		document.getElementById('empty').style.display = '';
		alert("El campo email no puede estar en blanco"); 
		return false;
	}
	
	else if(password==null || password==""){
		document.getElementById('empty').style.display = '';
		return false;
	}
	
	return true;
}

function contador(){
	cont = cont + 1;
	alert("Hola");
	if(cont>0){
		document.getElementById('incorrect').style.display = '';
	}
}



/*Comprobaciones al eliminar contenido */
function checkDeletes(){
	
	var result = true;
	
	var type = document.getElementsByName('type');
	
	for(var i=0; i< type.length; i++){
		
		if (type[i].checked){
			result = checkDeletesAux(type[i].value);
		}
	}
	
	if(result == false){
		document.getElementById('empty').style.display = '';
	}
	
	return result;
}


function checkDeletesAux(type){
	
	var checks;

	if(type == "algorithm"){
		checks = document.getElementsByName("al-deletes");
	}
	
	if(type == "dataset"){
		checks = document.getElementsByName("ds-deletes");
	}

	if (type == "researcher"){
		checks = document.getElementsByName("r-deletes");
	}

	if (type == "libraries"){
		checks = document.getElementsByName("l-deletes");
	}

	if(type == "bibliography"){
		checks = document.getElementsByName("b-deletes");
	}

	if(type == "news"){
		checks = document.getElementsByName("n-deletes");
	}

	for(var i=0; i< checks.length; i++){
		
		if (checks[i].checked){
			return true;
		}
	}

	return false;

}


/*Comprobaciones añadir y modificar contenido */

function checkAdds(){
	
	var result = true;
	var type = document.getElementsByName('type');
	
	for(var i=0; i< type.length; i++){
		
		if (type[i].checked){
			result = checkAddAux(type[i].value);
		}
	}
	
	
	return result;
}


function checkAddAux(type){

	if(type == "algorithm"){
		
		var acronym = document.form.al-acronym.value;
		
		/*var description ="";
		var link = document.form.al-link.value;
		var ml_code = document.form.al-matlab.value;
		var name = document.form.al-name.value;
		var publication = document.form.al-publication.value;
		var py_code = document.form.al-python.value;
		var source_code = document.form.al-sourcecode.value;
		var altype = document.form.al-type.value;
		var year = document.form.al-year.value;*/
		
		alert(acronym);
		
		/*if(acronym == null || acronym == "" || description == null || description == "" || link == null || link == "" || ml_code == null || ml_code == "" || name == null || name == "" || publication == null || publication == "" || py_code == null || py_code == "" || source_code == null || source_code == "" || altype == null || altype == "" || year == null || year == ""){
			document.getElementById('empty').style.display = '';
			
			alert("Hey");
			return false;	
		}*/
		
		
	}
	
	if(type == "dataset"){

	}

	if (type == "researcher"){

	}

	if (type == "libraries"){

	}

	if(type == "bibliography"){

	}

	if(type == "news"){

	}


	return true;

}
