$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_WebConnectionError -computername $computer -namespace $namespace
