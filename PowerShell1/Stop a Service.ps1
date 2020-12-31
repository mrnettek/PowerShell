$srvName = "Alerter"

# Get Service Status
$servicePrior = get-Service $srvName
$srvName + " Service-Status: " + $servicePrior.status

# Stop Service
stop-Service $srvName
set-Service $srvName -startuptype disabled

# Get Service Status
$servicePrior = get-Service $srvName
$srvName + " Service-Status: " + $servicePrior.status

