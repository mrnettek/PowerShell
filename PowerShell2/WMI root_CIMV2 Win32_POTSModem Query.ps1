$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_POTSModem -computername $computer -namespace $namespace
