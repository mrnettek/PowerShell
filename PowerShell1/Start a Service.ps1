$srvName = "Alerter"

# Get Service Status
$servicePrior = get-Service $srvName
$srvName + " Service-Status: " + $servicePrior.status

# Start Service
set-Service $srvName -startuptype manual
start-Service $srvName

# Get Service Status
$servicePrior = get-Service $srvName
$srvName + " Service-Status: " + $servicePrior.status

