$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSKeyboard_ExtendedID -computername $computer -namespace $namespace
