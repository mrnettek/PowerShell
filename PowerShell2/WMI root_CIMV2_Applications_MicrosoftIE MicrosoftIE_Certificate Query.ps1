$computer = "LocalHost" 
$namespace = "root\CIMV2\Applications\MicrosoftIE" 
Get-WmiObject -class MicrosoftIE_Certificate -computername $computer -namespace $namespace
