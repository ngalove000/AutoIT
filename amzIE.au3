#include<IE.au3>
#RequireAdmin
Local $oIE = _IECreate("amazon.com")

WinSetState("Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more - Internet Explorer","", @SW_MAXIMIZE)

#cs
;Code dang nhap
_IELinkClickByText($oIE, "Sign in")
Send("minhngaag@gmail.com")
Send("{enter}")
Sleep(2000)
Send("Ngalove000")
Send("{enter}")
#ce


;lay tieu de cua san pham theo ASIN
_IELoadWait($oIE)
Local $oInputs = _IETagNameGetCollection($oIE, "input")
Local $sTxt = ""
For $oInput In $oInputs
	If($oInput.name=="field-keywords") Then
		_IEAction($oInput,"focus")
		;B06XX21DJT ASIN bike lock belcycling
		Send("B06XX21DJT")
		Send("{enter}")
		ExitLoop
	EndIf
Next

_IELoadWait($oIE)
Local $title
$tags = $oIE.document.getElementsByTagName("h2")
For $tag In $tags
	$title = $tag.innerHTML
	ExitLoop
Next

;MsgBox(0,0,$title)
Sleep(3000)

;Tim kiem tu khoa va di so sanh voi tieu de san pham - neu dung thi truy cap vao - khong thi di tiep
Local $key = "Bike locks"

Local $oInputs = _IETagNameGetCollection($oIE, "input")
Local $sTxt = ""
For $oInput In $oInputs
	If($oInput.name=="field-keywords") Then
		_IEFormElementSetValue($oInput,"")
		_IEAction($oInput,"focus")
		Send($key)
		Sleep(2000)
		Send("{enter}")
		ExitLoop
	EndIf
Next

Sleep(5000)
_IELoadWait($oIE)
;Local $title = "Mini Bicycle U-lock with Transit Frame Mount Bracket, Stainless Steel Keys, Electrostatic Coating, Anti Theft Technology, High Security Hardened Bike Keeper, Rust Resistance,Best Waterproof Cylinder"



	Local $page
	For $page = 1 To 9 Step 1
		If(_IELinkClickByText($oIE,$title)) Then
			ExitLoop
		EndIf
	Local $next = _IEGetObjById($oIE,"pagnNextLink")
	_IEAction($next,"click")
	_IELoadWait($oIE)
	Sleep(3000)
	Next



;To den tieu de
$title = $oIE.document.getElementById('productTitle')
$posx = _IEPropertyGet($title,"screenx")
$posy = _IEPropertyGet($title,"screeny")
MouseClick("main",$posx+20,$posy+20,3)

Sleep(3000)


;Share
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

