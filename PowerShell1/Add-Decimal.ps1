# add-decimal1.ps1
# Sample for MSDN
 
# Create decimal numbers ($d1, $d2)
[decimal] $d1 = 12.1
[decimal] $d2 = 12.2

# Add - first using PowerShell, then using .NET
$d3 = $d1+$d2
$d4 = [system.decimal]::add($d1,$d2)

# print details
"`$d1 is of type: {0}" -f $d1.gettype().name
"`$d2 is of type: {0}" -f $d2.gettype().name
"`$d1 ({0}) plus `$d2 ({1}) equals: {2}" -f $d1,$d2,$d3
"`$d3 is of type: {0}" -f $d3.gettype().name
"`$d1 ({0}) plus `$d2 ({1}) (using .NET) equals: {2}" -f $d1,$d2,$d4
"`$d4 is of type: {0}" -f $d3.gettype().name