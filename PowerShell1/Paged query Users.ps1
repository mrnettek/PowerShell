$strBase = "<LDAP://dc=contoso,dc=com>"
$strFilter = "(objectCategory=user)"
$strAttributes = "name"
$strScope = "subtree"
$strQuery = "$strBase;$strFilter;$strAttributes;$strScope"


$objConnection = New-Object -comObject "ADODB.Connection"
$objConnection.provider = "ADsDSOObject"
$objConnection.open("modifiedConnection")
$objCommand = New-Object -comObject "ADODB.Command"
$objCommand.ActiveConnection = $objConnection
$objCommand.Properties.item("page size") = 500
$objCommand.CommandText = $strQuery
$objRecordSet = $objCommand.Execute()

Do
{
    $objRecordSet.Fields.item("name") |Select-Object Name,Value 
    $objRecordSet.MoveNext()
}
Until ($objRecordSet.eof) 

$objConnection.Close()

