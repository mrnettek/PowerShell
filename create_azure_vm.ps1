# MrNetTek
# eddiejackson.net/blog
# 9/15/2019
# free for public use 
# free to claim as your own


# 1 Create variables to store the location and resource group names.
$location = "local"
$ResourceGroupName = "myRG1"
 
New-AzureRmResourceGroup `
  -Name $ResourceGroupName `
  -Location $location
 
 
# 2 Create variables to store the storage account name and the storage account SKU information
$StorageAccountName = "mySA1"
$SkuName = "Standard_LRS"
 
 
# 3 Create a new storage account
$StorageAccount = New-AzureRMStorageAccount `
  -Location $location `
  -ResourceGroupName $ResourceGroupName `
  -Type $SkuName `
  -Name $StorageAccountName
 
Set-AzureRmCurrentStorageAccount `
  -StorageAccountName $storageAccountName `
  -ResourceGroupName $resourceGroupName
 
 
# 4 Create a subnet configuration
$subnetConfig = New-AzureRmVirtualNetworkSubnetConfig `
  -Name "mySubnet1" `
  -AddressPrefix 192.168.1.0/24
 
 
# 5 Create a virtual network
$vnet = New-AzureRmVirtualNetwork `
  -ResourceGroupName $ResourceGroupName `
  -Location $location `
  -Name "myVNet1" `
  -AddressPrefix 192.168.0.0/16 `
  -Subnet $subnetConfig
 
 
# 6 Create a public IP address and specify a DNS name
$pip = New-AzureRmPublicIpAddress `
  -ResourceGroupName $ResourceGroupName `
  -Location $location `
  -AllocationMethod Static `
  -IdleTimeoutInMinutes 4 `
  -Name "mypublicdns$(Get-Random)"
 
 
# 7 Create an inbound network security group rule for port 3389
$nsgRuleRDP = New-AzureRmNetworkSecurityRuleConfig `
  -Name "myNSGRuleRDP" `
  -Protocol Tcp `
  -Direction Inbound `
  -Priority 1000 `
  -SourceAddressPrefix * `
  -SourcePortRange * `
  -DestinationAddressPrefix * `
  -DestinationPortRange 3389 `
  -Access Allow
 
 
# 8 Create an inbound network security group rule for port 80
$nsgRuleWeb = New-AzureRmNetworkSecurityRuleConfig `
  -Name "myNSGRuleWWW1" `
  -Protocol Tcp `
  -Direction Inbound `
  -Priority 1001 `
  -SourceAddressPrefix * `
  -SourcePortRange * `
  -DestinationAddressPrefix * `
  -DestinationPortRange 80 `
  -Access Allow
 
 
# 9 Create a network security group
$nsg = New-AzureRmNetworkSecurityGroup `
  -ResourceGroupName $ResourceGroupName `
  -Location $location `
  -Name "myNSG1" `
  -SecurityRules $nsgRuleRDP,$nsgRuleWeb
 
 
# 10 Create a virtual network card and associate it with public IP address and NSG
$nic = New-AzureRmNetworkInterface `
  -Name "myNic1" `
  -ResourceGroupName $ResourceGroupName `
  -Location $location `
  -SubnetId $vnet.Subnets[0].Id `
  -PublicIpAddressId $pip.Id `
  -NetworkSecurityGroupId $nsg.Id
 
 
# 11 Define a credential object to store the username and password for the VM
$UserName = 'AzureUsername'
$Password = 'AzurePassword'| ConvertTo-SecureString -Force -AsPlainText
$Credential = New-Object PSCredential($UserName,$Password)
 
 
# 12 Create the VM configuration object
$VmName = "VirtualMachinelatest"
$VmSize = "Standard_A1"
$VirtualMachine = New-AzureRmVMConfig `
  -VMName $VmName `
  -VMSize $VmSize
 
$VirtualMachine = Set-AzureRmVMOperatingSystem `
  -VM $VirtualMachine `
  -Windows `
  -ComputerName "LabPC1" `
  -Credential $Credential
 
$VirtualMachine = Set-AzureRmVMSourceImage `
  -VM $VirtualMachine `
  -PublisherName "MicrosoftWindowsServer" `
  -Offer "WindowsServer" `
  -Skus "2016-Datacenter" `
  -Version "latest"
 
 
# 13 Sets the operating system disk properties on a VM.
$VirtualMachine = Set-AzureRmVMOSDisk `
  -VM $VirtualMachine `
  -CreateOption FromImage | `
  Set-AzureRmVMBootDiagnostics -ResourceGroupName $ResourceGroupName `
  -StorageAccountName $StorageAccountName -Enable |`
  Add-AzureRmVMNetworkInterface -Id $nic.Id
 
 
# 14 Create the VM.
New-AzureRmVM `
  -ResourceGroupName $ResourceGroupName `
  -Location $location `
  -VM $VirtualMachine
 
# 15 Return the IP address
$IP = Get-AzureRmPublicIpAddress -ResourceGroupName $ResourceGroupName | Select IpAddress
 
# 16 Connect to VM
mstsc /v $IP
