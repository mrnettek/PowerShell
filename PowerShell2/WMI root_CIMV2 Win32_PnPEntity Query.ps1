$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PnPEntity -computername $computer -namespace $namespace
