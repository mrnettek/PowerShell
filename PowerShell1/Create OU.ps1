$strCLass = "organizationalUnit"
$StrOUName = "ou=MyTestOU"
$objADSI = [ADSI]"LDAP://dc=nwtraders,dc=com" 
$objOU = $objADSI.create($strCLass, $StrOUName)
$objOU.setInfo()

 

