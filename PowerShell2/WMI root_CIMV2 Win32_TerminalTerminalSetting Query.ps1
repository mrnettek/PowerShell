$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TerminalTerminalSetting -computername $computer -namespace $namespace
