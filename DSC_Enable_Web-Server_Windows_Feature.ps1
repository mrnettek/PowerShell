# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

# The basic processing works like this:
# make a declarative script > generate mof > apply mof > verify configuration is running

Set-Location "C:\DSC\"
 
configuration FeatureExample
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Node localhost
    {
 
        WindowsFeatureSet FeaturExample
        {
            Name                    = @("Web-Server")
            Ensure                  = 'Present'
            IncludeAllSubFeature    = $true
        }
    }
}
 
FeatureExample
 
Start-DscConfiguration -Path FeatureExample -ComputerName localhost -Wait -Verbose -Force
