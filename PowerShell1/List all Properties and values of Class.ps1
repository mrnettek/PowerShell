$wmiClass = "win32_operatingsystem"
$strComputer = "."
$wmiNS = "\root\cimv2"
$wmiQuery = "Select * from " + $wmiClass
$strUsr ="" #Blank for current security. Domain\Username
$strPWD = "" #Blank for current security.
$strLocl = "MS_409" #US English. Can leave blank for current language
$strAuth = "" #if specify domain in strUsr this must be blank
$iFlag = "0" #only two values alllowed: 0 and 128. 

$objLocator = New-Object -comobject "WbemScripting.SWbemLocator"
$objWMIService = $objLocator.ConnectServer($strComputer, `
	 $wmiNS, $strUsr, $strPWD, $strLocl, $strAuth, $iFLag)
	 
$colItems = $objWMIService.ExecQuery($wmiQuery)

foreach ($objItem In $colItems)
        {"`n"
          foreach ($i in $objItem.properties_)
                {Write-Host $i.name.tostring(), " `t" , $i.value.tostring()}
          }


