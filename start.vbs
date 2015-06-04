WScript.Sleep 5000
Dim WshShell
Set WshShell = WScript.CreateObject ("WScript.Shell")
WshShell.Run "C:\xampplite\apache\bin\httpd.exe", 0, True
WshShell = Nothing
WScript.Sleep 5000
WScript.Quit
