$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ClassicCOMApplicationClasses -computername $computer -namespace $namespace
