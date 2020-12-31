$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AMLIEvalData1 -computername $computer -namespace $namespace
