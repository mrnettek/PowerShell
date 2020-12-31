$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OdbcDriver -computername $computer -namespace $namespace
