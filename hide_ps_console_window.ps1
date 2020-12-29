# MrNetTek
# eddiejackson.net/blog
# 8/15/2020
# free for public use
# free to claim as your own
 
Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();
[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'
$refPointer = [Console.Window]::GetConsoleWindow()
[Console.Window]::ShowWindow($refPointer, 0)