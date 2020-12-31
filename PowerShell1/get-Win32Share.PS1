<#
.SYNOPSIS
    Demonstrates WMI and Win32_Share
.DESCRIPTION
    This script looks at objects retured from Get-WMIObject, and [WMICLASS] and demonstrates
	the use of a static method (create) and a dynamic or object method (delete). 
.NOTES
    File Name: get-win32share.ps1
	Author   : Thomas Lee - tfl@psp.co.uk
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    Left as an exercise for the reader
#>

# Display shares at start
$start = get-wmiobject win32_share | where {$_.name -match "Foo"}
if ($start) {
  "{0} foo shares at start, as follows:" -f $start.count; 
  $start} 
else {"No foo shares"}

# Create a foo22 share
"";"Adding Foo22 share"
$class = [WMICLASS]'win32_share'
$ret = $class.create("c:\foo", "foo22", 0,$null,"Test Share Creation with WMI")
if ($ret.returnvalue -eq 0){
"Foo22 Share created OK"}
else {
"Share not created, error code: {0}" -f $ret.returnvalue
}

# Display results
"";"Foo shares now:"
get-wmiobject win32_share | where {$_.name -match "foo"}
""

# Delete the foo22 share
$del = Get-WmiObject win32_share | where {$_.name -eq "foo22"}
$ret = $del.delete()
if ($ret.returnvalue -eq 0){
"share deleted OK"}
else {
"Share not deleted, error code: {0}" -f $ret.returnvalue
}

# Display final results
"";"Foo at the end:"
$finish = get-wmiobject win32_share | where {$_.name -match "foo"}
if ($finish) {
  "{0} foo shares at the end, as folllows:" -f $start.count; 
  $start} 
else {"No foo shares at the end:"}
""