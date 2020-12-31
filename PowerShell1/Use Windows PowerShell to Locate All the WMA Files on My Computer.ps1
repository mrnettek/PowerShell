Get-WMIObject Win32_LogicalDisk -filter "DriveType = 3" | 
Select-Object DeviceID | 
ForEach-Object {Get-Childitem ($_.DeviceID + "\") -include *.wma -recurse}

