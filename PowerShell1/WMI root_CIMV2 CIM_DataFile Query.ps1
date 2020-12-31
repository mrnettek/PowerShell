$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class CIM_DataFile -computername $computer -namespace $namespace
