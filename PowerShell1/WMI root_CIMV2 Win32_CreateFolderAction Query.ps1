$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_CreateFolderAction -computername $computer -namespace $namespace
