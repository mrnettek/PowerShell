$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class FusionNGENBinder -computername $computer -namespace $namespace
