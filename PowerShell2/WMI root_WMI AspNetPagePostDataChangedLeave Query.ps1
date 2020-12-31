$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPagePostDataChangedLeave -computername $computer -namespace $namespace
