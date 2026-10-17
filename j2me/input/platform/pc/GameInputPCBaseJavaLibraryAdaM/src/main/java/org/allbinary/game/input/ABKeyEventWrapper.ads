-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package org.allbinary.game.input.ABKeyEventWrapper_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;

   type ABKeyEventWrapper is tagged;
   type ABKeyEventWrapper_Access is access all ABKeyEventWrapper'Class;
   type ABKeyEventWrapper_Access_Array is array (Natural range <>) of ABKeyEventWrapper_Access;
   type ABKeyEventWrapper_Access_Array_Access is access all ABKeyEventWrapper_Access_Array;

   type ABKeyEventWrapper is new Java_Object with record
      VK_ENTER : Integer;
      VK_BACK_SPACE : Integer;
      VK_TAB : Integer;
      VK_CANCEL : Integer;
      VK_CLEAR : Integer;
      VK_SHIFT : Integer;
      VK_CONTROL : Integer;
      VK_ALT : Integer;
      VK_PAUSE : Integer;
      VK_CAPS_LOCK : Integer;
      VK_ESCAPE : Integer;
      VK_SPACE : Integer;
      VK_PAGE_UP : Integer;
      VK_PAGE_DOWN : Integer;
      VK_END : Integer;
      VK_HOME : Integer;
      VK_LEFT : Integer;
      VK_UP : Integer;
      VK_RIGHT : Integer;
      VK_DOWN : Integer;
      VK_COMMA : Integer;
      VK_MINUS : Integer;
      VK_PERIOD : Integer;
      VK_SLASH : Integer;
      VK_0 : Integer;
      VK_1 : Integer;
      VK_2 : Integer;
      VK_3 : Integer;
      VK_4 : Integer;
      VK_5 : Integer;
      VK_6 : Integer;
      VK_7 : Integer;
      VK_8 : Integer;
      VK_9 : Integer;
      VK_SEMICOLON : Integer;
      VK_EQUALS : Integer;
      VK_A : Integer;
      VK_B : Integer;
      VK_C : Integer;
      VK_D : Integer;
      VK_E : Integer;
      VK_F : Integer;
      VK_G : Integer;
      VK_H : Integer;
      VK_I : Integer;
      VK_J : Integer;
      VK_K : Integer;
      VK_L : Integer;
      VK_M : Integer;
      VK_N : Integer;
      VK_O : Integer;
      VK_P : Integer;
      VK_Q : Integer;
      VK_R : Integer;
      VK_S : Integer;
      VK_T : Integer;
      VK_U : Integer;
      VK_V : Integer;
      VK_W : Integer;
      VK_X : Integer;
      VK_Y : Integer;
      VK_Z : Integer;
      VK_OPEN_BRACKET : Integer;
      VK_BACK_SLASH : Integer;
      VK_CLOSE_BRACKET : Integer;
      VK_NUMPAD0 : Integer;
      VK_NUMPAD1 : Integer;
      VK_NUMPAD2 : Integer;
      VK_NUMPAD3 : Integer;
      VK_NUMPAD4 : Integer;
      VK_NUMPAD5 : Integer;
      VK_NUMPAD6 : Integer;
      VK_NUMPAD7 : Integer;
      VK_NUMPAD8 : Integer;
      VK_NUMPAD9 : Integer;
      VK_MULTIPLY : Integer;
      VK_ADD : Integer;
      VK_SEPARATER : Integer;
      VK_SEPARATOR : Integer;
      VK_SUBTRACT : Integer;
      VK_DECIMAL : Integer;
      VK_DIVIDE : Integer;
      VK_DELETE : Integer;
      VK_NUM_LOCK : Integer;
      VK_SCROLL_LOCK : Integer;
      VK_F1 : Integer;
      VK_F2 : Integer;
      VK_F3 : Integer;
      VK_F4 : Integer;
      VK_F5 : Integer;
      VK_F6 : Integer;
      VK_F7 : Integer;
      VK_F8 : Integer;
      VK_F9 : Integer;
      VK_F10 : Integer;
      VK_F11 : Integer;
      VK_F12 : Integer;
      VK_F13 : Integer;
      VK_F14 : Integer;
      VK_F15 : Integer;
      VK_F16 : Integer;
      VK_F17 : Integer;
      VK_F18 : Integer;
      VK_F19 : Integer;
      VK_F20 : Integer;
      VK_F21 : Integer;
      VK_F22 : Integer;
      VK_F23 : Integer;
      VK_F24 : Integer;
      VK_PRINTSCREEN : Integer;
      VK_INSERT : Integer;
      VK_HELP : Integer;
      VK_META : Integer;
      VK_BACK_QUOTE : Integer;
      VK_QUOTE : Integer;
      VK_KP_UP : Integer;
      VK_KP_DOWN : Integer;
      VK_KP_LEFT : Integer;
      VK_KP_RIGHT : Integer;
      VK_DEAD_GRAVE : Integer;
      VK_DEAD_ACUTE : Integer;
      VK_DEAD_CIRCUMFLEX : Integer;
      VK_DEAD_TILDE : Integer;
      VK_DEAD_MACRON : Integer;
      VK_DEAD_BREVE : Integer;
      VK_DEAD_ABOVEDOT : Integer;
      VK_DEAD_DIAERESIS : Integer;
      VK_DEAD_ABOVERING : Integer;
      VK_DEAD_DOUBLEACUTE : Integer;
      VK_DEAD_CARON : Integer;
      VK_DEAD_CEDILLA : Integer;
      VK_DEAD_OGONEK : Integer;
      VK_DEAD_IOTA : Integer;
      VK_DEAD_VOICED_SOUND : Integer;
      VK_DEAD_SEMIVOICED_SOUND : Integer;
      VK_AMPERSAND : Integer;
      VK_ASTERISK : Integer;
      VK_QUOTEDBL : Integer;
      VK_LESS : Integer;
      VK_GREATER : Integer;
      VK_BRACELEFT : Integer;
      VK_BRACERIGHT : Integer;
      VK_AT : Integer;
      VK_COLON : Integer;
      VK_CIRCUMFLEX : Integer;
      VK_DOLLAR : Integer;
      VK_EURO_SIGN : Integer;
      VK_EXCLAMATION_MARK : Integer;
      VK_INVERTED_EXCLAMATION_MARK : Integer;
      VK_LEFT_PARENTHESIS : Integer;
      VK_NUMBER_SIGN : Integer;
      VK_PLUS : Integer;
      VK_RIGHT_PARENTHESIS : Integer;
      VK_UNDERSCORE : Integer;
      VK_WINDOWS : Integer;
      VK_CONTEXT_MENU : Integer;
      VK_FINAL : Integer;
      VK_CONVERT : Integer;
      VK_NONCONVERT : Integer;
      VK_ACCEPT : Integer;
      VK_MODECHANGE : Integer;
      VK_KANA : Integer;
      VK_KANJI : Integer;
      VK_ALPHANUMERIC : Integer;
      VK_KATAKANA : Integer;
      VK_HIRAGANA : Integer;
      VK_FULL_WIDTH : Integer;
      VK_HALF_WIDTH : Integer;
      VK_ROMAN_CHARACTERS : Integer;
      VK_ALL_CANDIDATES : Integer;
      VK_PREVIOUS_CANDIDATE : Integer;
      VK_CODE_INPUT : Integer;
      VK_JAPANESE_KATAKANA : Integer;
      VK_JAPANESE_HIRAGANA : Integer;
      VK_JAPANESE_ROMAN : Integer;
      VK_KANA_LOCK : Integer;
      VK_INPUT_METHOD_ON_OFF : Integer;
      VK_CUT : Integer;
      VK_COPY : Integer;
      VK_PASTE : Integer;
      VK_UNDO : Integer;
      VK_AGAIN : Integer;
      VK_FIND : Integer;
      VK_PROPS : Integer;
      VK_STOP : Integer;
      VK_COMPOSE : Integer;
      VK_ALT_GRAPH : Integer;
      VK_BEGIN : Integer;
      VK_UNDEFINED : Integer;
   end record;
   instance : ABKeyEventWrapper_Access;

   procedure Initialize (This : in out ABKeyEventWrapper'Class);
   function Create return ABKeyEventWrapper_Access;
   function getInstance return ABKeyEventWrapper_Access;
   procedure getInstance;

end org.allbinary.game.input.ABKeyEventWrapper_Package;


