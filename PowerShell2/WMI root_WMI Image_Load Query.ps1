$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Image_Load -computername $computer -namespace $namespace
