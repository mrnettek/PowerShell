$computer = "LocalHost" 
$namespace = "root\CIMV2\Applications\MicrosoftIE" 
Get-WmiObject -class MicrosoftIE_Cache -computername $computer -namespace $namespace
