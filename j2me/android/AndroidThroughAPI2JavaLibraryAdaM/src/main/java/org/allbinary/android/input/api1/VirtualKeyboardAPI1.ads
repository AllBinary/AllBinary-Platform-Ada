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

limited with org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;
package org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References is
   type VirtualKeyboardAPI1_Access is access all org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package.VirtualKeyboardAPI1'Class;
   type VirtualKeyboardAPI1_Access_Array is array (Natural range <>) of VirtualKeyboardAPI1_Access;
   type VirtualKeyboardAPI1_Access_Array_Access is access all VirtualKeyboardAPI1_Access_Array;
   type VirtualKeyboardAPI1_Access_Array_Access_Array is array (Natural range <>) of VirtualKeyboardAPI1_Access_Array_Access;
   type VirtualKeyboardAPI1_Access_Array_Access_Array_Access is access all VirtualKeyboardAPI1_Access_Array_Access_Array;
end org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References;

with org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.input.VirtualKeyboard_Package; use org.allbinary.android.input.VirtualKeyboard_Package;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
limited with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package is

   package VirtualKeyboard_Package renames Standard.org.allbinary.android.input.VirtualKeyboard_Package;
   package VirtualKeyboardEventListenerInterface_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
   package Activity_Package renames Standard.android.app.Activity_Package;
   package VirtualKeyboardEvent_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEvent_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   use type Activity_Access;
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   use type Activity_Access_Array;
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   use type Activity_Access_Array_Access;
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   use type Activity_Access_Array_Access_Array;
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   use type Activity_Access_Array_Access_Array_Access;
   subtype VirtualKeyboardEvent_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access;
   use type VirtualKeyboardEvent_Access;
   subtype VirtualKeyboardEvent_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array;
   use type VirtualKeyboardEvent_Access_Array;
   subtype VirtualKeyboardEvent_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access;
   use type VirtualKeyboardEvent_Access_Array_Access;
   subtype VirtualKeyboardEvent_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array;
   use type VirtualKeyboardEvent_Access_Array_Access_Array;
   subtype VirtualKeyboardEvent_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   use type VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VirtualKeyboardAPI1_Access is org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References.VirtualKeyboardAPI1_Access;
   function "=" (Left, Right : VirtualKeyboardAPI1_Access) return Boolean renames org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References."=";
   subtype VirtualKeyboardAPI1_Access_Array is org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References.VirtualKeyboardAPI1_Access_Array;
   function "=" (Left, Right : VirtualKeyboardAPI1_Access_Array) return Boolean renames org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References."=";
   subtype VirtualKeyboardAPI1_Access_Array_Access is org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References.VirtualKeyboardAPI1_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardAPI1_Access_Array_Access) return Boolean renames org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References."=";
   subtype VirtualKeyboardAPI1_Access_Array_Access_Array is org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References.VirtualKeyboardAPI1_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboardAPI1_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References."=";
   subtype VirtualKeyboardAPI1_Access_Array_Access_Array_Access is org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References.VirtualKeyboardAPI1_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardAPI1_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package_References."=";

   type VirtualKeyboardAPI1 is new VirtualKeyboard and VirtualKeyboardEventListenerInterface with null record;
   MIN_API : Integer;
   MAX_API : Integer;

   procedure Initialize (This : in out VirtualKeyboardAPI1'Class; activity_Param : access Activity_Package.Activity'Class);
   function Create (activity_Param : access Activity_Package.Activity'Class) return VirtualKeyboardAPI1_Access;
   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboardAPI1; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class);
   procedure onEvent (This : in out VirtualKeyboardAPI1; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);

end org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;


