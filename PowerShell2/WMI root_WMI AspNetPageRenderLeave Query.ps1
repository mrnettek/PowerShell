$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageRenderLeave -computername $computer -namespace $namespace
