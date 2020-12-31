$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSKeyboard_ClassInformation -computername $computer -namespace $namespace
