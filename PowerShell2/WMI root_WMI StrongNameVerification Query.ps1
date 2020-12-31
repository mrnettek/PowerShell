$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class StrongNameVerification -computername $computer -namespace $namespace
