$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSParallel_AllocFreeCounts -computername $computer -namespace $namespace
