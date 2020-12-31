$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DirectorySpecification -computername $computer -namespace $namespace
