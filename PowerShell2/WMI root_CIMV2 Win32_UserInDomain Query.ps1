$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_UserInDomain -computername $computer -namespace $namespace
