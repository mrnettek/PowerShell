$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TerminalServiceSetting -computername $computer -namespace $namespace
