# strings1.ps1
# Working with strings - escape characters
# Sample using PowerShell
# Thomas Lee - tfl@psp.co.uk
 
# Note - in PowerShell, the escape character is ` (aka tick). 

# Tab escape - 't
[string] $columns = "Column 1`tColumn 2`tColumn 3"

# generate output
# Output: Column 1        Column 2        Column 3
$columns
 
[string]  $rows = "Row 1`r`nRow 2`r`nRow 3";
## Output:
##  Row 1
##  Row 2
##  Row 3
$rows

# Using Unicode - which doesn't work as in C#
[string] $title = "`"The`u00C6olean Harp`", by Samuel Taylor Coleridge"

# Output
# Output in C#: "The ?olean Harp", by Samuel Taylor Coleridge
$title
