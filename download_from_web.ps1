# MrNetTek
# eddiejackson.net/blog
# 9/15/2019
# free for public use 
# free to claim as your own

$Site = 'http://eddiejackson.net/apps'
 
$Type1 = (Invoke-WebRequest –Uri $Site).Links | ? href -like *zip*
$Type2 = (Invoke-WebRequest –Uri $Site).Links | ? href -like *exe*
$List = $Type1 + $Type2
 
Clear-Host
 
$List | select -Unique href | % { 
 
        $File = $_.href
        $URL = "http://eddiejackson.net/apps/$File"
 
        #Write-Host $File
        Invoke-WebRequest -Uri $URL -OutFile "c:\downloads\$File" -Verbose        
         
     }
