$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class PrivacyNoticeBindingElement -computername $computer -namespace $namespace
