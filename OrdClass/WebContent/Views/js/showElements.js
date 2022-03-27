/**
 * 
 */

function showMLCode() {	
	document.getElementById("matlab").style.display = ''; 
	document.getElementById("python").style.display = 'none'; 
}

function showPyCode() {	
	document.getElementById('matlab').style.display = 'none'; 
	document.getElementById('python').style.display = ''; 
}

function showMZE(){
	document.getElementById('mae').style.display = 'none'; 
	document.getElementById('mze').style.display = ''; 
}

function showMAE(){
	document.getElementById('mae').style.display = ''; 
	document.getElementById('mze').style.display = 'none'; 
}