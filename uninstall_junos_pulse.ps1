# MrNetTek
# eddiejackson.net/blog
# 9/15/2019
# free for public use 
# free to claim as your own


$MSI_Installer = "C:\Windows\system32\msiexec.exe"
 
# suppress errors
$ErrorActionPreference= 'silentlycontinue'
 
# perform uninstalls
Start-Process $MSI_Installer -ArgumentList "/x {D9687A51-90CB-4691-A458-88517D35A51E} /qn"
Start-Process $MSI_Installer -ArgumentList "/x {1B2D9376-AD97-480C-A3D6-5FBB822294C4} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {EF3E08E0-4B9B-47A4-A318-4C2C816C1C47} /qn"
Start-Process $MSI_Installer -ArgumentList "/x {4320DFAD-6F8C-4FBA-AD0C-5344CD70C9E9} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {D5DE4E9C-D0E8-470B-8F5D-D4F8CA6DF85D} /qn"
Start-Process $MSI_Installer -ArgumentList "/x {B0CFE1C6-6A54-4165-AFC7-62D9259D2EB5} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {BCA8F252-3DA1-4578-B5A0-FC75197FAF0B} /qn"
Start-Process $MSI_Installer -ArgumentList "/x {E936D7F2-D9B3-494E-8433-67A2A496ACF0} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {35A74498-5DA0-4DBC-A91F-C89BEA8090AF} /qn"
Start-Process $MSI_Installer -ArgumentList "/x {557686F0-9C00-456F-AED6-41ABF3DE1A0D} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {20ECE8AB-3378-4A41-83C8-5DA3037F6135} /qn"
Start-Process $MSI_Installer -ArgumentList "/x {9F7F010D-3137-4496-970F-D77A61CE8E92} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {7A39E355-B3CA-4217-A508-05C2FCB7766B} /qn"
Start-Process $MSI_Installer -ArgumentList "/x {6E31DBE8-6F48-4D22-AB10-EA76718532C4} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {7D2309C6-3F67-48B8-B524-522E2756795E} /qn"
Start-Process $MSI_Installer -ArgumentList "/x {D6CAE4C8-27B8-4984-988E-B5A4868070CC} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {BAFD722A-4B9A-4152-B565-5BAFDA00A6BE} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {89BF84A0-CADC-4C7F-8BF4-21F4A2733746} /qn"
 
Start-Process $MSI_Installer -ArgumentList "/x {F35FA276-FDB7-42E2-B024-614CE35C0778} /qn"
 
Start-Process " ""C:\Program Files (x86)\Juniper Networks\Network Connect 6.5.0.16789\uninstall.exe"" " -ArgumentList "/S _?=""C:\Program Files (x86)\Juniper Networks\Network Connect 6.5.0.16789"""
Start-Process " ""C:\Program Files (x86)\Juniper Networks\Network Connect 7.3.0.26561\uninstall.exe"" " -ArgumentList "/S _?=""C:\Program Files (x86)\Juniper Networks\Network Connect 7.3.0.26561"""
Start-Process " ""C:\Program Files (x86)\Juniper Networks\Network Connect 7.1.16\uninstall.exe"" " -ArgumentList "/S _?=""C:\Program Files (x86)\Juniper Networks\Network Connect 7.1.16"""
Start-Process " ""C:\Program Files (x86)\Juniper Networks\Network Connect 8.1\uninstall.exe"" " -ArgumentList "/S _?=""C:\Program Files (x86)\Juniper Networks\Network Connect 8.1"""
Start-Process " ""C:\Program Files (x86)\Juniper Networks\Network Connect 8.2\uninstall.exe"" " -ArgumentList "/S _?=""C:\Program Files (x86)\Juniper Networks\Network Connect 8.2"""
Start-Process " ""C:\Program Files (x86)\Juniper Networks\Network Connect 8.3\uninstall.exe"" " -ArgumentList "/S _?=""C:\Program Files (x86)\Juniper Networks\Network Connect 8.3"""
Start-Process " ""C:\Program Files (x86)\Juniper Networks\Junos Pulse\PulseUninstall.exe"" " -ArgumentList "/silent=1"
Start-Process " ""C:\Program Files (x86)\Pulse Secure\Pulse\PulseUninstall.exe"" " -ArgumentList "/silent=1"
 
[Environment]::Exit(0)
