$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_UTCTime -computername $computer -namespace $namespace
