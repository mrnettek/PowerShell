$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LoggedOnUser -computername $computer -namespace $namespace
