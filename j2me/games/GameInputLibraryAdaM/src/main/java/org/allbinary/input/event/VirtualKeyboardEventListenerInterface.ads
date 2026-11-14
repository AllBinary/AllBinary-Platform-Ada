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

with AllBinary_Java;
limited with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
package org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References is
   type VirtualKeyboardEventListenerInterface_Access is access all org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package.VirtualKeyboardEventListenerInterface'Class;
   type VirtualKeyboardEventListenerInterface_Access_Array is array (Natural range <>) of VirtualKeyboardEventListenerInterface_Access;
   type VirtualKeyboardEventListenerInterface_Access_Array_Access is access all VirtualKeyboardEventListenerInterface_Access_Array;
   type VirtualKeyboardEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of VirtualKeyboardEventListenerInterface_Access_Array_Access;
   type VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access is access all VirtualKeyboardEventListenerInterface_Access_Array_Access_Array;
   type VirtualKeyboardEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VirtualKeyboardEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : VirtualKeyboardEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VirtualKeyboardEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VirtualKeyboardEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VirtualKeyboardEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in VirtualKeyboardEventListenerInterface_Access_Array_Object'Class then VirtualKeyboardEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VirtualKeyboardEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Object'Class then VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References;

with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package_References;

package org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   type VirtualKeyboardEventListenerInterface is interface and EventListenerInterface;
   subtype VirtualKeyboardEventListenerInterface_Access is org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.VirtualKeyboardEventListenerInterface_Access;
   function "=" (Left, Right : VirtualKeyboardEventListenerInterface_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References."=";
   subtype VirtualKeyboardEventListenerInterface_Access_Array is org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.VirtualKeyboardEventListenerInterface_Access_Array;
   function "=" (Left, Right : VirtualKeyboardEventListenerInterface_Access_Array) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References."=";
   subtype VirtualKeyboardEventListenerInterface_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.VirtualKeyboardEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References."=";
   function Java_Box (Value : VirtualKeyboardEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_VirtualKeyboardEventListenerInterface_Access_Array (Value : access Java_Object'Class) return VirtualKeyboardEventListenerInterface_Access_Array_Access renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.Java_Unbox_VirtualKeyboardEventListenerInterface_Access_Array;
   subtype VirtualKeyboardEventListenerInterface_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.VirtualKeyboardEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboardEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References."=";
   subtype VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References."=";
   function Java_Box (Value : VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_VirtualKeyboardEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return VirtualKeyboardEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package_References.Java_Unbox_VirtualKeyboardEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_VirtualKeyboardEventListenerInterface (Value : VirtualKeyboardEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboardEventListenerInterface; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class) is abstract;

end org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;


