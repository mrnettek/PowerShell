<#
.SYNOPSIS
   Shows details from WMI's Win32_DiskDriveToPartition class
.DESCRIPTION
    This critp shows details of disk drives on a system using 
	several WIn32_ classes
.NOTES
    File Name  : Get-WIn32DiskDrivetoDiskPartition.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\WMI\Get-Win32DiskDriveToDiskPartition.ps1'
    Win32_DiskDriveToDiskPartition
    Antecedent : \\COOKHAM8\root\cimv2:Win32_DiskDrive.DeviceID="\\\\.\\PHYSICALDRIVE5"
    Dependent  : \\COOKHAM8\root\cimv2:Win32_DiskPartition.DeviceID="Disk #5, Partition #0"

    Antecedent : \\COOKHAM8\root\cimv2:Win32_DiskDrive.DeviceID="\\\\.\\PHYSICALDRIVE0"
    Dependent  : \\COOKHAM8\root\cimv2:Win32_DiskPartition.DeviceID="Disk #0, Partition #0"

    Antecedent : \\COOKHAM8\root\cimv2:Win32_DiskDrive.DeviceID="\\\\.\\PHYSICALDRIVE0"
    Dependent  : \\COOKHAM8\root\cimv2:Win32_DiskPartition.DeviceID="Disk #0, Partition #1"

    Antecedent : \\COOKHAM8\root\cimv2:Win32_DiskDrive.DeviceID="\\\\.\\PHYSICALDRIVE0"
    Dependent  : \\COOKHAM8\root\cimv2:Win32_DiskPartition.DeviceID="Disk #0, Partition #2"

    Antecedent : \\COOKHAM8\root\cimv2:Win32_DiskDrive.DeviceID="\\\\.\\PHYSICALDRIVE0"
    Dependent  : \\COOKHAM8\root\cimv2:Win32_DiskPartition.DeviceID="Disk #0, Partition #3"
    
    Antecedent : \\COOKHAM8\root\cimv2:Win32_DiskDrive.DeviceID="\\\\.\\PHYSICALDRIVE6"
    Dependent  : \\COOKHAM8\root\cimv2:Win32_DiskPartition.DeviceID="Disk #6, Partition #0"

    Win32_DiskDrive

    Partitions DeviceID           Model                                          Size Caption
    ---------- --------           -----                                          ---- -------
             1 \\.\PHYSICALDRIVE5 WD My Book IEEE 1394 SBP2 Device      2000388096000 WD My Book IEEE 1394 SBP2 D...
             4 \\.\PHYSICALDRIVE0 ATA Hitachi HDS72107 SCSI Disk Device  750153761280 ATA Hitachi HDS72107 SCSI D...
             0 \\.\PHYSICALDRIVE1 TEAC USB   HS-CF Card USB Device                    TEAC USB   HS-CF Card USB D...
             0 \\.\PHYSICALDRIVE3 TEAC USB   HS-MS Card USB Device                    TEAC USB   HS-MS Card USB D...
             0 \\.\PHYSICALDRIVE4 TEAC USB   HS-SD Card USB Device                    TEAC USB   HS-SD Card USB D...
             0 \\.\PHYSICALDRIVE2 TEAC USB   HS-xD/SM USB Device                      TEAC USB   HS-xD/SM USB Device
             1 \\.\PHYSICALDRIVE6 WD My Book USB Device                 2000388096000 WD My Book USB Device

    Win32_DiskPartition

    NumberOfBlocks   : 144522
    BootPartition    : False
    Name             : Disk #0, Partition #0
    PrimaryPartition : True
    Size             : 73995264
    Index            : 0
    
    NumberOfBlocks   : 4209030
    BootPartition    : True
    Name             : Disk #0, Partition #1
    PrimaryPartition : True
    Size             : 2155023360
    Index            : 1
    
    NumberOfBlocks   : 102400000
    BootPartition    : False
    Name             : Disk #0, Partition #2
    PrimaryPartition : True
    Size             : 52428800000
    Index            : 2
    
    NumberOfBlocks   : 1358391296
    BootPartition    : False
    Name             : Disk #0, Partition #3
    PrimaryPartition : False
    Size             : 695496343552
    Index            : 3
    
    NumberOfBlocks   : 3907012608
    BootPartition    : False
    Name             : Disk #5, Partition #0
    PrimaryPartition : True
    Size             : 2000390455296
    Index            : 0

    NumberOfBlocks   : 3907012608
    BootPartition    : False
    Name             : Disk #6, Partition #0
    PrimaryPartition : True
    Size             : 2000390455296
    Index            : 0
#>

##
# Start of Script
##

# First, display Win32DiskDriveToDiskPartition class
# Only show two key properties
"Win32_DiskDriveToDiskPartition"
Get-WmiObject Win32_DiskDriveToDiskPartition | fl Antecedent, Dependent

# Show the other related classes
# First Win32_DiskDrive
"";"Win32_DiskDrive"
Get-WmiObject Win32_DiskDrive | ft -autosize

# And now related Disk Partitions
"";"Win32_DiskPartition"
Get-WmiObject Win32_DiskPartition | sort name

# End of script