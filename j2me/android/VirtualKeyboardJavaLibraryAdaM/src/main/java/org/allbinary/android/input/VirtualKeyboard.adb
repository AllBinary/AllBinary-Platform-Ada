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


package body org.allbinary.android.input.VirtualKeyboard_Package is

   procedure Initialize_Fields (This : in out VirtualKeyboard'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out VirtualKeyboard'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return VirtualKeyboard_Access is
      This : constant VirtualKeyboard_Access := new VirtualKeyboard;
   begin
      VirtualKeyboard_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out VirtualKeyboard; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, VirtualKeyboard_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboard; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class) is
      virtualKeyboardEvent : constant VirtualKeyboardEvent_Access := VirtualKeyboardEvent_Access (virtualKeyboardEvent_Param);
   begin
        null;
   end onVirtualKeyboardEvent;

   procedure forceHide (This : in out VirtualKeyboard) is
   begin
        null;
   end forceHide;

   procedure hide (This : in out VirtualKeyboard) is
   begin
        null;
   end hide;

begin
   null;
   NULL_VIRTUAL_KEYBOARD := VirtualKeyboard_Package.Create;

end org.allbinary.android.input.VirtualKeyboard_Package;


