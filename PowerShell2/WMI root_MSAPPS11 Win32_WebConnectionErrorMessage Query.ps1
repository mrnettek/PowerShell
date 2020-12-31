$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_WebConnectionErrorMessage -computername $computer -namespace $namespace
