<#
.SYNOPSIS
    Creates and displays a GUID as a byte String
.DESCRIPTION
    This script first creates a guid, then displays it as
    a byte string
.NOTES
    File Name  : Get-GuidByteString.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Get-GuidByteString.ps1'
    The GUID: 85d9e3b9-b414-481a-a773-57ca98ae893c converted to byte array is:
    185
    227
    217
    133
    20
    180
    26
    72
    167
    115
    87
    202
    152
    174
    137
    60

#>
 
# Create a new GUID
$g = [system.guid]::newguid()

# Get guid into byte array
$b=$g.tobytearray()

# Finally display the byte array
"The GUID: {0} converted to byte array is:" -f $g
$b