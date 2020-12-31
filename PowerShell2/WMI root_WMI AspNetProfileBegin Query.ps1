$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetProfileBegin -computername $computer -namespace $namespace
