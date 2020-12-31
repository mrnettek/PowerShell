$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AMLIEvalData1_TypeGroup1 -computername $computer -namespace $namespace
