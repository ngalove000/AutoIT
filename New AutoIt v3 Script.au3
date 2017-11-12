; Same as Example 1, except instead of using click, give the element focus
; and then use ControlSend to send Enter.  Use this technique when the
; browser-side scripting associated with a click action prevents control
; from being automatically returned to your code.

#include <IE.au3>
#include <ImageSearch.au3>
#RequireAdmin
Local $oIE = _IECreate("https://www.amazon.com/Stainless-Electrostatic-Technology-Resistance-Waterproof/dp/B06XX21DJT/ref=sr_1_1?ie=UTF8&qid=1510466677&sr=8-1&keywords=B06XX21DJT")
Send("{f11}")

Sleep(3000)

$mail = _IEGetObjById($oIE,"swfImage")
_IEAction($mail,"click")
Sleep(2000)
Send("{ESC}")

Sleep(2000)

$fb = _IEGetObjById($oIE,"facebook")
_IEAction($fb,"click")
Sleep(2000)
Send("!{f4}")

Sleep(2000)

$tw = _IEGetObjById($oIE,"twitter")
_IEAction($tw,"click")
Sleep(2000)
Send("!{f4}")

Sleep(2000)

$pin = _IEGetObjById($oIE,"pinterest")
_IEAction($pin,"click")
Sleep(2000)
Send("!{f4}")








