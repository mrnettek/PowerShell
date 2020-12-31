$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11SelectedTable -computername $computer -namespace $namespace
