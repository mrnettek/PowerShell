$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class CIM_DirectoryContainsFile -computername $computer -namespace $namespace
