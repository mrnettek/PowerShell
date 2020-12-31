get-Service * |Sort-Object -property ServiceType `
| format-Table name, ServiceType, status, CanStop, -auto 
