$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NamedJobObjectStatistics -computername $computer -namespace $namespace
