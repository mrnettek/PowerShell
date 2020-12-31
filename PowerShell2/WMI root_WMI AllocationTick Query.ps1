$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AllocationTick -computername $computer -namespace $namespace
