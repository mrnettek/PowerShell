$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_FontInfoAction -computername $computer -namespace $namespace
