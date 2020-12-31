$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_WebConnectionErrorText -computername $computer -namespace $namespace
