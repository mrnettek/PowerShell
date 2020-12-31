$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ExtensionInfoAction -computername $computer -namespace $namespace
