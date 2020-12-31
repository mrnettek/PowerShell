$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_FloppyDrive -computername $computer -namespace $namespace
