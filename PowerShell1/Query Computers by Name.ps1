$strBase = "<LDAP://dc=nwtraders,dc=msft>"
$strFilter = "(&(objectCategory=computer)(name=london))"
$strAttributes = "name, distinguishedName"
$strScope = "subtree"
$strQuery = "$strBase;$strFilter;$strAttributes;$strScope"

$objConnection = New-Object -comObject "ADODB.Connection"
$objCommand = New-Object -comObject "ADODB.Command"
$objConnection.Open("Provider=ADsDSOObject;")
$objCommand.ActiveConnection = $objConnection
$objCommand.CommandText = $strQuery
$objRecordSet = $objCommand.Execute()

Do
{
    $objRecordSet.Fields.item("name") |Select-Object Name,Value 
	$objRecordSet.Fields.item("distinguishedName") |Select-Object Name,Value
    $objRecordSet.MoveNext()
}
Until ($objRecordSet.eof) 

$objConnection.Close()

