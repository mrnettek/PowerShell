# get-vm.ps1
# Gets a list of all VMs running on this system
# Thomas Lee - tfl@psp.co.uk
 
# Get list from WMI
$vmbase = get-wmiobject Msvm_ComputerSystem -namespace root\virtualization

# Get hosting computer System Name

$HostName = $vmbase | ? {$_.Caption -eq "Hosting Computer System"} | select name

# print results
"{0} Virtual Machines on: {1} are:" -f $($vmbase.count-1),$Hostname.name

foreach ($vm in $vmbase) {
  if ($vm.caption -ne "Hosting Computer System") {$vm.elementname}
}

# SIG # Begin signature block
# MIID6QYJKoZIhvcNAQcCoIID2jCCA9YCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUzPoJSADhV2V5ue9lkLz5ulzi
# 2IOgggIKMIICBjCCAXOgAwIBAgIQ6QrzeNOdlYNOBOf8UE5TTDAJBgUrDgMCHQUA
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
# AYI3AgEVMCMGCSqGSIb3DQEJBDEWBBS8EJjaxyJrRUXhjFZZJw0lcwvIejANBgkq
# hkiG9w0BAQEFAASBgJX6msNuZNlExqD5AOr7vmFmTsn/LVRWLxJr9Svi3NSxa+AQ
# ebEe7zwon5/TKEZdIJuPqv6mr+Uq8d6CPjRSXY7Kh+2ZqHqGJERga0Ymgfks2s0+
# mXerX3c7FRQHEqxIKPJFcIzqss/rJl58k6z8YeIKHUfeqrlx5xdHYurrhzlU
# SIG # End signature block
