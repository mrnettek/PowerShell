$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_UninterruptiblePowerSupply -computername $computer -namespace $namespace
