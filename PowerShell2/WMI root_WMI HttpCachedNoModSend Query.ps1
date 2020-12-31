$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpCachedNoModSend -computername $computer -namespace $namespace
