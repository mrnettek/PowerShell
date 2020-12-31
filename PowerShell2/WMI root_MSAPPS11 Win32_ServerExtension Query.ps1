$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_ServerExtension -computername $computer -namespace $namespace
