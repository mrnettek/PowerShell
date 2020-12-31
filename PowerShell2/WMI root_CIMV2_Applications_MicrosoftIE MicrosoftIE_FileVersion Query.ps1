$computer = "LocalHost" 
$namespace = "root\CIMV2\Applications\MicrosoftIE" 
Get-WmiObject -class MicrosoftIE_FileVersion -computername $computer -namespace $namespace
