$OBJou = [ADSI]"WinNT://mred1"
$objUser = $objOU.Create("Group", "MyTestGroup")
$objUser.SetInfo()
$objUser.description = "Test Group"
$objUser.SetInfo()
