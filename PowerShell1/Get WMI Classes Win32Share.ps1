Get-WmiObject -list | where {$_.name -like "win32_share"} | gm
