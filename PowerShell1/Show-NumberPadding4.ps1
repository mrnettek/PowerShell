[double[]] $dblValues = 9034521202.93217412, 9034521202

Write-Debug "DblValues:"
Write-Debug $dblvalues[0]
Write-Debug $dblvalues[1]

foreach ($dblValue in $dblValues)  {
   $decSeparator = [System.Globalization.NumberFormatInfo]::CurrentInfo.NumberDecimalSeparator
   $fmt, $formatString = "";
   Write-debug ("Double value: {0}" -f $dblvalue)
   if ($dblValue.ToString() -contains $DecSeparator)   {
      $digits = $dblValue.ToString().IndexOf($decSeparator)
      write-Debug "Has dec separator"
      Write-Debug $digits
      $fmt = (new-object String '0', 5)  + (new-object String  '#', $digits) + ".##"
      Write-Debug $fmt
   }
   else    {
      Write-Debug "NO dec separator"
      $fmt = (new-object String '0') + ($dblValue.ToString().Length)
      Write-Debug $fmt
   }
   $formatString = "{0,20:" + $fmt + "}"
   Write-Debug $formatstring
  $dblValue.ToString($fmt)
  $formatString -f $dblValue
}

#/ The example displays the following output:
#/       000009034521202.93
#//         000009034521202.93
#//       9034521202
#//                 9034521202          