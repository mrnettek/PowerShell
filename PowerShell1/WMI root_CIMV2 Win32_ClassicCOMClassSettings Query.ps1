$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ClassicCOMClassSettings -computername $computer -namespace $namespace
