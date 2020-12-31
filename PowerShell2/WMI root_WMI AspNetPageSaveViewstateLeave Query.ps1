$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageSaveViewstateLeave -computername $computer -namespace $namespace
