$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PCMCIAController -computername $computer -namespace $namespace
