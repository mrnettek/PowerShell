$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DCOMApplicationAccessAllowedSetting -computername $computer -namespace $namespace
