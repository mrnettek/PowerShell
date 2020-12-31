$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagResumeEvent -computername $computer -namespace $namespace
