$rootFolder = "C:\test"
$daysOld = -2
Get-ChildItem -Path $rootFOlder -Recurse | 
Where-Object { $_.CreationTime -gt $(get-date).addDays($daysOld) } | 
Remove-Item -force -Recurse

