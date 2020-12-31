$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PageFileElementSetting -computername $computer -namespace $namespace
