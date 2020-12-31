$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSWmi_MofData -computername $computer -namespace $namespace
