$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageLoadPostDataEnter -computername $computer -namespace $namespace
