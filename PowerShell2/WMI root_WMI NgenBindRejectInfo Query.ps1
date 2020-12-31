$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class NgenBindRejectInfo -computername $computer -namespace $namespace
