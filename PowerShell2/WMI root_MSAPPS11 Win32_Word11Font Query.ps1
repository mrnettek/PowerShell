$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11Font -computername $computer -namespace $namespace
