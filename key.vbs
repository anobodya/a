Set objArgs = Wscript.Arguments
Set WshShell = WScript.CreateObject("WScript.Shell")
For Each strArg in objArgs
  WshShell.SendKeys strArg
Next
