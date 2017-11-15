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


;like cmt
Local $oInputs = _IETagNameGetCollection($oIE, "div")
For $oInput In $oInputs
    If($oInput.className == "cr-helpful-vote-button cr-unhelpful-vote-feedback cr-unhelpful-vote-success cr-helpful-vote-error cr-helpful-vote-component") Then

_IEAction($oInput,"scrollintoview")
Sleep(3000)
_IEAction($oInput,"click")

		EndIf
Next

Sleep(2000)
MsgBox(0,0,"Xong")

#cs
;gio hang
$cart = _IEGetObjById($oIE,"add-to-cart-button")
_IEAction($cart,"click")

Sleep(2000)

Local $oInputs = _IETagNameGetCollection($oIE, "a")
For $oInput In $oInputs
    If($oInput.className == "hucSprite s_checkout hlb-checkout-button") Then

_IEAction($oInput,"click")

	EndIf
Next
#ce

#cs
$wishlist = _IEGetObjById($oIE,"add-to-wishlist-button")
_IEAction($wishlist,"click")

Sleep(2000)
_IEImgClick($oIE, "Wish List", "alt")

Sleep(2000)


$continue = _IEGetObjById($oIE,"WLHUC_continue")
_IEAction($continue,"click")
#ce




#cs

Local $oInputs = _IETagNameGetCollection($oIE, "li")
For $oInput In $oInputs
    If($oInput.className == "a-spacing-small item") Then

		$posx = _IEPropertyGet($oInput,"screenx")
		$posy = _IEPropertyGet($oInput,"screeny")
		MouseMove($posx,$posy)
		Sleep(2000)
	EndIf
Next
MsgBox(0,0,"Xong")
#ce









