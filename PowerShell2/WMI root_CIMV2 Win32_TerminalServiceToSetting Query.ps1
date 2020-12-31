$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TerminalServiceToSetting -computername $computer -namespace $namespace
