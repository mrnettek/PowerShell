$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPipelineModuleLeave -computername $computer -namespace $namespace
