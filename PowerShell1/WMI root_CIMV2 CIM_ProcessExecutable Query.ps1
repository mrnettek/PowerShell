$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class CIM_ProcessExecutable -computername $computer -namespace $namespace
