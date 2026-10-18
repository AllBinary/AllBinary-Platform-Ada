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


package body org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package is

   procedure Initialize_Fields (This : in out VirtualKeyboardAPI3'Class) is
   begin
      null;
      This.virtualKeyboard := False;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out VirtualKeyboardAPI3'Class; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
      virtualKeyboardEventHandler : VirtualKeyboardEventHandler_Access;
   begin
        VirtualKeyboard_Package.Initialize (This);
        Initialize_Fields (This);
        This.activity := activity;
        This.showVirtualKeyboardRunnable := ShowVirtualKeyboardRunnable_Package.Create (This.activity);
        This.hideVirtualKeyboardRunnable := HideVirtualKeyboardRunnable_Package.Create (This.activity);
        virtualKeyboardEventHandler := VirtualKeyboardEventHandler_Package.getInstance;
        virtualKeyboardEventHandler.removeAllListeners;
        virtualKeyboardEventHandler.addListenerInterface (VirtualKeyboardAPI3_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (activity_Param : access Activity_Package.Activity'Class) return VirtualKeyboardAPI3_Access is
      This : constant VirtualKeyboardAPI3_Access := new VirtualKeyboardAPI3;
   begin
      VirtualKeyboardAPI3_Package.Initialize (This.all, activity_Param);
      return This;
   end Create;

   procedure onEvent (This : in out VirtualKeyboardAPI3; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, VirtualKeyboardAPI3_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboardAPI3; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class) is
      virtualKeyboardEvent : constant VirtualKeyboardEvent_Access := VirtualKeyboardEvent_Access (virtualKeyboardEvent_Param);
      isShow : Boolean;
   begin
        isShow := Boolean (virtualKeyboardEvent.getSource);
        if isShow then
            VirtualKeyboardAPI3'Class (This).showVirtualKeyboard;
        else
            VirtualKeyboardAPI3'Class (This).hideVirtualKeyboard;
        end if;
   end onVirtualKeyboardEvent;

   procedure forceHide (This : in out VirtualKeyboardAPI3) is
   begin
        VirtualKeyboardAPI3'Class (This).hideVirtualKeyboard;
   end forceHide;

   procedure hide (This : in out VirtualKeyboardAPI3) is
   begin
        if This.virtualKeyboard then
            VirtualKeyboardAPI3'Class (This).forceHide;
        end if;
   end hide;

   procedure showVirtualKeyboard (This : in out VirtualKeyboardAPI3) is
   begin
        This.activity.runOnUiThread (This.showVirtualKeyboardRunnable);
        This.virtualKeyboard := True;
   end showVirtualKeyboard;

   procedure hideVirtualKeyboard (This : in out VirtualKeyboardAPI3) is
   begin
        This.activity.runOnUiThread (This.hideVirtualKeyboardRunnable);
        This.virtualKeyboard := False;
   end hideVirtualKeyboard;

begin
   null;
   MAX_API := Integer_Package.MAX_VALUE;
   MIN_API := 3;

end org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package;


