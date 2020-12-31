$computer = "LocalHost" 
$namespace = "root\RSOP" 
Get-WmiObject -class RsopLoggingModeProvider -computername $computer -namespace $namespace
