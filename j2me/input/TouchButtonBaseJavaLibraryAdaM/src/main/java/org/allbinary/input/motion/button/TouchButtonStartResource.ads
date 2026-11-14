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
limited with org.allbinary.input.motion.button.TouchButtonStartResource_Package;
package org.allbinary.input.motion.button.TouchButtonStartResource_Package_References is
   type TouchButtonStartResource_Access is access all org.allbinary.input.motion.button.TouchButtonStartResource_Package.TouchButtonStartResource'Class;
   type TouchButtonStartResource_Access_Array is array (Natural range <>) of TouchButtonStartResource_Access;
   type TouchButtonStartResource_Access_Array_Access is access all TouchButtonStartResource_Access_Array;
   type TouchButtonStartResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonStartResource_Access_Array_Access;
   type TouchButtonStartResource_Access_Array_Access_Array_Access is access all TouchButtonStartResource_Access_Array_Access_Array;
   type TouchButtonStartResource_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonStartResource_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonStartResource_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonStartResource_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonStartResource_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonStartResource_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonStartResource_Access_Array_Object'Class then TouchButtonStartResource_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonStartResource_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonStartResource_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonStartResource_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonStartResource_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonStartResource_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonStartResource_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonStartResource_Access_Array_Access_Array_Object'Class then TouchButtonStartResource_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonStartResource_Package_References;

with org.allbinary.input.motion.button.TouchButtonStartResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.input.motion.button.TouchButtonStartResource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonStartResource_Access is org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.TouchButtonStartResource_Access;
   function "=" (Left, Right : TouchButtonStartResource_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References."=";
   subtype TouchButtonStartResource_Access_Array is org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.TouchButtonStartResource_Access_Array;
   function "=" (Left, Right : TouchButtonStartResource_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References."=";
   subtype TouchButtonStartResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.TouchButtonStartResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonStartResource_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References."=";
   function Java_Box (Value : TouchButtonStartResource_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonStartResource_Access_Array (Value : access Java_Object'Class) return TouchButtonStartResource_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.Java_Unbox_TouchButtonStartResource_Access_Array;
   subtype TouchButtonStartResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.TouchButtonStartResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonStartResource_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References."=";
   subtype TouchButtonStartResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.TouchButtonStartResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonStartResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References."=";
   function Java_Box (Value : TouchButtonStartResource_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonStartResource_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonStartResource_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonStartResource_Package_References.Java_Unbox_TouchButtonStartResource_Access_Array_Access_Array;

   type TouchButtonStartResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonStartResource'Class);
   function Create return TouchButtonStartResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonStartResource_Package;


