$strComputer = "."

$colItems = get-wmiobject -class "Win32_OperatingSystem" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Boot Device: " $objItem.BootDevice
      write-host "Build Number: " $objItem.BuildNumber
      write-host "Build Type: " $objItem.BuildType
      write-host "Caption: " $objItem.Caption
      write-host "Code Set: " $objItem.CodeSet
      write-host "Country Code: " $objItem.CountryCode
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "CS Creation Class Name: " $objItem.CSCreationClassName
      write-host "CSD Version: " $objItem.CSDVersion
      write-host "CS Name: " $objItem.CSName
      write-host "Current Time Zone: " $objItem.CurrentTimeZone
      write-host "Debug: " $objItem.Debug
      write-host "Description: " $objItem.Description
      write-host "Distributed: " $objItem.Distributed
      write-host "Encryption Level: " $objItem.EncryptionLevel
      write-host "Foreground Application Boost: " $objItem.ForegroundApplicationBoost
      write-host "Free Physical Memory: " $objItem.FreePhysicalMemory
      write-host "Free Space In Paging Files: " $objItem.FreeSpaceInPagingFiles
      write-host "Free Virtual Memory: " $objItem.FreeVirtualMemory
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Large System Cache: " $objItem.LargeSystemCache
      write-host "Last Boot-Up Time: " $objItem.LastBootUpTime
      write-host "Local DateTime: " $objItem.LocalDateTime
      write-host "Locale: " $objItem.Locale
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Number Of Processes: " $objItem.MaxNumberOfProcesses
      write-host "Maximum Process Memory Size: " $objItem.MaxProcessMemorySize
      write-host "Name: " $objItem.Name
      write-host "Number Of Licensed Users: " $objItem.NumberOfLicensedUsers
      write-host "Number Of Processes: " $objItem.NumberOfProcesses
      write-host "Number Of Users: " $objItem.NumberOfUsers
      write-host "Organization: " $objItem.Organization
      write-host "Operating System Language: " $objItem.OSLanguage
      write-host "Operating System Product Suite: " $objItem.OSProductSuite
      write-host "Operating System Type: " $objItem.OSType
      write-host "Other Type Description: " $objItem.OtherTypeDescription
      write-host "Plus Product ID: " $objItem.PlusProductID
      write-host "Plus Version Number: " $objItem.PlusVersionNumber
      write-host "Primary: " $objItem.Primary
      write-host "Product Type: " $objItem.ProductType
      write-host "Quantum Length: " $objItem.QuantumLength
      write-host "Quantum Type: " $objItem.QuantumType
      write-host "Registered User: " $objItem.RegisteredUser
      write-host "Serial Number: " $objItem.SerialNumber
      write-host "Service Pack Major Version: " $objItem.ServicePackMajorVersion
      write-host "Service Pack Minor Version: " $objItem.ServicePackMinorVersion
      write-host "Size Stored In Paging Files: " $objItem.SizeStoredInPagingFiles
      write-host "Status: " $objItem.Status
      write-host "Suite Mask: " $objItem.SuiteMask
      write-host "System Device: " $objItem.SystemDevice
      write-host "System Directory: " $objItem.SystemDirectory
      write-host "System Drive: " $objItem.SystemDrive
      write-host "Total Swap Space Size: " $objItem.TotalSwapSpaceSize
      write-host "Total Virtual Memory Size: " $objItem.TotalVirtualMemorySize
      write-host "Total Visible Memory Size: " $objItem.TotalVisibleMemorySize
      write-host "Version: " $objItem.Version
      write-host "Windows Directory: " $objItem.WindowsDirectory
      write-host
}


