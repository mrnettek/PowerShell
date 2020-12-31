$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_BIOS -computername $computer -namespace $namespace
