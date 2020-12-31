$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NTEventlogFile -computername $computer -namespace $namespace
