
 window.onload = function(){
    TableSorter.makeSortable(document.getElementById("sortable"));
};

 var TableSorter = {
    makeSortable: function(table){
        // Store context of this in the object
        var _this = this;
        var th = table.tHead, i;
        th && (th = th.rows[0]) && (th = th.cells);

        if (th){
            i = th.length;
        }else{
            return; // if no `<thead>` then do nothing
        }

        // Loop through every <th> inside the header
        while (--i >= 0) (function (i) {
            var dir = 1;

            // Append click listener to sort
            th[i].addEventListener('click', function () {
                _this._sort(table, i, (dir = 1 - dir));
            });
        }(i));
    },
    _sort: function (table, col, reverse) {
        var tb = table.tBodies[0], // use `<tbody>` to ignore `<thead>` and `<tfoot>` rows
        tr = Array.prototype.slice.call(tb.rows, 0), // put rows into array
        i;

        reverse = -((+reverse) || -1);

        // Sort rows
        tr = tr.sort(function (a, b) {
            // `-1 *` if want opposite order
            return reverse * (
                // Using `.textContent.trim()` for test
                a.cells[col].textContent.trim().localeCompare(
                    b.cells[col].textContent.trim()
                )
            );
        });

        for(i = 0; i < tr.length; ++i){
            // Append rows in new order
            tb.appendChild(tr[i]);
        }
    }
};