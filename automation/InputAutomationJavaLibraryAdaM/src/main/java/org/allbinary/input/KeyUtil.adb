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



package body org.allbinary.input.KeyUtil_Package is

   procedure Initialize_Fields (This : in out KeyUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeyUtil_Access is
      This : constant KeyUtil_Access := new KeyUtil;
   begin
      KeyUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isNormallyDisplayed (keyCode : Integer) return Boolean is
   begin
        case keyCode is
            when KeyEvent_Package.VK_SPACE | KeyEvent_Package.VK_COMMA | KeyEvent_Package.VK_MINUS | KeyEvent_Package.VK_PERIOD | KeyEvent_Package.VK_SLASH | KeyEvent_Package.VK_0 | KeyEvent_Package.VK_1 | KeyEvent_Package.VK_2 | KeyEvent_Package.VK_3 | KeyEvent_Package.VK_4 | KeyEvent_Package.VK_5 | KeyEvent_Package.VK_6 | KeyEvent_Package.VK_7 | KeyEvent_Package.VK_8 | KeyEvent_Package.VK_9 | KeyEvent_Package.VK_SEMICOLON | KeyEvent_Package.VK_EQUALS | KeyEvent_Package.VK_A | KeyEvent_Package.VK_B | KeyEvent_Package.VK_C | KeyEvent_Package.VK_D | KeyEvent_Package.VK_E | KeyEvent_Package.VK_F | KeyEvent_Package.VK_G | KeyEvent_Package.VK_H | KeyEvent_Package.VK_I | KeyEvent_Package.VK_J | KeyEvent_Package.VK_K | KeyEvent_Package.VK_L | KeyEvent_Package.VK_M | KeyEvent_Package.VK_N | KeyEvent_Package.VK_O | KeyEvent_Package.VK_P | KeyEvent_Package.VK_Q | KeyEvent_Package.VK_R | KeyEvent_Package.VK_S | KeyEvent_Package.VK_T | KeyEvent_Package.VK_U | KeyEvent_Package.VK_V | KeyEvent_Package.VK_W | KeyEvent_Package.VK_X | KeyEvent_Package.VK_Y | KeyEvent_Package.VK_Z | KeyEvent_Package.VK_OPEN_BRACKET | KeyEvent_Package.VK_BACK_SLASH | KeyEvent_Package.VK_CLOSE_BRACKET | KeyEvent_Package.VK_NUMPAD0 | KeyEvent_Package.VK_NUMPAD1 | KeyEvent_Package.VK_NUMPAD2 | KeyEvent_Package.VK_NUMPAD3 | KeyEvent_Package.VK_NUMPAD4 | KeyEvent_Package.VK_NUMPAD5 | KeyEvent_Package.VK_NUMPAD6 | KeyEvent_Package.VK_NUMPAD7 | KeyEvent_Package.VK_NUMPAD8 | KeyEvent_Package.VK_NUMPAD9 | KeyEvent_Package.VK_MULTIPLY | KeyEvent_Package.VK_ADD | KeyEvent_Package.VK_SEPARATER | KeyEvent_Package.VK_SUBTRACT | KeyEvent_Package.VK_DECIMAL | KeyEvent_Package.VK_DIVIDE =>
                return True;
            when others =>
                return False;
        end case;
   end isNormallyDisplayed;

   procedure isNormallyDisplayed (keyCode : Integer) is
      Java_Result : constant Boolean := isNormallyDisplayed (keyCode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNormallyDisplayed;

end org.allbinary.input.KeyUtil_Package;


