<#
.SYNOPSIS
    
.DESCRIPTION
    
.NOTES
    File Name  : Display-Array1.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Display-Array1.ps1'
    Initially,
    Integer array:
        1
        2
        3
        4
        5

    Object array:
        26
        27
        28
        29
        30

    After copying the first two elements of the integer array to the Object array,
    Integer array:
        1
        2
        3
        4
        5

    Object array:
        1
        2
        28
        29
        30

    After copying the last two elements of the Object array to the integer array,
    integer array:
        1
        2
        3
        29
        30

    Object array:
        1
        2
        28
#> 

##
#  Start of script
##

# Helper function
function PrintValues{ 
param ($myArr )  
foreach ( $i in $myArr )  {
"`t{0}" -f $i
}
""
}
 
# Start of Sample
# Creates and initializes a new integer array and a new Object array.
$myIntArray =  1, 2, 3, 4, 5 
[system.object] $myObjArray = [object] 26, [object] 27, [object] 28,[object] 29,[object] 30

# Prints the initial values of both arrays.
"Initially,"
"Integer array:" 
PrintValues( $myIntArray )
"Object array: " 
PrintValues( $myObjArray );

# Copies the first two elements from the integer array to the Object array.
[System.Array]::Copy( $myIntArray, $myObjArray, 2)
 
# Prints the values of the modified arrays.
"`nAfter copying the first two elements of the integer array to the Object array," 
"Integer array:" 
PrintValues( $myIntArray );
"Object array: " 
PrintValues( $myObjArray );

# Copies the last two elements from the Object array to the integer array.
[System.Array]::Copy( $myObjArray, $myObjArray.GetUpperBound(0) - 1, $myIntArray, $myIntArray.GetUpperBound(0) - 1, 2 )

# Prints the values of the modified arrays.
"`nAfter copying the last two elements of the Object array to the integer array," 
"integer array:"
PrintValues( $myIntArray )
"Object array: "
PrintValues( $myObjArray )
 
# SIG # Begin signature block
# MIID6QYJKoZIhvcNAQcCoIID2jCCA9YCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUdp8mp8iH5isfMLETBIEHVaKD
# uzCgggIKMIICBjCCAXOgAwIBAgIQ6QrzeNOdlYNOBOf8UE5TTDAJBgUrDgMCHQUA
# MBUxEzARBgNVBAMTClRob21hcyBMZWUwHhcNMDgwODI5MTEyNjIyWhcNMzkxMjMx
# MjM1OTU5WjAVMRMwEQYDVQQDEwpUaG9tYXMgTGVlMIGfMA0GCSqGSIb3DQEBAQUA
# A4GNADCBiQKBgQDtfaM67/oYBpAPhkGIoxCOS8FzT+tSDps4kduxaDH2fJZLHNWP
# nDSsMaH1/XehVbhlTWJvsBFX9Un+7ItZQjhGXKbHNBacQCq6JlGF0rVpvvzRwoxr
# XlIMgzL8ktMokuD4IsRZcq3dM9aIXx39a4kZGqutDV5UAdbnCEMeQwLDAQIDAQAB
# o18wXTATBgNVHSUEDDAKBggrBgEFBQcDAzBGBgNVHQEEPzA9gBDYIQcIXk629sZL
# z8VaTRpKoRcwFTETMBEGA1UEAxMKVGhvbWFzIExlZYIQ6QrzeNOdlYNOBOf8UE5T
# TDAJBgUrDgMCHQUAA4GBAMCrIgPs4Ijlgpr2xTdGnwYtskeV32rjPdvQOpf63q6q
# 9Keh4vuz9S8iJW1Mho43eJQhE0llmp0kT4q/E9DcY8wo+KP6Giugr8gDKj1QpcuF
# Izp6E0l5HBIow1JnpD6n2mmn1i80Dm+YJLyHYjouPzvvCefszR2s6nf/qR4ByzHz
# MYIBSTCCAUUCAQEwKTAVMRMwEQYDVQQDEwpUaG9tYXMgTGVlAhDpCvN4052Vg04E
# 5/xQTlNMMAkGBSsOAwIaBQCgeDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkG
# CSqGSIb3DQEJAzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEE
# AYI3AgEVMCMGCSqGSIb3DQEJBDEWBBTO/bDuFMkPEHMhN4Ze6FQwShPc+zANBgkq
# hkiG9w0BAQEFAASBgMgG9P3SiGiNXdONs+LKfS6AFzAmtYptMmifhfgEfhaAZeX0
# pDl6UpOWT+frcS7LIUrSLCXKhmw9CYg5s8EjcE6M2WxaGfwUqYH1wz982+lREt9h
# PmAtAiOdDV6dMoWeYprh/BdI3BoBgW3XafaDVRo7KqPN9+tLVZKga7wbb3sW
# SIG # End signature block
