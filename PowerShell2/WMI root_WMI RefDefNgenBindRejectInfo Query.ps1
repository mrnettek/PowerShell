$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class RefDefNgenBindRejectInfo -computername $computer -namespace $namespace
