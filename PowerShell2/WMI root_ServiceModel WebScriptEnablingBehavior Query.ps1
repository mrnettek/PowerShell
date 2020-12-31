$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class WebScriptEnablingBehavior -computername $computer -namespace $namespace
