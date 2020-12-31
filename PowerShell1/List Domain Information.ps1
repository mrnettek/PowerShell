$strComputer = "."

$colItems = get-wmiobject -class "Win32_NTDomain" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Client Site Name: " $objItem.ClientSiteName
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "DC Site Name: " $objItem.DcSiteName
      write-host "Description: " $objItem.Description
      write-host "DNS Forest Name: " $objItem.DnsForestName
      write-host "Domain Controller Address: " $objItem.DomainControllerAddress
      write-host "Domain Controller Address Type: " $objItem.DomainControllerAddressType
      write-host "Domain Controller Name: " $objItem.DomainControllerName
      write-host "Domain GUID: " $objItem.DomainGuid
      write-host "Domain Name: " $objItem.DomainName
      write-host "DS Directory Service Flag: " $objItem.DSDirectoryServiceFlag
      write-host "DS DNS Controller Flag: " $objItem.DSDnsControllerFlag
      write-host "DS DNS Domain Flag: " $objItem.DSDnsDomainFlag
      write-host "DS DNS Forest Flag: " $objItem.DSDnsForestFlag
      write-host "DS Global Catalog Flag: " $objItem.DSGlobalCatalogFlag
      write-host "DS Kerberos Distribution Center Flag: " $objItem.DSKerberosDistributionCenterFlag
      write-host "DS Primary Domain Controller Flag: " $objItem.DSPrimaryDomainControllerFlag
      write-host "DS Time Service Flag: " $objItem.DSTimeServiceFlag
      write-host "DS Writable Flag: " $objItem.DSWritableFlag
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Name Format: " $objItem.NameFormat
      write-host "Primary Owner Contact: " $objItem.PrimaryOwnerContact
      write-host "Primary Owner Name: " $objItem.PrimaryOwnerName
      write-host "Roles: " $objItem.Roles
      write-host "Status: " $objItem.Status
      write-host
}


