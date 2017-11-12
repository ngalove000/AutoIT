
#include<ImageSearch.au3>


;Truy cap vao amazon
Run("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe","",@SW_SHOWMAXIMIZED)
WinWaitActive("Tab mới - Google Chrome")
Send("amazon.com")
Send("{enter}")

#cs
;Dang nhap vao amazon
While True
Local $y = 0, $x = 0
$search = _ImageSearch(@ScriptDir&'\hello.bmp', 1, $x, $y, 0)
If $search = 1 Then
MouseMove($x, $y)
ExitLoop
EndIf
WEnd


While True
Local $y = 0, $x = 0
$search = _ImageSearch(@ScriptDir&'\signin.bmp', 1, $x, $y, 0)
If $search = 1 Then
MouseClick("left",$x, $y,1)
ExitLoop
EndIf
WEnd

While True
Local $y = 0, $x = 0
$search = _ImageSearch(@ScriptDir&'\continue.bmp', 1, $x, $y, 0)
If $search = 1 Then
ExitLoop
EndIf
WEnd

While True
Local $y = 0, $x = 0
$search = _ImageSearch(@ScriptDir&'\email.bmp', 1, $x, $y, 0)
If $search = 1 Then
ExitLoop
EndIf
WEnd

Sleep(2000)
Send("minhngaag@gmail.com")
Send("{enter}")


While True
Local $y = 0, $x = 0
$search = _ImageSearch(@ScriptDir&'\email.bmp', 1, $x, $y, 0)
If $search = 1 Then
ExitLoop
EndIf
WEnd

Sleep(2000)
Send("Ngalove000")
Send("{enter}")
#ce

While True
Local $y = 0, $x = 0
$search = _ImageSearch(@ScriptDir&'\search.bmp', 1, $x, $y, 0)
If $search = 1 Then
	MouseClick("left",$x/2,$y,1)
ExitLoop
EndIf
WEnd

Sleep(2000)
Send("bike lock belcycling")
Send("{enter}")

While True
Local $y = 0, $x = 0
$search = _ImageSearch(@ScriptDir&'\image.bmp', 1, $x, $y, 0)
If $search = 1 Then
	MouseClick("left",$x,$y,1)
ExitLoop
EndIf
WEnd



