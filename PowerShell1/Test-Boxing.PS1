# Not published
[int]    $i = 123
[object] $o = $i
#

try { 
  [int] $j = [int16]$o 
  "Unboxing OK."
}  
catch   {
"{0} Error: Incorrect unboxing." -f  $e.Message
}