$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSIPNAT_ConnectionDeletionEvent -computername $computer -namespace $namespace
