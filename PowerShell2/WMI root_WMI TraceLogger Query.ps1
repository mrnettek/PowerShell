$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class TraceLogger -computername $computer -namespace $namespace
