$dt = new-object system.data.datatable "Test"
$c1 = new-object system.data.datacolumn col1,([int])
$c2 = new-object system.data.datacolumn col2,([string])
$dt.columns.add($c1)
$dt.columns.add($c2)
$row1 = $dt.newrow()
$row1.col1 = 10
$row1.col2 = "This is the first row"
$dt.rows.add($row1)
$row2 = $dt.newrow()
$row2.col1 = 100
$row2.col2 = "This is the second row"
$dt.rows.add($row2)
$dt
                                  
($dt.rows)[0]
                                  
($dt.rows)[1].col2

