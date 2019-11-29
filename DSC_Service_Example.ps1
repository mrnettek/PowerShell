# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

# The basic processing works like this:
# make a declarative script > generate mof > apply mof > verify configuration is running

Set-Location "C:\DSC\"
 
Configuration ServiceExample
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Node localhost
    {
 
        Service ServiceExample
        {
            Name        = "wuauserv"
            StartupType = "Automatic" # Automatic, Disabled, and Manual
            State       = "Running"
        }
    }
}
 
# create mof
ServiceExample
 
# load configuration from mof
Start-DscConfiguration -Path ServiceExample -ComputerName localhost -Wait -Verbose -Force
  
# check configuration
Get-DscConfiguration
