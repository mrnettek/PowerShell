$strComputer = "."
$wmiNS = "root"

$objLocator = New-Object -comobject "WbemScripting.SWbemLocator"
$objWMIService = $objLocator.connectServer($strComputer, $wmiNS)
$colItems = $objWMIService.InstancesOF("__NameSpace")


foreach ($i in $colitems)
 {
   foreach ($b in $i.path_)
      {
      Write-Host $b.path   
      }
}


