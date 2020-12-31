$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class FileIo_Name -computername $computer -namespace $namespace
