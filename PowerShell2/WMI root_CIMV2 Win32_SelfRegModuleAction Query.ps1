$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SelfRegModuleAction -computername $computer -namespace $namespace
