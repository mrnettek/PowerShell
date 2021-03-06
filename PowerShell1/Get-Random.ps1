<# 
.SYNOPSIS 
   Displays random numbers using System.Ransom
.DESCRIPTION 
   Re-implementation of MSDN sample script that generates three
   sets of random numbers.
.NOTES 
    File Name  : Get-Random.ps1 
    Author     : Thomas Lee - tfl@psp.co.uk 
    Requires   : PowerShell Version 2.0 
.LINK 
    This script posted to: 
        http://pshscripts.blogspot.com/
    This script posted to MSDN on:
        http://msdn.microsoft.com/en-us/library/2dx6wyd4.aspx
.EXAMPLE 
   Psh[Cookham8:M:\gd\gd76-06-28.sbd.digitalrbb.miller.112296.flac16]>C:\foo\Ger-random.ps1
       20 random integers from -100 to 100:
        45   -22    66   -39    73 
        63    24   -59     8   -80
        27    43     3    34   -78
        87    87   -17   -42   -43
    20 random integers from 1000 to 10000:
        7188    9561    2265    7523    5048
        4348    2609    2218    8073    4882
        7013    4453    8868    6519    2326
        5272    2285    8099    2945    6457
    20 random integers from 1 to 10:
         9     8    10     4     6
         3     4     5     4     9
         1    10     9    10     8
         8     3     2     9     5
#>  

# Create a random number object
$rnd = new-object System.Random

# now display three sets of random numbers
"20 random integers from -100 to 100:"
$a="";
1..20 |
       foreach {
         $a += "{0,6}" -f $rnd.Next(-100, 101)
         if (($_ % 5) -eq 0) {$a;$a=""}
       }

"20 random integers from 1000 to 10000:"      
$a=""
1..20 |
      foreach {
         $a += "{0,8}" -f $rnd.Next(1000, 10001)
         if ($_ % 5 -eq 0) {$a;$a=""}
      }

"20 random integers from 1 to 10:"
$a=""
1..20 |
      foreach    {
      $a += "{0,6}" -f $rnd.Next(1, 11)
      if ($_ % 5 -eq 0) {$a;$a=""}
      }