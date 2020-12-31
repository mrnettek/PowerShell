$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Image_V0_Load -computername $computer -namespace $namespace
