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
#cs
$cart = _IEGetObjById($oIE,"add-to-cart-button")
_IEAction($cart,"click")

Sleep(2000)

$checkout = _IEGetObjById($oIE,"hlb-ptc-btn-native")
_IEAction($checkout,"click")

Sleep(2000)
#ce




$wishlist = _IEGetObjById($oIE,"add-to-wishlist-button")
_IEAction($wishlist,"click")

Sleep(2000)
_IEImgClick($oIE, "Wish List", "alt")

Sleep(2000)


$continue = _IEGetObjById($oIE,"WLHUC_continue")
_IEAction($continue,"click")








