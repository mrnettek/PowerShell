$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ClassicCOMClass -computername $computer -namespace $namespace
