$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPagePreRenderLeave -computername $computer -namespace $namespace
