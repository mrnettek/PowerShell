$strComputer = "."

$colItems = get-wmiobject -class "Win32_NetworkLoginProfile" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Account Expires: " $objItem.AccountExpires
      write-host "Authorization Flags: " $objItem.AuthorizationFlags
      write-host "Bad Password Count: " $objItem.BadPasswordCount
      write-host "Caption: " $objItem.Caption
      write-host "Code Page: " $objItem.CodePage
      write-host "Comment: " $objItem.Comment
      write-host "Country Code: " $objItem.CountryCode
      write-host "Description: " $objItem.Description
      write-host "Flags: " $objItem.Flags
      write-host "Full Name: " $objItem.FullName
      write-host "Home Directory: " $objItem.HomeDirectory
      write-host "Home Directory Drive: " $objItem.HomeDirectoryDrive
      write-host "Last Logoff: " $objItem.LastLogoff
      write-host "Last Logon: " $objItem.LastLogon
      write-host "Logon Hours: " $objItem.LogonHours
      write-host "Logon Server: " $objItem.LogonServer
      write-host "Maximum Storage: " $objItem.MaximumStorage
      write-host "Name: " $objItem.Name
      write-host "Number Of Logons: " $objItem.NumberOfLogons
      write-host "Parameters: " $objItem.Parameters
      write-host "Password Age: " $objItem.PasswordAge
      write-host "Password Expires: " $objItem.PasswordExpires
      write-host "Primary Group Id: " $objItem.PrimaryGroupId
      write-host "Privileges: " $objItem.Privileges
      write-host "Profile: " $objItem.Profile
      write-host "Script Path: " $objItem.ScriptPath
      write-host "Setting ID: " $objItem.SettingID
      write-host "Units Per Week: " $objItem.UnitsPerWeek
      write-host "User Comment: " $objItem.UserComment
      write-host "User ID: " $objItem.UserId
      write-host "User Type: " $objItem.UserType
      write-host "Workstations: " $objItem.Workstations
      write-host
}


