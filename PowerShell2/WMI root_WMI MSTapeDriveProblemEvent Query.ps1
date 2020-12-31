$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSTapeDriveProblemEvent -computername $computer -namespace $namespace
