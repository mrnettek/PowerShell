$strCLass = "Group"
$StrName = "CN=MyNewGroup"
$intGroupType = 2
$objADSI = [ADSI]"LDAP://ou=myTestOU,dc=nwtraders,dc=com" 
$objGroup = $objADSI.create($strCLass, $StrName)
$objGroup.setInfo()
