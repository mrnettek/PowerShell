$Dir = get-childitem C:\Temp -recurse
$List = $Dir
$List | format-table fullname

