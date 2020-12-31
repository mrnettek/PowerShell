$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPagePostDataChangedEnter -computername $computer -namespace $namespace
