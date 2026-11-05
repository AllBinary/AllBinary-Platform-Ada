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


with org.allbinary.android.input.VirtualKeyboard_Package; use org.allbinary.android.input.VirtualKeyboard_Package;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
with android.app.Activity_Package; use android.app.Activity_Package;
with android.app.Activity_Package_References;
with org.allbinary.input.event.VirtualKeyboardEvent_Package; use org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package body org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package is

   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   function "=" (Left, Right : Activity_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   function "=" (Left, Right : Activity_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   function "=" (Left, Right : Activity_Access_Array_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype VirtualKeyboardEvent_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access;
   function "=" (Left, Right : VirtualKeyboardEvent_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEvent_Package_References."=";
   subtype VirtualKeyboardEvent_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array;
   function "=" (Left, Right : VirtualKeyboardEvent_Access_Array) return Boolean renames org.allbinary.input.event.VirtualKeyboardEvent_Package_References."=";
   subtype VirtualKeyboardEvent_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardEvent_Access_Array_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEvent_Package_References."=";
   subtype VirtualKeyboardEvent_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboardEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.event.VirtualKeyboardEvent_Package_References."=";
   subtype VirtualKeyboardEvent_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEvent_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   procedure Initialize_Fields (This : in out VirtualKeyboardAPI1'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out VirtualKeyboardAPI1'Class; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
      VirtualKeyboard_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (activity_Param : access Activity_Package.Activity'Class) return VirtualKeyboardAPI1_Access is
      This : constant VirtualKeyboardAPI1_Access := new VirtualKeyboardAPI1;
   begin
      VirtualKeyboardAPI1_Package.Initialize (This.all, activity_Param);
      return This;
   end Create;

   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboardAPI1; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class) is
      virtualKeyboardEvent : constant VirtualKeyboardEvent_Access := VirtualKeyboardEvent_Access (virtualKeyboardEvent_Param);
   begin
        VirtualKeyboard_Package.VirtualKeyboard (This).onVirtualKeyboardEvent (virtualKeyboardEvent);
   end onVirtualKeyboardEvent;

   procedure onEvent (This : in out VirtualKeyboardAPI1; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        VirtualKeyboard_Package.VirtualKeyboard (This).onEvent (eventObject);
   end onEvent;

begin
   null;
   MIN_API := 1;
   MAX_API := 2;

end org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;


