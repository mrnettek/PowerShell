$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAInfo_CPEControl -computername $computer -namespace $namespace
