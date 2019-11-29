# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

$normalizedData = ""
$jsonData = ""
$data = ""

# data - this could be read from a text file
$data = [PSCustomObject] @{
FirstName = "Eddie";
LastName = "Jackson";
Zip = "12345";
Mobile = "111-222-3333";
}

# this will convert to json format
$jsonData = ConvertTo-Json $data


clear-host

Write-Host "[ Show Json Data ]`n"
$jsonData
Write-Host "`n`n"

# this will convert json format to powershell format
Write-Host "`n[ Show Normalized Data ]"
$normalizedData = ConvertFrom-Json $jsonData # | ft -HideTableHeaders
$normalizedData

$normalizedData = ""
$jsonData = ""
$data = ""
