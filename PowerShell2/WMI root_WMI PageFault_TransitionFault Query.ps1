$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class PageFault_TransitionFault -computername $computer -namespace $namespace
