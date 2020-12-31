$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSSessionDirectorySetting -computername $computer -namespace $namespace
