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

limited with org.allbinary.android.input.VirtualKeyboard_Package;
package org.allbinary.android.input.VirtualKeyboard_Package_References is
   type VirtualKeyboard_Access is access all org.allbinary.android.input.VirtualKeyboard_Package.VirtualKeyboard'Class;
   type VirtualKeyboard_Access_Array is array (Natural range <>) of VirtualKeyboard_Access;
   type VirtualKeyboard_Access_Array_Access is access all VirtualKeyboard_Access_Array;
   type VirtualKeyboard_Access_Array_Access_Array is array (Natural range <>) of VirtualKeyboard_Access_Array_Access;
   type VirtualKeyboard_Access_Array_Access_Array_Access is access all VirtualKeyboard_Access_Array_Access_Array;
end org.allbinary.android.input.VirtualKeyboard_Package_References;

with org.allbinary.android.input.VirtualKeyboard_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.android.input.VirtualKeyboard_Package is

   package VirtualKeyboardEvent_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEvent_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
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


   subtype VirtualKeyboard_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access;
   function "=" (Left, Right : VirtualKeyboard_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   subtype VirtualKeyboard_Access_Array is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array;
   function "=" (Left, Right : VirtualKeyboard_Access_Array) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   subtype VirtualKeyboard_Access_Array_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboard_Access_Array_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   subtype VirtualKeyboard_Access_Array_Access_Array is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboard_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   subtype VirtualKeyboard_Access_Array_Access_Array_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboard_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";

   type VirtualKeyboard is new Java_Object with null record;
   NULL_VIRTUAL_KEYBOARD : VirtualKeyboard_Access;

   procedure Initialize (This : in out VirtualKeyboard'Class);
   function Create return VirtualKeyboard_Access;
   procedure onEvent (This : in out VirtualKeyboard; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboard; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class);
   procedure forceHide (This : in out VirtualKeyboard);
   procedure hide (This : in out VirtualKeyboard);

end org.allbinary.android.input.VirtualKeyboard_Package;


