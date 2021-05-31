# MrNetTek
# eddiejackson.net
# 5/22/2021
# free for public use
# free to claim as your own
  
Clear-Host
 
 
Start-Transcript -Path 'C:\PowerShell\lab\certificate\log.txt'
Import-Module PKI -WarningAction SilentlyContinue
  
#Sign Cert Info
$Certificate = @{
        Subject           = 'CodeSign.com'
        Type              = "CodeSign"
        CertStoreLocation = "Cert:\CurrentUser\My"
}
  
#Generate Signed Certificate
$SignedCertificate = New-SelfSignedCertificate @Certificate
  
#Show Signed Cert
$SignedCertificate
 
#Add to LocalMachine Store
$Store = New-Object System.Security.Cryptography.X509Certificates.X509Store("Root","LocalMachine")
$Store.Open('ReadWrite')
$Store.Add($SignedCertificate)
$Store.Close()
 
#Add to Trusted Publisher Store
$Store = New-Object System.Security.Cryptography.X509Certificates.X509Store("TrustedPublisher","LocalMachine")
$Store.Open('ReadWrite')
$Store.Add($SignedCertificate)
$Store.Close()
Stop-Transcript
 
 
#NOTES
 
#$Store = New-Object System.Security.Cryptography.X509Certificates.X509Store("Root","LocalMachine")
#$Store.Open('ReadWrite')
 
#$SignedCertificate = $Store.Certificates | Where-Object {$_.Thumbprint -eq '61e6a23c9981798d2d56ac65ae2c637149c05ba0'}
#$Store.Remove($SignedCertificate)
#$Store.Close()
