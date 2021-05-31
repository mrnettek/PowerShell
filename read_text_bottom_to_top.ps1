# MrNetTek
# eddiejackson.net
# 5/4/2021
# free for public use
# free to claim as your own
 
Clear-Host
 
$fileName = 'C:\PowerShell\text.txt'
 
# READ FILE
$arr = Get-Content -Path $fileName
 
# REVERSE THE ARRAY
[array]::reverse($arr)
 
# DISPLAY ARRAY
foreach($line in $arr) {
    $line
}
 
# CLEAR SESSION
$fileName = ""
$arr.Clear()
$line = ""
