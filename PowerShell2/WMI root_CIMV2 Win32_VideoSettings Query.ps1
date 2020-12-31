$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_VideoSettings -computername $computer -namespace $namespace
