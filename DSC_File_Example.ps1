# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

# The basic processing works like this:
# make a declarative script > generate mof > apply mof > verify configuration is running

Set-Location "C:\temp\"
 
# define configuration
 
configuration FileExample
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration
 
    Node localhost 
    {
 
        File FileExample
        {
            Ensure           = 'Present' # Present, Absent        
            Contents         = 'Config settings in file'
            DestinationPath  = 'C:\temp\FileExample.txt'
            Type             = 'File'
 
        }     
    }
}
 
# create mof
FileExample
 
# load configuration from mof
Start-DscConfiguration -Path FileExample -ComputerName localhost -Wait -Verbose -Force
 
# check configuration
Get-DscConfiguration
