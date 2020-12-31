$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NamedJobObjectActgInfo -computername $computer -namespace $namespace
