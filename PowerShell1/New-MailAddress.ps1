<#
.SYNOPSIS
    This script demostrates the constructors for system.net.mail.mailaddress 
.DESCRIPTION
    This script uses the three constructors for new objects of the type
    system.net.mail.mailaddress using PowerShell. These constructors are:
    . single string
	. two strings
	. two strings and an encoding. 
.NOTES
    File Name  : New-MailAddress.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://pshscripts.blogspot.com/2010/05/get-utf8encoding.html
.EXAMPLE
PSH [C:\foo]: .\New-MailAddress.ps1'
    Creating mail address for: tfl@psp.co.uk
    User Host      Display Name To String
    ---- ----      ------------ ---------
    tfl  psp.co.uk              tfl@psp.co.uk

    Creating mail address for: Thomas Lee <tfl@psp.co.uk>
    User Host      Display Name To String
    ---- ----      ------------ ---------
    tfl  psp.co.uk Thomas Lee   "Thomas Lee" <tfl@psp.co.uk>

    Creating mail address for: "Thomas Lee" and "tfl@psp.co.uk"
    User Host      Display Name To String
    ---- ----      ------------ ---------
    tfl  psp.co.uk Thomas Lee   "Thomas Lee" <tfl@psp.co.uk>

    Creating mail address for: "Thomas Lee","tfl@psp.co.uk", and Ascii encoding
    User Host      Display Name    To String
    ---- ----      ------------    ---------
    tfl  psp.co.uk ThOmas Lee - pS "ThOmas Lee - pS" <tfl@psp.co.uk>

    Creating mail address for: "Thomas Lee","tfl@psp.co.uk", and UTF8 encoding
    User Host      Display Name    To String
    ---- ----      ------------    ---------
    tfl  psp.co.uk ThOmas Lee - pS "ThOmas Lee - pS" <tfl@psp.co.uk>
#>
##
# Start of script
##

# define helper functions
# nma - creates a new mail address
# used single string constuctor
function nma {
param ([string] $addr)
new-object system.net.Mail.MailAddress $addr
}

# nma2 - creates a new mail address
# used twin string constuctor
function nma2 {
param ([string] $addr,
       [string] $dspnam
	   )
new-object system.net.Mail.MailAddress $addr,$dspnam
}

# nma3 - creates a new mail address
# used twin string+encoding constuctor
function nma3 {
param ([string] $addr,
       [string] $dspnam,
	   $enc   
	   )
new-object system.net.Mail.MailAddress $addr, $dspnam, $enc
}



# Create hash tables for display of email addresses
$ts=@{label="To String";    expression={$_.tostring()}}
$dn=@{label="Display Name"; expression={$_.displayname}}

# look at single string constructor usage
# Create and display for address: tfl@psp.co.uk
$ad="tfl@psp.co.uk" 
"Creating mail address for: $ad"
nma  $ad | ft user,host,$dn,$ts -a

# Create and display for address: Thomas Lee <tfl@psp.co.uk>
$ad = "Thomas Lee <tfl@psp.co.uk>"
"Creating mail address for: $ad"
nma  $ad | ft user,host,$dn,$ts -a

# Twin string constructor
# Create and display for address: tfl@psp.co.uk, "Thomas Lee"
$ad   = "tfl@psp.co.uk"
$dnam = "Thomas Lee"
"Creating mail address for: `"$dname`" and `"$ad`""
nma2  $ad $dnam | ft user,host,$dn,$ts -a

# Using 3rd constructor - two strings and  and encoding

# Create and display for address: tfl@psp.co.uk, "Thomas Lee" in Ascii
$c=[char]0xd8
$ad   = "tfl@psp.co.uk"
$dnam = "Th"+$c+"mas Lee - " + [char] [char]0x03a0 + [char] 0x03a3
$enc  = New-Object System.Text.AsciiEncoding  
"Creating mail address for: `"$dname`",`"$ad`", and Ascii encoding"
nma3  $ad $dnam $enc | ft user,host,$dn,$ts -a


# Create and display for address: tfl@psp.co.uk, "Thomas Lee" in UTF8
$c=[char]0xd8
$ad   = "tfl@psp.co.uk"
$dnam = "Th"+$c+"mas Lee - " + [char] [char]0x03a0 + [char] 0x03a3
$enc  = New-Object System.Text.utf8encoding  
"Creating mail address for: `"$dname`",`"$ad`", and UTF8 encoding"
nma3  $ad $dnam $enc | ft user,host,$dn,$ts -a

