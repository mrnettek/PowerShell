$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class FileIo_V0 -computername $computer -namespace $namespace
