--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.input.KeySingletonFactory_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out KeySingletonFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   --  Java static initializer: call this once
   procedure Initializer is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      STATIC_BLOCK : Unbounded_String;
      keyAsString : Unbounded_String;
      index : Integer;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        STATIC_BLOCK := To_Unbounded_String ("Static Block");
        begin
            for index in 0 .. (keyArray'Length) - 1 loop
                keyAsString := KeyEvent_Package.getKeyText (keyArray (index));
                KeySingletonFactory_Package.keyStringHashtable.put (Java_Box (keyAsString), Java_Box (keyArray (index)));
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("KeySingleFactory"), STATIC_BLOCK, e);
                end;
        end;
   end Initializer;

   procedure Initialize (This : in out KeySingletonFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeySingletonFactory_Access is
      This : constant KeySingletonFactory_Access := new KeySingletonFactory;
   begin
      KeySingletonFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getHashtable return ABHashtable_Access is
   begin
        return KeySingletonFactory_Package.keyStringHashtable;
   end getHashtable;

   function getInstance (index : Integer) return Integer is
   begin
        return To_Unbounded_String (Java_Image (index));
   end getInstance;

   function getArray return Integer_Array_Access is
   begin
        return KeySingletonFactory_Package.keyArray;
   end getArray;

   procedure getInstance (index : Integer) is
      Java_Result : constant Integer := getInstance (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   keyStringHashtable := StdUtil_Package.getInstance.createHashtable;
   keyArray := new Integer_Array'(KeyEvent_Package.VK_0, KeyEvent_Package.VK_1, KeyEvent_Package.VK_2, KeyEvent_Package.VK_3, KeyEvent_Package.VK_4, KeyEvent_Package.VK_5, KeyEvent_Package.VK_6, KeyEvent_Package.VK_7, KeyEvent_Package.VK_8, KeyEvent_Package.VK_9, KeyEvent_Package.VK_A, KeyEvent_Package.VK_B, KeyEvent_Package.VK_C, KeyEvent_Package.VK_D, KeyEvent_Package.VK_E, KeyEvent_Package.VK_F, KeyEvent_Package.VK_G, KeyEvent_Package.VK_H, KeyEvent_Package.VK_I, KeyEvent_Package.VK_J, KeyEvent_Package.VK_K, KeyEvent_Package.VK_L, KeyEvent_Package.VK_M, KeyEvent_Package.VK_N, KeyEvent_Package.VK_O, KeyEvent_Package.VK_Q, KeyEvent_Package.VK_R, KeyEvent_Package.VK_S, KeyEvent_Package.VK_T, KeyEvent_Package.VK_U, KeyEvent_Package.VK_V, KeyEvent_Package.VK_W, KeyEvent_Package.VK_X, KeyEvent_Package.VK_Y, KeyEvent_Package.VK_Z, KeyEvent_Package.VK_NUMPAD0, KeyEvent_Package.VK_NUMPAD1, KeyEvent_Package.VK_NUMPAD2, KeyEvent_Package.VK_NUMPAD3, KeyEvent_Package.VK_NUMPAD4, KeyEvent_Package.VK_NUMPAD5, KeyEvent_Package.VK_NUMPAD6, KeyEvent_Package.VK_NUMPAD7, KeyEvent_Package.VK_NUMPAD8, KeyEvent_Package.VK_NUMPAD9, KeyEvent_Package.VK_NUM_LOCK, KeyEvent_Package.VK_F1, KeyEvent_Package.VK_F2, KeyEvent_Package.VK_F3, KeyEvent_Package.VK_F4, KeyEvent_Package.VK_F5, KeyEvent_Package.VK_F6, KeyEvent_Package.VK_F7, KeyEvent_Package.VK_F8, KeyEvent_Package.VK_F9, KeyEvent_Package.VK_F10, KeyEvent_Package.VK_F11, KeyEvent_Package.VK_F12, KeyEvent_Package.VK_F13, KeyEvent_Package.VK_F14, KeyEvent_Package.VK_F15, KeyEvent_Package.VK_F16, KeyEvent_Package.VK_F17, KeyEvent_Package.VK_F18, KeyEvent_Package.VK_F19, KeyEvent_Package.VK_F20, KeyEvent_Package.VK_F21, KeyEvent_Package.VK_F22, KeyEvent_Package.VK_F23, KeyEvent_Package.VK_F24, KeyEvent_Package.VK_ACCEPT, KeyEvent_Package.VK_ADD, KeyEvent_Package.VK_AGAIN, KeyEvent_Package.VK_ALL_CANDIDATES, KeyEvent_Package.VK_ALPHANUMERIC, KeyEvent_Package.VK_ALT, KeyEvent_Package.VK_ALT_GRAPH, KeyEvent_Package.VK_AMPERSAND, KeyEvent_Package.VK_ASTERISK, KeyEvent_Package.VK_AT, KeyEvent_Package.VK_BACK_QUOTE, KeyEvent_Package.VK_BACK_SLASH, KeyEvent_Package.VK_BACK_SPACE, KeyEvent_Package.VK_BEGIN, KeyEvent_Package.VK_BRACELEFT, KeyEvent_Package.VK_BRACERIGHT, KeyEvent_Package.VK_CANCEL, KeyEvent_Package.VK_CAPS_LOCK, KeyEvent_Package.VK_CIRCUMFLEX, KeyEvent_Package.VK_CLEAR, KeyEvent_Package.VK_CLOSE_BRACKET, KeyEvent_Package.VK_CODE_INPUT, KeyEvent_Package.VK_COLON, KeyEvent_Package.VK_COMMA, KeyEvent_Package.VK_COMPOSE, KeyEvent_Package.VK_CONTEXT_MENU, KeyEvent_Package.VK_CONTROL, KeyEvent_Package.VK_CONVERT, KeyEvent_Package.VK_COPY, KeyEvent_Package.VK_CUT, KeyEvent_Package.VK_DEAD_ABOVEDOT, KeyEvent_Package.VK_DEAD_ABOVERING, KeyEvent_Package.VK_DEAD_ACUTE, KeyEvent_Package.VK_DEAD_BREVE, KeyEvent_Package.VK_DEAD_CARON, KeyEvent_Package.VK_DEAD_CEDILLA, KeyEvent_Package.VK_DEAD_CIRCUMFLEX, KeyEvent_Package.VK_DEAD_DIAERESIS, KeyEvent_Package.VK_DEAD_DOUBLEACUTE, KeyEvent_Package.VK_DEAD_GRAVE, KeyEvent_Package.VK_DEAD_IOTA, KeyEvent_Package.VK_DEAD_MACRON, KeyEvent_Package.VK_DEAD_OGONEK, KeyEvent_Package.VK_DEAD_SEMIVOICED_SOUND, KeyEvent_Package.VK_DEAD_TILDE, KeyEvent_Package.VK_DEAD_VOICED_SOUND, KeyEvent_Package.VK_DECIMAL, KeyEvent_Package.VK_DELETE, KeyEvent_Package.VK_DIVIDE, KeyEvent_Package.VK_DOLLAR, KeyEvent_Package.VK_DOWN, KeyEvent_Package.VK_END, KeyEvent_Package.VK_ENTER, KeyEvent_Package.VK_EQUALS, KeyEvent_Package.VK_ESCAPE, KeyEvent_Package.VK_EURO_SIGN, KeyEvent_Package.VK_EXCLAMATION_MARK, KeyEvent_Package.VK_FINAL, KeyEvent_Package.VK_FIND, KeyEvent_Package.VK_FULL_WIDTH, KeyEvent_Package.VK_GREATER, KeyEvent_Package.VK_HALF_WIDTH, KeyEvent_Package.VK_HELP, KeyEvent_Package.VK_HIRAGANA, KeyEvent_Package.VK_HOME, KeyEvent_Package.VK_INPUT_METHOD_ON_OFF, KeyEvent_Package.VK_INSERT, KeyEvent_Package.VK_INVERTED_EXCLAMATION_MARK, KeyEvent_Package.VK_JAPANESE_HIRAGANA, KeyEvent_Package.VK_JAPANESE_KATAKANA, KeyEvent_Package.VK_JAPANESE_ROMAN, KeyEvent_Package.VK_KANA, KeyEvent_Package.VK_KANA_LOCK, KeyEvent_Package.VK_KANJI, KeyEvent_Package.VK_KATAKANA, KeyEvent_Package.VK_KP_DOWN, KeyEvent_Package.VK_KP_LEFT, KeyEvent_Package.VK_KP_RIGHT, KeyEvent_Package.VK_KP_UP, KeyEvent_Package.VK_LEFT, KeyEvent_Package.VK_LEFT_PARENTHESIS, KeyEvent_Package.VK_LESS, KeyEvent_Package.VK_META, KeyEvent_Package.VK_MINUS, KeyEvent_Package.VK_MODECHANGE, KeyEvent_Package.VK_MULTIPLY, KeyEvent_Package.VK_NONCONVERT, KeyEvent_Package.VK_NUMBER_SIGN, KeyEvent_Package.VK_OPEN_BRACKET, KeyEvent_Package.VK_PAGE_DOWN, KeyEvent_Package.VK_PAGE_UP, KeyEvent_Package.VK_PASTE, KeyEvent_Package.VK_PAUSE, KeyEvent_Package.VK_PERIOD, KeyEvent_Package.VK_PLUS, KeyEvent_Package.VK_PREVIOUS_CANDIDATE, KeyEvent_Package.VK_PRINTSCREEN, KeyEvent_Package.VK_PROPS, KeyEvent_Package.VK_QUOTE, KeyEvent_Package.VK_QUOTEDBL, KeyEvent_Package.VK_RIGHT, KeyEvent_Package.VK_RIGHT_PARENTHESIS, KeyEvent_Package.VK_SCROLL_LOCK, KeyEvent_Package.VK_SEMICOLON, KeyEvent_Package.VK_SEPARATER, KeyEvent_Package.VK_SEPARATOR, KeyEvent_Package.VK_SHIFT, KeyEvent_Package.VK_SLASH, KeyEvent_Package.VK_SPACE, KeyEvent_Package.VK_STOP, KeyEvent_Package.VK_SUBTRACT, KeyEvent_Package.VK_TAB, KeyEvent_Package.VK_UNDEFINED, KeyEvent_Package.VK_UNDERSCORE, KeyEvent_Package.VK_UNDO, KeyEvent_Package.VK_UP, KeyEvent_Package.VK_WINDOWS);

end org.allbinary.input.KeySingletonFactory_Package;


