# MrNetTek
# eddiejackson.net/blog
# 9/15/2019
# free for public use 
# free to claim as your own


clear-host
 
# Encode
 
$File1 = "c:\setup\YourFile.txt"
 
$Content1 = get-content $File1
$Bytes = [System.Text.Encoding]::UTF8.GetBytes($Content1)
$Encoded = [System.Convert]::ToBase64String($Bytes)
#$Encoded | set-content ($File1 + ".b64")
Write-Host "ENCODED: " $Encoded
 
# Decode
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($Encoded)) | Out-File -Encoding "ASCII" c:\setup\YourFileDecoded.txt
$Content2 = get-content c:\setup\YourFileDecoded.txt
Write-Host "DECODED: " $Content2
