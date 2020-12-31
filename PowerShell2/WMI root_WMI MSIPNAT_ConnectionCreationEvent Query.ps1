$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSIPNAT_ConnectionCreationEvent -computername $computer -namespace $namespace
