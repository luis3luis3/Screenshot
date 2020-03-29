#include <ScreenCapture.au3>
#include <Date.au3>
#include <MsgBoxConstants.au3>

HotKeySet("{PGUP}",FotoSpeichern)
$count = 0

While(1)
   Sleep(1000)
   WEnd


Func FotoSpeichern ()
    Local $hBmp
    ; Capture full screen
	$time=_NowTime()
    $hBmp = _ScreenCapture_Capture("")


    ; Save bitmap to file
    _ScreenCapture_SaveImage(@MyDocumentsDir & "\" & @MDAY & @MON & @YEAR & "_" & @HOUR & @MIN & @SEC &".jpg", $hBmp)
ConsoleWrite("print")

;    ShellExecute(@MyDocumentsDir & "\GDIPlus_Image.jpg")
EndFunc   ;==>FotoSpeichern