$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageRenderEnter -computername $computer -namespace $namespace
