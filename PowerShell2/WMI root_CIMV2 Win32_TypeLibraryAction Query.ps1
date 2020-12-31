$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TypeLibraryAction -computername $computer -namespace $namespace
