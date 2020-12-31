$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_UserAccount -computername $computer -namespace $namespace
