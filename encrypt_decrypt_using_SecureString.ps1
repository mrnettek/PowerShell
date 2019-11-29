# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

# create aes key - keep this secure at all times
$aesKey = (2,3,1,4,54,32,144,23,5,3,1,41,36,31,18,175,6,17,1,9,5,1,76,23)
 
# set string
$plaintext = "test12345$"
 
clear-host
 
Write-Host "Plaintext: $plaintext`n"
 
# convert to secure string object
$Secure = ConvertTo-SecureString -String $plaintext -AsPlainText -Force
 
 
# store secure object - use ouput in the decryption process. Could be saved to file.
# remember, the aeskey should remain physically secured
$encrypted = ConvertFrom-SecureString -SecureString $Secure -Key $aesKey
Write-Host "Encrypted:`n$encrypted`n"
 
# create new object using $encrypted and $aeskey
$secureObject = ConvertTo-SecureString -String $encrypted -Key $aesKey
 
# perform decryption from secure object
$decrypted = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureObject)
$decrypted = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($decrypted)
$decrypted
