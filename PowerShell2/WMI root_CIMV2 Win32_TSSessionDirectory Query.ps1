$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSSessionDirectory -computername $computer -namespace $namespace
