$wmiNS = "root\cimV2"
Get-WmiObject -class __Provider -namespace $wmiNS  -filter "name LIKE '%MSI%'" |
   Sort-Object -property Name |
   Format-List name
