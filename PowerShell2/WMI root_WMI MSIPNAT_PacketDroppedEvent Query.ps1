$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSIPNAT_PacketDroppedEvent -computername $computer -namespace $namespace
