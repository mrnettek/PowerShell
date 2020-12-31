$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class FileIo -computername $computer -namespace $namespace
