$strFilter = "(objectCategory=User)"

$objOU = New-Object System.DirectoryServices.DirectoryEntry("LDAP://OU=Finance,dc=fabrikam,dc=com"")

$objSearcher = New-Object System.DirectoryServices.DirectorySearcher
$objSearcher.SearchRoot = $objDomain
$objSearcher.SearchScope = "Base"
$objSearcher.PageSize = 1000
$objSearcher.Filter = $strFilter

$colProplist = "name"
foreach ($i in $colPropList){$objSearcher.PropertiesToLoad.Add($i)}

$colResults = $objSearcher.FindAll()

foreach ($objResult in $colResults)
    {$objItem = $objResult.Properties; $objItem.name}


