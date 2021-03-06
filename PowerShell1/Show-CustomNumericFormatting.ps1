$ivc = [System.Globalization.CultureInfo]::InvariantCulture
$dkc = [System.Globalization.CultureInfo]::CreateSpecificCulture("da-DK")
$gkc = [System.Globalization.CultureInfo]::CreateSpecificCulture("el-GR")


$value = 123

# Displays 00123
$value.ToString("00000")

# Displays 1.20
$value = 1.2
$value.ToString("0.00", $IVC)


# Displays 01.20
$value.ToString("00.00", $IVC)

# Displays 0001.20
$value.ToString("0000.00", $IVC)

# Displays 01,20
$value.ToString("00.00", $DKC)

# Displays 0.6
$value = .56;
$value.ToString("0.0", $IVC)

# Displays 1,234,567,890      
$value = 1234567890;
$value.ToString("0,0", $IVC)    

# Also Displays 1.234.567.890
$value.ToString("0,0", $gkc) 

# Displays 1,234,567,890.1  
$value = 1234567890.123456;
$value.ToString("0,0.0", $IVC)    

# Displays 1,234.57
$value = 1234.567890;
$value.ToString("0,0.00")

# Displays 123,456,789.57
$value = 123456789.567890;
$value.ToString("0,0.00")
