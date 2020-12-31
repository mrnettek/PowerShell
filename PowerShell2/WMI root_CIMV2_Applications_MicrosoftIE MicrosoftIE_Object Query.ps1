$computer = "LocalHost" 
$namespace = "root\CIMV2\Applications\MicrosoftIE" 
Get-WmiObject -class MicrosoftIE_Object -computername $computer -namespace $namespace
