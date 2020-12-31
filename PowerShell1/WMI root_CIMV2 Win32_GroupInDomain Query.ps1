$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_GroupInDomain -computername $computer -namespace $namespace
