$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HeapStats -computername $computer -namespace $namespace
