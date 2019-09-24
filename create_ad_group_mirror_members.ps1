# MrNetTek
# eddiejackson.net/blog
# 9/15/2019
# free for public use 
# free to claim as your own


# The New AD Group Name
$NewGrpName = "Pilot"
 
# Group Scope: DomainLocal, Global, Universal
$GrpScope = "Global"
 
# New AD Group Description
$GrpDescription = "This is a pilot group"
 
# AD Group Category: Distribution, Security
$GrpCat = "Security"
 
# AD Path of OU
$OUPath = "OU=groups,OU=YourOU,DC=YourDomain,DC=com"
 
# Use an existing AD Group to mirror membership
$ExistingGrpName = "MirrorThisGroupMembers"
 
# Your Domain Name
$Domain = "YourDomain.com"
 
# Cmdlet command line using above variables 
New-ADGroup -name $NewGrpName -GroupScope $GrpScope -description $GrpDescription -GroupCategory $GrpCat -path $OUPath -passthru |
Add-ADGroupMember -member (Get-ADGroupMember $ExistingGrpName) -passthru |
Get-ADGroupMember | Select Name
