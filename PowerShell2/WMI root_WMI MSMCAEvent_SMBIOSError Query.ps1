$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAEvent_SMBIOSError -computername $computer -namespace $namespace
