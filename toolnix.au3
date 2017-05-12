Run("mkvtoolnix-gui.exe")
WinWaitActive("MKVToolNix GUI v10.0.0 ('To Drown In You') 64bit")
Local $i=1 ;Always start min from 1!!!
Local $judul = "glee.s01e"
While $i<=22
   If $i=1 Then
	  $juduls=$judul&"01"
	  Send($juduls&"{ENTER}")
	  ;AddFile()
   ElseIf $i=2 Then
	  $juduls=$judul&"02"
	  AddFile()
   ElseIf $i=3 Then
	  $juduls=$judul&"03"
	  AddFile()
   ElseIf $i=4 Then
	  $juduls=$judul&"04"
	  AddFile()
   ElseIf $i=5 Then
	  $juduls=$judul&"05"
	  AddFile()
   ElseIf $i=6 Then
	  $juduls=$judul&"06"
	  AddFile()
   ElseIf $i=7 Then
	  $juduls=$judul&"07"
	  AddFile()
   ElseIf $i=8 Then
	  $juduls=$judul&"08"
	  AddFile()
   ElseIf $i=9 Then
	  $juduls=$judul&"09"
	  AddFile()
   Else
	  $juduls=$judul&""&$i
	  AddFile()
   EndIf
   $i=$i+1
WEnd



Func CheckAvail()
   Local Const $sFilePath = "D:\Ænima\#manual\"&$juduls
   Local $iFileExists = FileExists($sFilePath)
   If $iFileExists Then
		AddFile()
	Else
		MsgBox($MB_SYSTEMMODAL, "", "The file doesn't exist." & @CRLF & "FileExist returned: " & $iFileExists)
	 EndIf
   FileDelete($sFilePath)
EndFunc

Func AddFile()
   Send("!a")
   WinWaitActive("[CLASS:#32770]")
   Local $cari="^lD:\Ænima\{#}manual{ENTER}!n*"&$juduls&"*{ENTER}+{TAB}"
   Send($cari)
   Sleep(500)
   Send("^a{ENTER}")
   Sleep(10000)
   Send("!t{DOWN}{DOWN}{SPACE}!q")
   WinWaitActive("Enter job description")
   Send("{ENTER}")
   Sleep(500)
   Send("^n")
   ;WinClose("MKVToolNix GUI v10.0.0 ('To Drown In You') 64bit")
   ;Local $hWnd = WinWait("[CLASS:#32770]", "", 5)
   ;WinWaitActive("[CLASS:ToolbarWindow32]")
   ;ControlFocus($hWnd, "", "DirectUIHWND2")
   ;ControlSend($hWnd,"","DirectUIHWND2","^l")
   ;ControlClick($hWnd,"","DirectUIHWND2")
EndFunc
