$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SoundDevice -computername $computer -namespace $namespace
