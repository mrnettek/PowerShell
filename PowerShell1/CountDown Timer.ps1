$dtmTime = get-date -h 08 -mi 59 -s 00

do {$dtmCurrent = Get-Date -DisplayHint time
"The current time is " + $dtmCurrent
"counting to " + $dtmtime
start-sleep -s 2
} while ($dtmCurrent -lt $dtmTime)
"time reached `a"
