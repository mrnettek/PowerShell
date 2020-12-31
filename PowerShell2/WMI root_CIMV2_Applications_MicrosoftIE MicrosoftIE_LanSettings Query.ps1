$computer = "LocalHost" 
$namespace = "root\CIMV2\Applications\MicrosoftIE" 
Get-WmiObject -class MicrosoftIE_LanSettings -computername $computer -namespace $namespace
