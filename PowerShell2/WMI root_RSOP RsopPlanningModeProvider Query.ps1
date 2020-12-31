$computer = "LocalHost" 
$namespace = "root\RSOP" 
Get-WmiObject -class RsopPlanningModeProvider -computername $computer -namespace $namespace
