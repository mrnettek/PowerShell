$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSRedbook_Performance -computername $computer -namespace $namespace
