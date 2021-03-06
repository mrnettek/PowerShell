$objRoot=[adsi]"LDAP://rootDSE" 
$objPath="LDAP://"+$objRoot.schemaNamingContext 

$strFilter = "(&(objectClass=attributeSchema)(isMemberOfPartialAttributeSet=TRUE))"

$objDomain = New-Object System.DirectoryServices.DirectoryEntry($objPath)

$objSearcher = New-Object System.DirectoryServices.DirectorySearcher
$objSearcher.SearchRoot = $objDomain
$objSearcher.PageSize = 1000
$objSearcher.Filter = $strFilter

$colProplist = "name"
foreach ($i in $colPropList){$objSearcher.PropertiesToLoad.Add($i)}

$colResults = $objSearcher.FindAll()

foreach ($objResult in $colResults)
    {$objItem = $objResult.Properties; $objItem.name}


