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
limited with org.allbinary.input.motion.button.TouchButtonDownResource_Package;
package org.allbinary.input.motion.button.TouchButtonDownResource_Package_References is
   type TouchButtonDownResource_Access is access all org.allbinary.input.motion.button.TouchButtonDownResource_Package.TouchButtonDownResource'Class;
   type TouchButtonDownResource_Access_Array is array (Natural range <>) of TouchButtonDownResource_Access;
   type TouchButtonDownResource_Access_Array_Access is access all TouchButtonDownResource_Access_Array;
   type TouchButtonDownResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonDownResource_Access_Array_Access;
   type TouchButtonDownResource_Access_Array_Access_Array_Access is access all TouchButtonDownResource_Access_Array_Access_Array;
   type TouchButtonDownResource_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonDownResource_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonDownResource_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonDownResource_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonDownResource_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonDownResource_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonDownResource_Access_Array_Object'Class then TouchButtonDownResource_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonDownResource_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonDownResource_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonDownResource_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonDownResource_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonDownResource_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonDownResource_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonDownResource_Access_Array_Access_Array_Object'Class then TouchButtonDownResource_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonDownResource_Package_References;

with org.allbinary.input.motion.button.TouchButtonDownResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.input.motion.button.TouchButtonDownResource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonDownResource_Access is org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.TouchButtonDownResource_Access;
   function "=" (Left, Right : TouchButtonDownResource_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References."=";
   subtype TouchButtonDownResource_Access_Array is org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.TouchButtonDownResource_Access_Array;
   function "=" (Left, Right : TouchButtonDownResource_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References."=";
   subtype TouchButtonDownResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.TouchButtonDownResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonDownResource_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References."=";
   function Java_Box (Value : TouchButtonDownResource_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonDownResource_Access_Array (Value : access Java_Object'Class) return TouchButtonDownResource_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.Java_Unbox_TouchButtonDownResource_Access_Array;
   subtype TouchButtonDownResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.TouchButtonDownResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonDownResource_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References."=";
   subtype TouchButtonDownResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.TouchButtonDownResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonDownResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References."=";
   function Java_Box (Value : TouchButtonDownResource_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonDownResource_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonDownResource_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonDownResource_Package_References.Java_Unbox_TouchButtonDownResource_Access_Array_Access_Array;

   type TouchButtonDownResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonDownResource'Class);
   function Create return TouchButtonDownResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonDownResource_Package;


