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
limited with org.allbinary.input.NoAllBinarySensor_Package;
package org.allbinary.input.NoAllBinarySensor_Package_References is
   type NoAllBinarySensor_Access is access all org.allbinary.input.NoAllBinarySensor_Package.NoAllBinarySensor'Class;
   type NoAllBinarySensor_Access_Array is array (Natural range <>) of NoAllBinarySensor_Access;
   type NoAllBinarySensor_Access_Array_Access is access all NoAllBinarySensor_Access_Array;
   type NoAllBinarySensor_Access_Array_Access_Array is array (Natural range <>) of NoAllBinarySensor_Access_Array_Access;
   type NoAllBinarySensor_Access_Array_Access_Array_Access is access all NoAllBinarySensor_Access_Array_Access_Array;
   type NoAllBinarySensor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoAllBinarySensor_Access_Array_Access;
   end record;
   function Java_Box (Value : NoAllBinarySensor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoAllBinarySensor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoAllBinarySensor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoAllBinarySensor_Access_Array_Access is (if Value /= null and then Value.all in NoAllBinarySensor_Access_Array_Object'Class then NoAllBinarySensor_Access_Array_Object'Class (Value.all).Value else null);
   type NoAllBinarySensor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoAllBinarySensor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoAllBinarySensor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoAllBinarySensor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoAllBinarySensor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoAllBinarySensor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoAllBinarySensor_Access_Array_Access_Array_Object'Class then NoAllBinarySensor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.NoAllBinarySensor_Package_References;

with org.allbinary.input.NoAllBinarySensor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.AllBinarySensor_Package; use org.allbinary.input.AllBinarySensor_Package;

package org.allbinary.input.NoAllBinarySensor_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NoAllBinarySensor_Access is org.allbinary.input.NoAllBinarySensor_Package_References.NoAllBinarySensor_Access;
   function "=" (Left, Right : NoAllBinarySensor_Access) return Boolean renames org.allbinary.input.NoAllBinarySensor_Package_References."=";
   subtype NoAllBinarySensor_Access_Array is org.allbinary.input.NoAllBinarySensor_Package_References.NoAllBinarySensor_Access_Array;
   function "=" (Left, Right : NoAllBinarySensor_Access_Array) return Boolean renames org.allbinary.input.NoAllBinarySensor_Package_References."=";
   subtype NoAllBinarySensor_Access_Array_Access is org.allbinary.input.NoAllBinarySensor_Package_References.NoAllBinarySensor_Access_Array_Access;
   function "=" (Left, Right : NoAllBinarySensor_Access_Array_Access) return Boolean renames org.allbinary.input.NoAllBinarySensor_Package_References."=";
   function Java_Box (Value : NoAllBinarySensor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.NoAllBinarySensor_Package_References.Java_Box;
   function Java_Unbox_NoAllBinarySensor_Access_Array (Value : access Java_Object'Class) return NoAllBinarySensor_Access_Array_Access renames org.allbinary.input.NoAllBinarySensor_Package_References.Java_Unbox_NoAllBinarySensor_Access_Array;
   subtype NoAllBinarySensor_Access_Array_Access_Array is org.allbinary.input.NoAllBinarySensor_Package_References.NoAllBinarySensor_Access_Array_Access_Array;
   function "=" (Left, Right : NoAllBinarySensor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.NoAllBinarySensor_Package_References."=";
   subtype NoAllBinarySensor_Access_Array_Access_Array_Access is org.allbinary.input.NoAllBinarySensor_Package_References.NoAllBinarySensor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoAllBinarySensor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.NoAllBinarySensor_Package_References."=";
   function Java_Box (Value : NoAllBinarySensor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.NoAllBinarySensor_Package_References.Java_Box;
   function Java_Unbox_NoAllBinarySensor_Access_Array_Access_Array (Value : access Java_Object'Class) return NoAllBinarySensor_Access_Array_Access_Array_Access renames org.allbinary.input.NoAllBinarySensor_Package_References.Java_Unbox_NoAllBinarySensor_Access_Array_Access_Array;

   type NoAllBinarySensor is new AllBinarySensor with null record;
   instance : NoAllBinarySensor_Access;

   procedure Initialize (This : in out NoAllBinarySensor'Class);
   function Create return NoAllBinarySensor_Access;
   function getInstance return NoAllBinarySensor_Access;

end org.allbinary.input.NoAllBinarySensor_Package;


