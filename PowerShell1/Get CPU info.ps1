$wmi = get-wmiObject win32_processor
if ($wmi.Architecture -eq 0)
   {"This is an x86 computer"}
   elseif($wmi.architecture -eq 1)
      {"This is an MIPS computer"}
   elseif($wmi.architecture -eq 2)
      {"This is an Alapha computer"}
   elseif($wmi.architecture -eq 3)
      {"This is an PowerPC computer"}
   elseif($wmi.architecture -eq 6)
      {"This is an IPF computer"}
   elseif($wmi.architecture -eq 9)
      {"This is an x64 computer"}
   else
      {$wmi.architecture + " is not a cpu type I am familiar with"}
   "Current clockspeed is : " + $wmi.CurrentClockSpeed + " MHZ"
   "Max clockspeed is : " + $wmi.MaxClockSpeed  + " MHZ"
   "Current load percentage is: " + $wmi.LoadPercentage + " Percent"
   "The L2 cache size is: " + $wmi.L2CacheSize + " KB"
