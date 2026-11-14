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
limited with org.allbinary.input.motion.button.TouchButtonFireResource_Package;
package org.allbinary.input.motion.button.TouchButtonFireResource_Package_References is
   type TouchButtonFireResource_Access is access all org.allbinary.input.motion.button.TouchButtonFireResource_Package.TouchButtonFireResource'Class;
   type TouchButtonFireResource_Access_Array is array (Natural range <>) of TouchButtonFireResource_Access;
   type TouchButtonFireResource_Access_Array_Access is access all TouchButtonFireResource_Access_Array;
   type TouchButtonFireResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonFireResource_Access_Array_Access;
   type TouchButtonFireResource_Access_Array_Access_Array_Access is access all TouchButtonFireResource_Access_Array_Access_Array;
   type TouchButtonFireResource_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonFireResource_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonFireResource_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonFireResource_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonFireResource_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonFireResource_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonFireResource_Access_Array_Object'Class then TouchButtonFireResource_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonFireResource_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonFireResource_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonFireResource_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonFireResource_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonFireResource_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonFireResource_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonFireResource_Access_Array_Access_Array_Object'Class then TouchButtonFireResource_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonFireResource_Package_References;

with org.allbinary.input.motion.button.TouchButtonFireResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.input.motion.button.TouchButtonFireResource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonFireResource_Access is org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.TouchButtonFireResource_Access;
   function "=" (Left, Right : TouchButtonFireResource_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References."=";
   subtype TouchButtonFireResource_Access_Array is org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.TouchButtonFireResource_Access_Array;
   function "=" (Left, Right : TouchButtonFireResource_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References."=";
   subtype TouchButtonFireResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.TouchButtonFireResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonFireResource_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References."=";
   function Java_Box (Value : TouchButtonFireResource_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonFireResource_Access_Array (Value : access Java_Object'Class) return TouchButtonFireResource_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.Java_Unbox_TouchButtonFireResource_Access_Array;
   subtype TouchButtonFireResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.TouchButtonFireResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonFireResource_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References."=";
   subtype TouchButtonFireResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.TouchButtonFireResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonFireResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References."=";
   function Java_Box (Value : TouchButtonFireResource_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonFireResource_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonFireResource_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonFireResource_Package_References.Java_Unbox_TouchButtonFireResource_Access_Array_Access_Array;

   type TouchButtonFireResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonFireResource'Class);
   function Create return TouchButtonFireResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonFireResource_Package;


