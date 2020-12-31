<#
.SYNOPSIS
    This script displays service details
.DESCRIPTION
    This script first enumerates all the service controllers (ie services)
    running on the local system. For each service, we look into WMI and
    get info about that running service.
.NOTES
    File Name  : Get-ServiceDetails.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/hde9d63a.aspx 
.EXAMPLE
    PSH [C:\foo]: .\Get-ServiceDetails.ps1'
    Services running on the local computer:

      Service :        AeLookupSvc
        Display name:    Application Experience
        Start name:      localSystem
        Description:     Processes application compatibility cache requests for applications as they are launched

      Service :        AppHostSvc
        Display name:    Application Host Helper Service
        Start name:      LocalSystem
        Description:     Provides administrative services for IIS, for example configuration history and Applicati
on Pool account mapping. If this service is stopped, configuration history and locking down files or directori
es with Application Pool specific Access Control Entries will not work.
<rest snipped to save space!>
#>

##
# Start of script
##

# Load assembly with ServiceProcess class
$result = [reflection.Assembly]::LoadWithPartialName("System.ServiceProcess")
$Services = [System.ServiceProcess.ServiceController]::GetServices()

# Get WMI Services
$WMIServices = gwmi win32_service
# Display the list of services currently running on this computer.

"Services running on the local computer:"
foreach ($Service in $Services) {
 
if ($Service.Status -eq [system.ServiceProcess.ServiceControllerStatus]::Running)  {
  # Write the service name and the display name
  # for each running service.
  ""
  "  Service :        {0}"      -f  $Service.ServiceName
  "    Display name:    {0}"    -f  $Service.DisplayName
  # query WMI for more info on service
  $svc = $wmiServices  | where {$_.name -eq $service.servicename}  
  "    Start name:      {0}"    -f  $Svc.StartName
  "    Description:     {0}"    -f  $Svc.Description
 }
}
# End