$(gwmi win32_computersystem).Rename("PC-NewName")
#or
Rename-Computer -NewName PC-NewName -Restart
#or
Invoke-command -computer PC-OldName -script {rename-computer PC-NewName; restart-computer}
