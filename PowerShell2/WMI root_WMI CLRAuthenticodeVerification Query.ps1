$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class CLRAuthenticodeVerification -computername $computer -namespace $namespace
