<#
.SYNOPSIS
    This script encrypts then decrypts a string using AES
.DESCRIPTION
    This script re-implements an MSDN sample that first 
	encrypts a string then decrypts it. The crypto is done
    using AES. Running this script multiple times will result
    in differently encrypted quotes since a new key/IV is 
    generated each time you run the script.
.NOTES
    File Name  : Get-AesEnctyptedString.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/08/get-encryptedaesstringps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/09d0kyb3.aspx
    Posted to MS TechNet Script Centre at:
        http://gallery.technet.microsoft.com/ScriptCenter/en-us/bca188fa-7bb4-4429-92f0-7fd249ba95eb 
.EXAMPLE
    PSH [C:\foo]: .\Get-AesEncryptedString.ps1
    Quote:
    Things may come to those who wait, but only the things left by those who hustle. -- Abraham Lincoln
 
    Encrypted Quote:
    zp4gD/Mmu01Msr3V8d94Kvwut4ClaW+f1HyohT+QjpFN5FVNhyLcQIgia4iD2TcsK/SpLcm5cOi1/KM+d9ENeU2Lkn8fOZHpMnklUrABGDoM1BRQDfWNcVbMIOA4IUY
    zLoJ5huHKhnyPA2fobGouW33HOpONI0zR3KS4RdtD3M3QQsqHW2+QOkE4/Ls/5gCSbcTuP2FDkk3J9b+1XgqzJZx0jZIBl+moUcqA33xQdu5bGhwg1E8sk2oEU8AQyy
    XcRrS/h8vTLve8c0Tpj4f2Vg==
 
    Decrypted Quote:
    Things may come to those who wait, but only the things left by those who hustle. -- Abraham Lincoln
#>


# Best Practice!
Set-StrictMode  -version 2
 
# Two helper functions
function EncryptString{
param( $SymAlg, 
      [string] $inString
)
$inBlock = [System.Text.UnicodeEncoding]::Unicode.getbytes($instring)
$xfrm = $symAlg.CreateEncryptor()
$outBlock = $xfrm.TransformFinalBlock($inBlock, 0, $inBlock.Length);
return $outBlock;
}
 
function DecryptBytes {
param ($SymAlg, 
$inBytes
)
$xfrm = $symAlg.CreateDecryptor();
$outBlock = $xfrm.TransformFinalBlock($inBytes, 0, $inBytes.Length)
return [System.Text.UnicodeEncoding]::Unicode.GetString($outBlock)
}

# main script
$Quote = "Things may come to those who wait, but only the " +
         "things left by those who hustle. -- Abraham Lincoln"
"Quote:";$Quote;""
 
# Generate CSP, Key and IV
$AesCSP = New-Object System.Security.Cryptography.AesCryptoServiceProvider
$AesCSP.GenerateKey()
$AesCSP.GenerateIV()

# Encrypt quote
$EncQuote = EncryptString $aesCSP $quote
"Encrypted Quote:"
[System.Convert]::ToBase64String($encQuote)
""
 
# Now Decrypt 
"Decrypted Quote:"
DecryptBytes $AesCSP $EncQuote