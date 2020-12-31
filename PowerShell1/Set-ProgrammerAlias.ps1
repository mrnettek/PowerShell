<#  
.SYNOPSIS  
    This script creates a function to set aliases for all Cmdlets which omit the '-'  
.DESCRIPTION  
    This script defines a function which uses Get-Command to find all 
    cmdlets. For each of them, it then creates an alias which omits 
    the "-". This function  was oritinally written by Jeffrey Snover for
    Monad back in the day, but I updated it slightly for PowerShell V2.  
.NOTES  
    File Name  : Set-ProgrammerAlias.ps1  
    Author     : Jeffrey Snover - jsnover@microsoft.com  
    Updated by : Thomas Lee - tfl@psp.co.uk  
    Requires   : PowerShell Version 2.0  
.LINK  
    This script posted to:  
        http://www.pshscripts.blogspot.com  
#>  
##  
# Start of Script  
  
function Set-ProgrammerAlias {  
     get-command -Com cmdlet |foreach {set-alias $($_.Verb + $_.Noun) $_.Name}   
}  
  
set-alias spa Set-ProgrammerAliases  
