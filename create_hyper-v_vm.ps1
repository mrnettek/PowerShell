# MrNetTek
# eddiejackson.net/blog
# 9/2/2019
# free for public use 
# free to claim as your own


$VMName = "myVM1"
 
 $VM = @{
     Name = $VMName
     MemoryStartupBytes = 4294967296
     Generation = 2
     NewVHDPath = "D:\VM\$VMName\$VMName.vhdx"
     NewVHDSizeBytes = 107374182400
     BootDevice = "VHD"
     Path = "D:\VM\$VMName"
     SwitchName = (Get-VMSwitch).Name
 }
 
 New-VM @VM
