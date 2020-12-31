$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPipelineModuleEnter -computername $computer -namespace $namespace
