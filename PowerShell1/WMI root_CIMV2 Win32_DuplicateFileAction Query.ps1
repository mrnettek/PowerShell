$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DuplicateFileAction -computername $computer -namespace $namespace
