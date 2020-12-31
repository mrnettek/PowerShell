$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetProfileEnd -computername $computer -namespace $namespace
