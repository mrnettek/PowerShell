$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpReceiveResponse -computername $computer -namespace $namespace
