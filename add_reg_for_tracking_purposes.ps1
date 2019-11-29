# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

Function Add-TrackData($key,$value)
{
    $trackPath = "HKCU:\Software\Tracking"
    $tStamp = Get-Date -Format g
 
    if(-not (Test-Path -path $trackPath))
        {
            New-Item -Path HKCU:\Software\Tracking | Out-null
            New-ItemProperty -Path $trackPath -Name $key -Value $value -PropertyType String | Out-Null
            Set-ItemProperty -Path $trackPath -Name "Timestamp" -Value $tStamp | Out-Null
        }
    Else
        {
            Set-ItemProperty -Path $trackPath -Name $key -Value $value | Out-Null
            Set-ItemProperty -Path $trackPath -Name "Timestamp" -Value $tStamp | Out-Null
        }
 
} 
 
Add-TrackData -key AppName -value AppValue
