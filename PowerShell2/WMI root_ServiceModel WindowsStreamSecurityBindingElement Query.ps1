$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WindowsStreamSecurityBindingElement -computername $computer -namespace $namespace
