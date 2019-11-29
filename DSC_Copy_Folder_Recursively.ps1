# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

# The basic processing works like this:
# make a declarative script > generate mof > apply mof > verify configuration is running

# create configuration
 
Set-Location "C:\DSC\"
 
Configuration CopyFolderExample
{
    Node "localhost"
    {
        File DirectoryCopy
        {
            Ensure = "Present" # Present, Absent.
            Type = "Directory" # File, Directory
            Recurse = $true # $true, $false
            SourcePath = "c:\DSC\source"
            DestinationPath = "C:\DSC\destination"
        }
 
    }
}
 
# create mof
CopyFolderExample
 
# load configuration from mof
Start-DscConfiguration -Path CopyFolderExample -ComputerName localhost -Wait -Verbose -Force
 
# check configuration
Get-DscConfiguration
