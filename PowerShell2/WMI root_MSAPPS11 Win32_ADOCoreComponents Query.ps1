$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_ADOCoreComponents -computername $computer -namespace $namespace
