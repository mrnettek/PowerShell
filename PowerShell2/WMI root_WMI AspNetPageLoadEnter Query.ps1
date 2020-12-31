$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageLoadEnter -computername $computer -namespace $namespace
