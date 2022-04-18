/**
 * 
 */

function showMLCode() {	
	document.getElementById("matlab").style.display = ''; 
	document.getElementById("python").style.display = 'none';
	
	document.getElementById('buttonML').style.background = 'var(--secondary-color)';
	document.getElementById('buttonPy').style.background = 'var(--principal-color)';
}

function showPyCode() {	
	document.getElementById('matlab').style.display = 'none'; 
	document.getElementById('python').style.display = '';
	
	document.getElementById('buttonPy').style.background = 'var(--secondary-color)';
	document.getElementById('buttonML').style.background = 'var(--principal-color)'; 
}

function showMZE(){
	document.getElementById('mae').style.display = 'none'; 
	document.getElementById('mze').style.display = '';
	
	document.getElementById('buttonMZE').style.background = 'var(--secondary-color)';
	document.getElementById('buttonMAE').style.background = 'var(--principal-color)';
}

function showMAE(){
	document.getElementById('mae').style.display = ''; 
	document.getElementById('mze').style.display = 'none';
	
	document.getElementById('buttonMAE').style.background = 'var(--secondary-color)';
	document.getElementById('buttonMZE').style.background = 'var(--principal-color)';

}


function showModal(name){
	var part = name.split(' ').join('+');
	var link = "https://scholar.google.es/scholar?hl=es&as_sdt=0%2C5&q=" + part + "&btnG=";
	document.getElementById('iframe').src = link;
	document.getElementById('modal').style.display = '';
}


function closeModal(){
	document.getElementById('modal').style.display = 'none';
}