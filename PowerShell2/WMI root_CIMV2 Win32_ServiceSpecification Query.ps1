$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ServiceSpecification -computername $computer -namespace $namespace
