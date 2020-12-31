$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ResumeThread -computername $computer -namespace $namespace
