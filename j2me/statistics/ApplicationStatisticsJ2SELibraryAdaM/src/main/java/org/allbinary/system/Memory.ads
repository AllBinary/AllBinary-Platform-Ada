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
limited with org.allbinary.system.Memory_Package;
package org.allbinary.system.Memory_Package_References is
   type Memory_Access is access all org.allbinary.system.Memory_Package.Memory'Class;
   type Memory_Access_Array is array (Natural range <>) of Memory_Access;
   type Memory_Access_Array_Access is access all Memory_Access_Array;
   type Memory_Access_Array_Access_Array is array (Natural range <>) of Memory_Access_Array_Access;
   type Memory_Access_Array_Access_Array_Access is access all Memory_Access_Array_Access_Array;
   type Memory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Memory_Access_Array_Access;
   end record;
   function Java_Box (Value : Memory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Memory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Memory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Memory_Access_Array_Access is (if Value /= null and then Value.all in Memory_Access_Array_Object'Class then Memory_Access_Array_Object'Class (Value.all).Value else null);
   type Memory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Memory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Memory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Memory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Memory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Memory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Memory_Access_Array_Access_Array_Object'Class then Memory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.system.Memory_Package_References;

with org.allbinary.system.Memory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.system.Memory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Memory_Access is org.allbinary.system.Memory_Package_References.Memory_Access;
   function "=" (Left, Right : Memory_Access) return Boolean renames org.allbinary.system.Memory_Package_References."=";
   subtype Memory_Access_Array is org.allbinary.system.Memory_Package_References.Memory_Access_Array;
   function "=" (Left, Right : Memory_Access_Array) return Boolean renames org.allbinary.system.Memory_Package_References."=";
   subtype Memory_Access_Array_Access is org.allbinary.system.Memory_Package_References.Memory_Access_Array_Access;
   function "=" (Left, Right : Memory_Access_Array_Access) return Boolean renames org.allbinary.system.Memory_Package_References."=";
   function Java_Box (Value : Memory_Access_Array_Access) return Java_Object_Access renames org.allbinary.system.Memory_Package_References.Java_Box;
   function Java_Unbox_Memory_Access_Array (Value : access Java_Object'Class) return Memory_Access_Array_Access renames org.allbinary.system.Memory_Package_References.Java_Unbox_Memory_Access_Array;
   subtype Memory_Access_Array_Access_Array is org.allbinary.system.Memory_Package_References.Memory_Access_Array_Access_Array;
   function "=" (Left, Right : Memory_Access_Array_Access_Array) return Boolean renames org.allbinary.system.Memory_Package_References."=";
   subtype Memory_Access_Array_Access_Array_Access is org.allbinary.system.Memory_Package_References.Memory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Memory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.system.Memory_Package_References."=";
   function Java_Box (Value : Memory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.system.Memory_Package_References.Java_Box;
   function Java_Unbox_Memory_Access_Array_Access_Array (Value : access Java_Object'Class) return Memory_Access_Array_Access_Array_Access renames org.allbinary.system.Memory_Package_References.Java_Unbox_Memory_Access_Array_Access_Array;

   type Memory is new Java_Object with null record;

   procedure Initialize (This : in out Memory'Class);
   function Create return Memory_Access;
   function getInfo return Unbounded_String;

end org.allbinary.system.Memory_Package;


