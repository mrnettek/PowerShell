$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetParseEnter -computername $computer -namespace $namespace
