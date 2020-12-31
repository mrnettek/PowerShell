$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_CommandLineAccess -computername $computer -namespace $namespace
