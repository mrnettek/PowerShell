$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageSaveViewstateEnter -computername $computer -namespace $namespace
