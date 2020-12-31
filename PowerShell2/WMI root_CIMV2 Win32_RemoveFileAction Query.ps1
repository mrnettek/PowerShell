$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_RemoveFileAction -computername $computer -namespace $namespace
