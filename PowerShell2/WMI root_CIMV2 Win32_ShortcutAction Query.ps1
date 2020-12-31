$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ShortcutAction -computername $computer -namespace $namespace
