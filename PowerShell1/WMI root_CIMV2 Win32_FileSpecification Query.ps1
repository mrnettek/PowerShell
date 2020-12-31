$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_FileSpecification -computername $computer -namespace $namespace
