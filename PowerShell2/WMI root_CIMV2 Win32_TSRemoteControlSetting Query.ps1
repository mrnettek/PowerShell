$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSRemoteControlSetting -computername $computer -namespace $namespace
