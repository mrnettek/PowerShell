$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_InstalledSoftwareElement -computername $computer -namespace $namespace
