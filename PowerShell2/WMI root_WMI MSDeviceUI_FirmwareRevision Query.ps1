$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSDeviceUI_FirmwareRevision -computername $computer -namespace $namespace
