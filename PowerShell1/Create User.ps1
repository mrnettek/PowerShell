$strCLass = "User"
$StrName = "CN=MyNewUser"
$objADSI = [ADSI]"LDAP://ou=myTestOU,dc=nwtraders,dc=com" 
$objUser = $objADSI.create($strCLass, $StrName)
$objUser.setInfo()
