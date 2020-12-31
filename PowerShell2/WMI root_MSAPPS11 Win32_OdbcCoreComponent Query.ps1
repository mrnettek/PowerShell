$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OdbcCoreComponent -computername $computer -namespace $namespace
