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

limited with org.allbinary.input.event.VirtualKeyboardEvent_Package;
package org.allbinary.input.event.VirtualKeyboardEvent_Package_References is
   type VirtualKeyboardEvent_Access is access all org.allbinary.input.event.VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class;
   type VirtualKeyboardEvent_Access_Array is array (Natural range <>) of VirtualKeyboardEvent_Access;
   type VirtualKeyboardEvent_Access_Array_Access is access all VirtualKeyboardEvent_Access_Array;
   type VirtualKeyboardEvent_Access_Array_Access_Array is array (Natural range <>) of VirtualKeyboardEvent_Access_Array_Access;
   type VirtualKeyboardEvent_Access_Array_Access_Array_Access is access all VirtualKeyboardEvent_Access_Array_Access_Array;
end org.allbinary.input.event.VirtualKeyboardEvent_Package_References;

with org.allbinary.input.event.VirtualKeyboardEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.input.event.VirtualKeyboardEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


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

   type VirtualKeyboardEvent is new AllBinaryEventObject with null record;

   procedure Initialize (This : in out VirtualKeyboardEvent'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return VirtualKeyboardEvent_Access;

end org.allbinary.input.event.VirtualKeyboardEvent_Package;


