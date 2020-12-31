$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class FileIo_V0_Name -computername $computer -namespace $namespace
