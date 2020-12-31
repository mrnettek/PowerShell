$srvName = "Alerter"

# Get Service Status
$servicePrior = get-Service $srvName
$srvName + " Service-Status: " + $servicePrior.status

