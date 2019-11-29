# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

# The basic processing works like this:
# make a declarative script > generate mof > apply mof > verify configuration is running

Set-Location "C:\DSC\"
 
Configuration RegistryExample
{
   Node localhost 
   {
      Import-DscResource -ModuleName PSDesiredStateConfiguration
        Registry RegistryExample
        {
            Ensure      = "Present"  # Present, Absent
            Key         = "HKEY_LOCAL_MACHINE\SOFTWARE\ExampleKey"
 
            ValueName   = "ValueHere"
            ValueData   = "DataHere"
        }
    }
}
 
 
# create mof
RegistryExample
 
# load configuration from mof
Start-DscConfiguration -Path RegistryExample -ComputerName localhost -Wait -Verbose -Force
 
# check configuration
Get-DscConfiguration
