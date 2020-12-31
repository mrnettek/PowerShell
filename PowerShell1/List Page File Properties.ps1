$strComputer = "."

$colItems = get-wmiobject -class "Win32_PageFile" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "AccessMask: " $objItem.AccessMask
      write-host "Archive: " $objItem.Archive
      write-host "Caption: " $objItem.Caption
      write-host "Compressed: " $objItem.Compressed
      write-host "Compression Method: " $objItem.CompressionMethod
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Creation Date: " $objItem.CreationDate
      write-host "CS Creation Class Name: " $objItem.CSCreationClassName
      write-host "CS Name: " $objItem.CSName
      write-host "Description: " $objItem.Description
      write-host "Drive: " $objItem.Drive
      write-host "8.3 File Name: " $objItem.EightDotThreeFileName
      write-host "Encrypted: " $objItem.Encrypted
      write-host "Encryption Method: " $objItem.EncryptionMethod
      write-host "Extension: " $objItem.Extension
      write-host "File Name: " $objItem.FileName
      write-host "File Size: " $objItem.FileSize
      write-host "File Type: " $objItem.FileType
      write-host "Free Space: " $objItem.FreeSpace
      write-host "FS Creation Class Name: " $objItem.FSCreationClassName
      write-host "FS Name: " $objItem.FSName
      write-host "Hidden: " $objItem.Hidden
      write-host "Initial Size: " $objItem.InitialSize
      write-host "Installation Date: " $objItem.InstallDate
      write-host "In Use Count: " $objItem.InUseCount
      write-host "Last Accessed: " $objItem.LastAccessed
      write-host "Last Modified: " $objItem.LastModified
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Size: " $objItem.MaximumSize
      write-host "Name: " $objItem.Name
      write-host "Path: " $objItem.Path
      write-host "Readable: " $objItem.Readable
      write-host "Status: " $objItem.Status
      write-host "System: " $objItem.System
      write-host "Version: " $objItem.Version
      write-host "Writeable: " $objItem.Writeable
      write-host
}


