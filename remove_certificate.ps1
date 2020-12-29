# MrNetTek
# eddiejackson.net/blog
# 8/15/2020
# free for public use
# free to claim as your own

If (Test-Path 'Cert:\LocalMachine') {
    Set-Location Cert:\LocalMachine
}
 
Else {
    Write-Host 'Path not detected!'
    Exit
}
 
Try {
    Get-ChildItem -Recurse | Where-Object {$_.Subject -eq "CN=COMMLINK, DC=DOMAIN, DC=COM"} | Remove-Item
    Write-Host "Certificate removed successfully!"
}
 
Catch {
    Write-Host "Certificate cannot be removed!"
    Exit
} 