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
limited with org.allbinary.debug.DebugInterface_Package;
package org.allbinary.debug.DebugInterface_Package_References is
   type DebugInterface_Access is access all org.allbinary.debug.DebugInterface_Package.DebugInterface'Class;
   type DebugInterface_Access_Array is array (Natural range <>) of DebugInterface_Access;
   type DebugInterface_Access_Array_Access is access all DebugInterface_Access_Array;
   type DebugInterface_Access_Array_Access_Array is array (Natural range <>) of DebugInterface_Access_Array_Access;
   type DebugInterface_Access_Array_Access_Array_Access is access all DebugInterface_Access_Array_Access_Array;
   type DebugInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DebugInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : DebugInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DebugInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DebugInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DebugInterface_Access_Array_Access is (if Value /= null and then Value.all in DebugInterface_Access_Array_Object'Class then DebugInterface_Access_Array_Object'Class (Value.all).Value else null);
   type DebugInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DebugInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DebugInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DebugInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DebugInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DebugInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DebugInterface_Access_Array_Access_Array_Object'Class then DebugInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.debug.DebugInterface_Package_References;

with org.allbinary.debug.DebugInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.debug.DebugInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type DebugInterface is interface;
   subtype DebugInterface_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access;
   function "=" (Left, Right : DebugInterface_Access) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   subtype DebugInterface_Access_Array is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array;
   function "=" (Left, Right : DebugInterface_Access_Array) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   subtype DebugInterface_Access_Array_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access;
   function "=" (Left, Right : DebugInterface_Access_Array_Access) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   function Java_Box (Value : DebugInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.debug.DebugInterface_Package_References.Java_Box;
   function Java_Unbox_DebugInterface_Access_Array (Value : access Java_Object'Class) return DebugInterface_Access_Array_Access renames org.allbinary.debug.DebugInterface_Package_References.Java_Unbox_DebugInterface_Access_Array;
   subtype DebugInterface_Access_Array_Access_Array is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DebugInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   subtype DebugInterface_Access_Array_Access_Array_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DebugInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   function Java_Box (Value : DebugInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.debug.DebugInterface_Package_References.Java_Box;
   function Java_Unbox_DebugInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return DebugInterface_Access_Array_Access_Array_Access renames org.allbinary.debug.DebugInterface_Package_References.Java_Unbox_DebugInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_DebugInterface (Value : DebugInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure start (This : in out DebugInterface) is abstract;
   procedure stop (This : in out DebugInterface) is abstract;
   function getStartTime (This : in out DebugInterface) return Long_Long_Integer is abstract;
   function getMaxTime (This : in out DebugInterface) return Long_Long_Integer is abstract;
   function isRunning (This : in out DebugInterface) return Boolean is abstract;

end org.allbinary.debug.DebugInterface_Package;


