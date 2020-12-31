$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class MustUnderstandBehavior -computername $computer -namespace $namespace
