$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11Settings -computername $computer -namespace $namespace
