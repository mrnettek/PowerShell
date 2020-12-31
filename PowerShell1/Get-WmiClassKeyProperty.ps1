##############################################################################
##
## Get-WmiClassKeyProperty.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Get all of the properties that you may use in a WMI filter for a given class.
##
## ie:
##
##  PS >Get-WmiClassKeyProperty Win32_Process
##
##############################################################################

param( [WmiClass] $wmiClass )

## WMI classes have properties
foreach($currentProperty in $wmiClass.PsBase.Properties)
{
    ## WMI properties have qualifiers to explain more about them
    foreach($qualifier in $currentProperty.Qualifiers)
    {
        ## If it has a 'Key' qualifier, then you may use it in a filter
        if($qualifier.Name -eq "Key")
        {
            $currentProperty.Name
        }
    }
}
