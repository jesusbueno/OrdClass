/**
 * 
 */

function filterAlgorithm(o) {
	var box = o.value;
	var table = document.getElementById('sortable');
	var cell;

	var types = document.getElementsByName('type');
	var years = document.getElementsByName('year');

	if (o.name == "type") { cell = 2; }
	if (o.name == "year") { cell = 3; }

	for (var i = 1; i < table.rows.length; i++) {

		if (table.rows[i].style.display == 'none') {
			table.rows[i].style.display = '';
		}

		var type = table.rows[i].cells[cell].innerText;

		if (type != box) {
			if (o.checked) { table.rows[i].style.display = 'none'; }
			else { table.rows[i].style.display = ''; }
		}
	}
	
	if (o.name == "type") {
			for (var i = 0; i < years.length; i++) {
				years[i].checked = false;
			}
		}

		else {
			for (var i = 0; i < types.length; i++) {
				types[i].checked = false;
			}
		}
}


function showAllAlgorithms() {
	var table = document.getElementById('sortable');

	var types = document.getElementsByName('type');
	var years = document.getElementsByName('year');

	for (var i = 0; i < types.length; i++) {
		types[i].checked = false;
	}

	for (var i = 0; i < years.length; i++) {
		years[i].checked = false;
	}

	for (var i = 1; i < table.rows.length; i++) {

		if (table.rows[i].style.display == 'none') {
			table.rows[i].style.display = '';
		}

	}
}



/*Datasets*/


function filterType(o) {
	var box = o.value;
	var table = document.getElementById('sortable');
	var cell;
	var trains = document.getElementsByName('train');
	var tests = document.getElementsByName('test');
	var lengths = document.getElementsByName('length');
	var classes = document.getElementsByName('classes');

	if (o.name == "type") { cell = 5; }
	
	for (var i = 1; i < table.rows.length; i++) {

		if (table.rows[i].style.display == 'none') {
			table.rows[i].style.display = '';
		}

		var type = table.rows[i].cells[cell].innerText;

		if (type != box) {
			if (o.checked) { table.rows[i].style.display = 'none'; }
			else { table.rows[i].style.display = ''; }
		}
	}

	for (var i = 0; i < trains.length; i++) {
		trains[i].checked = false;
	}

	for (var i = 0; i < tests.length; i++) {
		tests[i].checked = false;
	}

	for (var i = 0; i < lengths.length; i++) {
		lengths[i].checked = false;
	}

	for (var i = 0; i < classes.length; i++) {
		classes[i].checked = false;
	}
}

function filterByRanges(o){
	var box = o.value;
	var table = document.getElementById('sortable');
	var cell;
	var r1, r2;


	var types = document.getElementsByName('type');
	var trains = document.getElementsByName('train');
	var tests = document.getElementsByName('test');
	var lengths = document.getElementsByName('length');
	var classes = document.getElementsByName('classes');

	for (var i = 0; i < types.length; i++) {
		types[i].checked = false;
	}

	if (o.name == "classes") {
		cell = 4; 
		r1 = 10;
		r2 = 30;

		for (var i = 0; i < trains.length; i++) {
			trains[i].checked = false;
		}
	
		for (var i = 0; i < tests.length; i++) {
			tests[i].checked = false;
		}
	
		for (var i = 0; i < lengths.length; i++) {
			lengths[i].checked = false;
		}
	}

	if(o.name == "length"){
		cell = 3; 
		r1 = 300;
		r2 = 700;

		for (var i = 0; i < trains.length; i++) {
			trains[i].checked = false;
		}
	
		for (var i = 0; i < tests.length; i++) {
			tests[i].checked = false;
		}
	
		for (var i = 0; i < classes.length; i++) {
			classes[i].checked = false;
		}
	}

	if(o.name == "test"){
		cell = 2; 
		r1 = 300;
		r2 = 1000;

		for (var i = 0; i < trains.length; i++) {
			trains[i].checked = false;
		}
	
		for (var i = 0; i < lengths.length; i++) {
			lengths[i].checked = false;
		}
	
		for (var i = 0; i < classes.length; i++) {
			classes[i].checked = false;
		}
	}

	if(o.name == "train"){
		cell = 1; 
		r1 = 100;
		r2 = 500;
	
		for (var i = 0; i < tests.length; i++) {
			tests[i].checked = false;
		}
	
		for (var i = 0; i < lengths.length; i++) {
			lengths[i].checked = false;
		}
	
		for (var i = 0; i < classes.length; i++) {
			classes[i].checked = false;
		}
	}
		if(box == "minus"){
			for (var i = 1; i < table.rows.length; i++) {

				if (table.rows[i].style.display == 'none') {
					table.rows[i].style.display = '';
				}
		
				var element = table.rows[i].cells[cell].innerText;
		
				if (element >= r1) {
					if (o.checked) { table.rows[i].style.display = 'none'; }
					else { table.rows[i].style.display = ''; }
				}
			}

		}

		else if(box=="between"){
			for (var i = 1; i < table.rows.length; i++) {

				if (table.rows[i].style.display == 'none') {
					table.rows[i].style.display = '';
				}
		
				var element = table.rows[i].cells[cell].innerText;
		
				if (element < r1 || element > r2) {
					if (o.checked) { table.rows[i].style.display = 'none'; }
					else { table.rows[i].style.display = ''; }
				}
			}
		}

		else{
			for (var i = 1; i < table.rows.length; i++) {

				if (table.rows[i].style.display == 'none') {
					table.rows[i].style.display = '';
				}
		
				var element = table.rows[i].cells[cell].innerText;
		
				if (element <= r2) {
					if (o.checked) { table.rows[i].style.display = 'none'; }
					else { table.rows[i].style.display = ''; }
				}
			}
		}
}

function showAllDatasets(){
	var table = document.getElementById('sortable');

	var types = document.getElementsByName('type');
	var trains = document.getElementsByName('train');
	var tests = document.getElementsByName('test');
	var lengths = document.getElementsByName('length');
	var classes = document.getElementsByName('classes');

	for (var i = 0; i < types.length; i++) {
		types[i].checked = false;
	}

	for (var i = 0; i < trains.length; i++) {
		trains[i].checked = false;
	}

	for (var i = 0; i < tests.length; i++) {
		tests[i].checked = false;
	}

	for (var i = 0; i < lengths.length; i++) {
		lengths[i].checked = false;
	}

	for (var i = 0; i < classes.length; i++) {
		classes[i].checked = false;
	}

	for (var i = 1; i < table.rows.length; i++) {
		if (table.rows[i].style.display == 'none') {
			table.rows[i].style.display = '';
		}

	}
}