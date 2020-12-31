$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_MoveFileAction -computername $computer -namespace $namespace
