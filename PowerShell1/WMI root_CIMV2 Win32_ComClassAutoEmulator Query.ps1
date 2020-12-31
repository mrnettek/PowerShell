$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ComClassAutoEmulator -computername $computer -namespace $namespace
