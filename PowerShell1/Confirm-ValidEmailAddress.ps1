<#
.SYNOPSIS
    This script validates email addresses based on
    MSFT published Regular Expression. This is a 
    re-write with PowerShell of an existing bit of 
    MSDN sample code 
.DESCRIPTION
    This script first creates a function to validate
    an email address. It uses a large regex that is
    documented at the MSDN page noted below. The script
    then creates an array of email addreses and then
    validates them against the function and displays
    the results.
.NOTES
    File Name  : Confirm-ValidEmailAddress.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/01escwtf.aspx
.EXAMPLE
    Valid: david.jones@proseware.com
    Valid: d.j@server1.proseware.com
    Valid: jones@ms1.proseware.com
    Invalid: j.@server1.proseware.com
    Invalid: j@proseware.com9
    Valid: js#internal@proseware.com
    Valid: j_9@[129.126.118.1]
    Invalid: j..s@proseware.com
    Invalid: js*@proseware.com
    Invalid: js@proseware..com
    Invalid: js@proseware.com9
    Valid: j.s@server1.proseware.com
    Valid: tfl@psp.co.uk
    Valid: cuddly.penguin@cookham.net
#>

Function IsValidEmail   {
Param ([string] $In)
# Returns true if In is in valid e-mail format.
[system.Text.RegularExpressions.Regex]::IsMatch($In, 
              "^(?("")(""[^""]+?""@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))" + 
              "(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$"); 
} # End of IsValidEmail
   
[string[]] $emailAddresses = "david.jones@proseware.com", "d.j@server1.proseware.com", 
                            "jones@ms1.proseware.com", "j.@server1.proseware.com", 
                            "j@proseware.com9", "js#internal@proseware.com", 
                            "j_9@[129.126.118.1]", "j..s@proseware.com", 
                            "js*@proseware.com", "js@proseware..com", 
                            "js@proseware.com9", "j.s@server1.proseware.com",
                            "tfl@psp.co.uk", "cuddly.penguin@cookham.net" 
                            
ForEach ($emailAddress in $emailAddresses)    {
  if (IsValidEmail($emailAddress)) {
       "Valid: {0}" -f $emailAddress
       }
  else {
        "Invalid: {0}" -f $emailAddress
       }    
}                                        