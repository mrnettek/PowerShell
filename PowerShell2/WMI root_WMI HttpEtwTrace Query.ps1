$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpEtwTrace -computername $computer -namespace $namespace
