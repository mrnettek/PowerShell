$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSmBios_RawSMBiosTables -computername $computer -namespace $namespace
