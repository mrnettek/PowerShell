$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_RDOCoreComponents -computername $computer -namespace $namespace
