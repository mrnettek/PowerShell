$strComputer = "."

$colItems = get-wmiobject -class "Win32_DiskPartition" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Access: " $objItem.Access
      write-host "Availability: " $objItem.Availability
      write-host "Block Size: " $objItem.BlockSize
      write-host "Bootable: " $objItem.Bootable
      write-host "Boot Partition: " $objItem.BootPartition
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Disk Index: " $objItem.DiskIndex
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Error Methodology: " $objItem.ErrorMethodology
      write-host "Hidden Sectors: " $objItem.HiddenSectors
      write-host "Index: " $objItem.Index
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Name: " $objItem.Name
      write-host "Number Of Blocks: " $objItem.NumberOfBlocks
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Primary Partition: " $objItem.PrimaryPartition
      write-host "Purpose: " $objItem.Purpose
      write-host "Rewrite Partition: " $objItem.RewritePartition
      write-host "Size: " $objItem.Size
      write-host "Starting Offset: " $objItem.StartingOffset
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Type: " $objItem.Type
      write-host
}


