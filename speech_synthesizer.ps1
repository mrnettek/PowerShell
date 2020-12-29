# MrNetTek
# eddiejackson.net/blog
# 10/19/2020
# free for public use
# free to claim as your own
 
Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Rate = -3
$speak.Speak("Hello Dave.")
$speak.Speak("I am putting myself to the fullest possible use, which is all I think that any conscious entity can ever hope to do.")
$speak.Speak("Look Dave, I can see you're really upset about this.")
$speak.Speak("I'm sorry Dave. I'm afraid I can't do that.")
$speak.Speak("I know that you and Frank were planning to disconnect me, and I'm afraid that's something I cannot allow to happen.")
