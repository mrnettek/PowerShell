$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSChangerProblemEvent -computername $computer -namespace $namespace
