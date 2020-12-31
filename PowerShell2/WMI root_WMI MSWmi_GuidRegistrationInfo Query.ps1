$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSWmi_GuidRegistrationInfo -computername $computer -namespace $namespace
