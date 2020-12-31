$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSWmi_ProviderInfo -computername $computer -namespace $namespace
