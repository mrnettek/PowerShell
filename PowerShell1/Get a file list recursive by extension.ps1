$Dir = get-childitem C:\Temp -recurse
$List = $Dir | where {$_.extension -eq ".txt"}
$List | format-table fullname

