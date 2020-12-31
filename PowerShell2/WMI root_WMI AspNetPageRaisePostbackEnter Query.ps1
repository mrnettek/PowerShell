$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageRaisePostbackEnter -computername $computer -namespace $namespace
