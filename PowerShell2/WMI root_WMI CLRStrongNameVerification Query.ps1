$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class CLRStrongNameVerification -computername $computer -namespace $namespace
