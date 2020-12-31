$path = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion'
$id = get-itemproperty -path $path -name InstallDate
$d = get-date -year 1970 -month 1 -day 1 -hour 0 -minute 0 -second 0

($d.AddSeconds($id.InstallDate)).ToLocalTime().AddHours(2).ToString() -f "dd.MM.yyyy HH:mm:ss" 

$os = get-wmiobject win32_operatingsystem
$os.ConvertToDateTime($os.InstallDate).ToString() -f "dd.MM.yyyy HH:mm:ss"

