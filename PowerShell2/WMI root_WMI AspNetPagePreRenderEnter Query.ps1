$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPagePreRenderEnter -computername $computer -namespace $namespace
