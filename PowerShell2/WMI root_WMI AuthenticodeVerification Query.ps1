$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AuthenticodeVerification -computername $computer -namespace $namespace
