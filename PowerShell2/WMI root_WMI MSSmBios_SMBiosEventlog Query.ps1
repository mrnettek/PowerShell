$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSmBios_SMBiosEventlog -computername $computer -namespace $namespace
