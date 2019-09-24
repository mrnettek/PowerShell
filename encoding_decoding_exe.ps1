# MrNetTek
# eddiejackson.net/blog
# 6/21/2019
# free for public use 
# free to claim as your own


clear-host
 
# Encode
 
$FilePath = "c:\setup\foo.exe"
$File = [System.IO.File]::ReadAllBytes($FilePath);
 
# returns the base64 string
$Base64String = [System.Convert]::ToBase64String($File);
 
# Decode
 
function Convert-StringToBinary {
[CmdletBinding()]
param (
[string] $EncodedString
, [string] $FilePath = (‘{0}\{1}’ -f $env:TEMP, [System.Guid]::NewGuid().ToString())
)
 
try {
if ($EncodedString.Length -ge 1) {
 
# decodes the base64 string
$ByteArray = [System.Convert]::FromBase64String($EncodedString);
[System.IO.File]::WriteAllBytes($FilePath, $ByteArray);
}
}
catch {
}
 
Write-Output -InputObject (Get-Item -Path $FilePath);
}
 
$DecodedFile = Convert-StringToBinary -EncodedString $Base64String -FilePath C:\setup\foo.exe
