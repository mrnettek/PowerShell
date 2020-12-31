$strComputer = "."

$colItems = get-wmiobject -class "Win32_NTEventlogFile" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Access Mask: " $objItem.AccessMask
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
      write-host "FS Creation Class Name: " $objItem.FSCreationClassName
      write-host "FS Name: " $objItem.FSName
      write-host "Hidden: " $objItem.Hidden
      write-host "Installation Date: " $objItem.InstallDate
      write-host "In Use Count: " $objItem.InUseCount
      write-host "Last Accessed: " $objItem.LastAccessed
      write-host "Last Modified: " $objItem.LastModified
      write-host "Logfile Name: " $objItem.LogfileName
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum File Size: " $objItem.MaxFileSize
      write-host "Name: " $objItem.Name
      write-host "Number Of Records: " $objItem.NumberOfRecords
      write-host "Overwrite Outdated: " $objItem.OverwriteOutDated
      write-host "Overwrite Policy: " $objItem.OverWritePolicy
      write-host "Path: " $objItem.Path
      write-host "Readable: " $objItem.Readable
      write-host "Sources: " $objItem.Sources
      write-host "Status: " $objItem.Status
      write-host "System: " $objItem.System
      write-host "Version: " $objItem.Version
      write-host "Writeable: " $objItem.Writeable
      write-host
}


