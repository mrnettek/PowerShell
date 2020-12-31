$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSKeyboard_PortInformation -computername $computer -namespace $namespace
