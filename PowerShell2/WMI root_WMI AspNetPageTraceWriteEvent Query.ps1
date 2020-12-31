$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageTraceWriteEvent -computername $computer -namespace $namespace
