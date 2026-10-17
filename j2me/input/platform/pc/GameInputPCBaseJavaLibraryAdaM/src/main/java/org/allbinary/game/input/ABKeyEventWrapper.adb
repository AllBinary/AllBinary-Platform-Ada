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


package body org.allbinary.game.input.ABKeyEventWrapper_Package is

   procedure Initialize_Fields (This : in out ABKeyEventWrapper'Class) is
   begin
      null;
      This.VK_ENTER := KeyEvent_Package.VK_ENTER;
      This.VK_BACK_SPACE := KeyEvent_Package.VK_BACK_SPACE;
      This.VK_TAB := KeyEvent_Package.VK_TAB;
      This.VK_CANCEL := KeyEvent_Package.VK_CANCEL;
      This.VK_CLEAR := KeyEvent_Package.VK_CLEAR;
      This.VK_SHIFT := KeyEvent_Package.VK_SHIFT;
      This.VK_CONTROL := KeyEvent_Package.VK_CONTROL;
      This.VK_ALT := KeyEvent_Package.VK_ALT;
      This.VK_PAUSE := KeyEvent_Package.VK_PAUSE;
      This.VK_CAPS_LOCK := KeyEvent_Package.VK_CAPS_LOCK;
      This.VK_ESCAPE := KeyEvent_Package.VK_ESCAPE;
      This.VK_SPACE := KeyEvent_Package.VK_SPACE;
      This.VK_PAGE_UP := KeyEvent_Package.VK_PAGE_UP;
      This.VK_PAGE_DOWN := KeyEvent_Package.VK_PAGE_DOWN;
      This.VK_END := KeyEvent_Package.VK_END;
      This.VK_HOME := KeyEvent_Package.VK_HOME;
      This.VK_LEFT := KeyEvent_Package.VK_LEFT;
      This.VK_UP := KeyEvent_Package.VK_UP;
      This.VK_RIGHT := KeyEvent_Package.VK_RIGHT;
      This.VK_DOWN := KeyEvent_Package.VK_DOWN;
      This.VK_COMMA := KeyEvent_Package.VK_COMMA;
      This.VK_MINUS := KeyEvent_Package.VK_MINUS;
      This.VK_PERIOD := KeyEvent_Package.VK_PERIOD;
      This.VK_SLASH := KeyEvent_Package.VK_SLASH;
      This.VK_0 := KeyEvent_Package.VK_0;
      This.VK_1 := KeyEvent_Package.VK_1;
      This.VK_2 := KeyEvent_Package.VK_2;
      This.VK_3 := KeyEvent_Package.VK_3;
      This.VK_4 := KeyEvent_Package.VK_4;
      This.VK_5 := KeyEvent_Package.VK_5;
      This.VK_6 := KeyEvent_Package.VK_6;
      This.VK_7 := KeyEvent_Package.VK_7;
      This.VK_8 := KeyEvent_Package.VK_8;
      This.VK_9 := KeyEvent_Package.VK_9;
      This.VK_SEMICOLON := KeyEvent_Package.VK_SEMICOLON;
      This.VK_EQUALS := KeyEvent_Package.VK_EQUALS;
      This.VK_A := KeyEvent_Package.VK_A;
      This.VK_B := KeyEvent_Package.VK_B;
      This.VK_C := KeyEvent_Package.VK_C;
      This.VK_D := KeyEvent_Package.VK_D;
      This.VK_E := KeyEvent_Package.VK_E;
      This.VK_F := KeyEvent_Package.VK_F;
      This.VK_G := KeyEvent_Package.VK_G;
      This.VK_H := KeyEvent_Package.VK_H;
      This.VK_I := KeyEvent_Package.VK_I;
      This.VK_J := KeyEvent_Package.VK_J;
      This.VK_K := KeyEvent_Package.VK_K;
      This.VK_L := KeyEvent_Package.VK_L;
      This.VK_M := KeyEvent_Package.VK_M;
      This.VK_N := KeyEvent_Package.VK_N;
      This.VK_O := KeyEvent_Package.VK_O;
      This.VK_P := KeyEvent_Package.VK_P;
      This.VK_Q := KeyEvent_Package.VK_Q;
      This.VK_R := KeyEvent_Package.VK_R;
      This.VK_S := KeyEvent_Package.VK_S;
      This.VK_T := KeyEvent_Package.VK_T;
      This.VK_U := KeyEvent_Package.VK_U;
      This.VK_V := KeyEvent_Package.VK_V;
      This.VK_W := KeyEvent_Package.VK_W;
      This.VK_X := KeyEvent_Package.VK_X;
      This.VK_Y := KeyEvent_Package.VK_Y;
      This.VK_Z := KeyEvent_Package.VK_Z;
      This.VK_OPEN_BRACKET := KeyEvent_Package.VK_OPEN_BRACKET;
      This.VK_BACK_SLASH := KeyEvent_Package.VK_BACK_SLASH;
      This.VK_CLOSE_BRACKET := KeyEvent_Package.VK_CLOSE_BRACKET;
      This.VK_NUMPAD0 := KeyEvent_Package.VK_NUMPAD0;
      This.VK_NUMPAD1 := KeyEvent_Package.VK_NUMPAD1;
      This.VK_NUMPAD2 := KeyEvent_Package.VK_NUMPAD2;
      This.VK_NUMPAD3 := KeyEvent_Package.VK_NUMPAD3;
      This.VK_NUMPAD4 := KeyEvent_Package.VK_NUMPAD4;
      This.VK_NUMPAD5 := KeyEvent_Package.VK_NUMPAD5;
      This.VK_NUMPAD6 := KeyEvent_Package.VK_NUMPAD6;
      This.VK_NUMPAD7 := KeyEvent_Package.VK_NUMPAD7;
      This.VK_NUMPAD8 := KeyEvent_Package.VK_NUMPAD8;
      This.VK_NUMPAD9 := KeyEvent_Package.VK_NUMPAD9;
      This.VK_MULTIPLY := KeyEvent_Package.VK_MULTIPLY;
      This.VK_ADD := KeyEvent_Package.VK_ADD;
      This.VK_SEPARATER := KeyEvent_Package.VK_SEPARATER;
      This.VK_SEPARATOR := KeyEvent_Package.VK_SEPARATOR;
      This.VK_SUBTRACT := KeyEvent_Package.VK_SUBTRACT;
      This.VK_DECIMAL := KeyEvent_Package.VK_DECIMAL;
      This.VK_DIVIDE := KeyEvent_Package.VK_DIVIDE;
      This.VK_DELETE := KeyEvent_Package.VK_DELETE;
      This.VK_NUM_LOCK := KeyEvent_Package.VK_NUM_LOCK;
      This.VK_SCROLL_LOCK := KeyEvent_Package.VK_SCROLL_LOCK;
      This.VK_F1 := KeyEvent_Package.VK_F1;
      This.VK_F2 := KeyEvent_Package.VK_F2;
      This.VK_F3 := KeyEvent_Package.VK_F3;
      This.VK_F4 := KeyEvent_Package.VK_F4;
      This.VK_F5 := KeyEvent_Package.VK_F5;
      This.VK_F6 := KeyEvent_Package.VK_F6;
      This.VK_F7 := KeyEvent_Package.VK_F7;
      This.VK_F8 := KeyEvent_Package.VK_F8;
      This.VK_F9 := KeyEvent_Package.VK_F9;
      This.VK_F10 := KeyEvent_Package.VK_F10;
      This.VK_F11 := KeyEvent_Package.VK_F11;
      This.VK_F12 := KeyEvent_Package.VK_F12;
      This.VK_F13 := KeyEvent_Package.VK_F13;
      This.VK_F14 := KeyEvent_Package.VK_F14;
      This.VK_F15 := KeyEvent_Package.VK_F15;
      This.VK_F16 := KeyEvent_Package.VK_F16;
      This.VK_F17 := KeyEvent_Package.VK_F17;
      This.VK_F18 := KeyEvent_Package.VK_F18;
      This.VK_F19 := KeyEvent_Package.VK_F19;
      This.VK_F20 := KeyEvent_Package.VK_F20;
      This.VK_F21 := KeyEvent_Package.VK_F21;
      This.VK_F22 := KeyEvent_Package.VK_F22;
      This.VK_F23 := KeyEvent_Package.VK_F23;
      This.VK_F24 := KeyEvent_Package.VK_F24;
      This.VK_PRINTSCREEN := KeyEvent_Package.VK_PRINTSCREEN;
      This.VK_INSERT := KeyEvent_Package.VK_INSERT;
      This.VK_HELP := KeyEvent_Package.VK_HELP;
      This.VK_META := KeyEvent_Package.VK_META;
      This.VK_BACK_QUOTE := KeyEvent_Package.VK_BACK_QUOTE;
      This.VK_QUOTE := KeyEvent_Package.VK_QUOTE;
      This.VK_KP_UP := KeyEvent_Package.VK_KP_UP;
      This.VK_KP_DOWN := KeyEvent_Package.VK_KP_DOWN;
      This.VK_KP_LEFT := KeyEvent_Package.VK_KP_LEFT;
      This.VK_KP_RIGHT := KeyEvent_Package.VK_KP_RIGHT;
      This.VK_DEAD_GRAVE := KeyEvent_Package.VK_DEAD_GRAVE;
      This.VK_DEAD_ACUTE := KeyEvent_Package.VK_DEAD_ACUTE;
      This.VK_DEAD_CIRCUMFLEX := KeyEvent_Package.VK_DEAD_CIRCUMFLEX;
      This.VK_DEAD_TILDE := KeyEvent_Package.VK_DEAD_TILDE;
      This.VK_DEAD_MACRON := KeyEvent_Package.VK_DEAD_MACRON;
      This.VK_DEAD_BREVE := KeyEvent_Package.VK_DEAD_BREVE;
      This.VK_DEAD_ABOVEDOT := KeyEvent_Package.VK_DEAD_ABOVEDOT;
      This.VK_DEAD_DIAERESIS := KeyEvent_Package.VK_DEAD_DIAERESIS;
      This.VK_DEAD_ABOVERING := KeyEvent_Package.VK_DEAD_ABOVERING;
      This.VK_DEAD_DOUBLEACUTE := KeyEvent_Package.VK_DEAD_DOUBLEACUTE;
      This.VK_DEAD_CARON := KeyEvent_Package.VK_DEAD_CARON;
      This.VK_DEAD_CEDILLA := KeyEvent_Package.VK_DEAD_CEDILLA;
      This.VK_DEAD_OGONEK := KeyEvent_Package.VK_DEAD_OGONEK;
      This.VK_DEAD_IOTA := KeyEvent_Package.VK_DEAD_IOTA;
      This.VK_DEAD_VOICED_SOUND := KeyEvent_Package.VK_DEAD_VOICED_SOUND;
      This.VK_DEAD_SEMIVOICED_SOUND := KeyEvent_Package.VK_DEAD_SEMIVOICED_SOUND;
      This.VK_AMPERSAND := KeyEvent_Package.VK_AMPERSAND;
      This.VK_ASTERISK := KeyEvent_Package.VK_ASTERISK;
      This.VK_QUOTEDBL := KeyEvent_Package.VK_QUOTEDBL;
      This.VK_LESS := KeyEvent_Package.VK_LESS;
      This.VK_GREATER := KeyEvent_Package.VK_GREATER;
      This.VK_BRACELEFT := KeyEvent_Package.VK_BRACELEFT;
      This.VK_BRACERIGHT := KeyEvent_Package.VK_BRACERIGHT;
      This.VK_AT := KeyEvent_Package.VK_AT;
      This.VK_COLON := KeyEvent_Package.VK_COLON;
      This.VK_CIRCUMFLEX := KeyEvent_Package.VK_CIRCUMFLEX;
      This.VK_DOLLAR := KeyEvent_Package.VK_DOLLAR;
      This.VK_EURO_SIGN := KeyEvent_Package.VK_EURO_SIGN;
      This.VK_EXCLAMATION_MARK := KeyEvent_Package.VK_EXCLAMATION_MARK;
      This.VK_INVERTED_EXCLAMATION_MARK := KeyEvent_Package.VK_INVERTED_EXCLAMATION_MARK;
      This.VK_LEFT_PARENTHESIS := KeyEvent_Package.VK_LEFT_PARENTHESIS;
      This.VK_NUMBER_SIGN := KeyEvent_Package.VK_NUMBER_SIGN;
      This.VK_PLUS := KeyEvent_Package.VK_PLUS;
      This.VK_RIGHT_PARENTHESIS := KeyEvent_Package.VK_RIGHT_PARENTHESIS;
      This.VK_UNDERSCORE := KeyEvent_Package.VK_UNDERSCORE;
      This.VK_WINDOWS := KeyEvent_Package.VK_WINDOWS;
      This.VK_CONTEXT_MENU := KeyEvent_Package.VK_CONTEXT_MENU;
      This.VK_FINAL := KeyEvent_Package.VK_FINAL;
      This.VK_CONVERT := KeyEvent_Package.VK_CONVERT;
      This.VK_NONCONVERT := KeyEvent_Package.VK_NONCONVERT;
      This.VK_ACCEPT := KeyEvent_Package.VK_ACCEPT;
      This.VK_MODECHANGE := KeyEvent_Package.VK_MODECHANGE;
      This.VK_KANA := KeyEvent_Package.VK_KANA;
      This.VK_KANJI := KeyEvent_Package.VK_KANJI;
      This.VK_ALPHANUMERIC := KeyEvent_Package.VK_ALPHANUMERIC;
      This.VK_KATAKANA := KeyEvent_Package.VK_KATAKANA;
      This.VK_HIRAGANA := KeyEvent_Package.VK_HIRAGANA;
      This.VK_FULL_WIDTH := KeyEvent_Package.VK_FULL_WIDTH;
      This.VK_HALF_WIDTH := KeyEvent_Package.VK_HALF_WIDTH;
      This.VK_ROMAN_CHARACTERS := KeyEvent_Package.VK_ROMAN_CHARACTERS;
      This.VK_ALL_CANDIDATES := KeyEvent_Package.VK_ALL_CANDIDATES;
      This.VK_PREVIOUS_CANDIDATE := KeyEvent_Package.VK_PREVIOUS_CANDIDATE;
      This.VK_CODE_INPUT := KeyEvent_Package.VK_CODE_INPUT;
      This.VK_JAPANESE_KATAKANA := KeyEvent_Package.VK_JAPANESE_KATAKANA;
      This.VK_JAPANESE_HIRAGANA := KeyEvent_Package.VK_JAPANESE_HIRAGANA;
      This.VK_JAPANESE_ROMAN := KeyEvent_Package.VK_JAPANESE_ROMAN;
      This.VK_KANA_LOCK := KeyEvent_Package.VK_KANA_LOCK;
      This.VK_INPUT_METHOD_ON_OFF := KeyEvent_Package.VK_INPUT_METHOD_ON_OFF;
      This.VK_CUT := KeyEvent_Package.VK_CUT;
      This.VK_COPY := KeyEvent_Package.VK_COPY;
      This.VK_PASTE := KeyEvent_Package.VK_PASTE;
      This.VK_UNDO := KeyEvent_Package.VK_UNDO;
      This.VK_AGAIN := KeyEvent_Package.VK_AGAIN;
      This.VK_FIND := KeyEvent_Package.VK_FIND;
      This.VK_PROPS := KeyEvent_Package.VK_PROPS;
      This.VK_STOP := KeyEvent_Package.VK_STOP;
      This.VK_COMPOSE := KeyEvent_Package.VK_COMPOSE;
      This.VK_ALT_GRAPH := KeyEvent_Package.VK_ALT_GRAPH;
      This.VK_BEGIN := KeyEvent_Package.VK_BEGIN;
      This.VK_UNDEFINED := KeyEvent_Package.VK_UNDEFINED;
   end Initialize_Fields;

   procedure Initialize (This : in out ABKeyEventWrapper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ABKeyEventWrapper_Access is
      This : constant ABKeyEventWrapper_Access := new ABKeyEventWrapper;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ABKeyEventWrapper_Access is
   begin
        return ABKeyEventWrapper_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant ABKeyEventWrapper_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ABKeyEventWrapper_Package.Create;

end org.allbinary.game.input.ABKeyEventWrapper_Package;


