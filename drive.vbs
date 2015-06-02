Set objCdDrive = CreateObject("WMPlayer.OCX.7")

Set colCDROM = objCdDrive.cdromCollection

 

If colCDROM.Count >= 1 then

For i = 0 to colCDROM.Count - 1

colCDROM.Item(i).Eject

Next

 

For i = 0 to colCDROM.Count - 1

colCDROM.Item(i).Eject

Next

 

End If
