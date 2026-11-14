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
limited with org.allbinary.input.motion.button.TouchScreenTypeFactory_Package;
package org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References is
   type TouchScreenTypeFactory_Access is access all org.allbinary.input.motion.button.TouchScreenTypeFactory_Package.TouchScreenTypeFactory'Class;
   type TouchScreenTypeFactory_Access_Array is array (Natural range <>) of TouchScreenTypeFactory_Access;
   type TouchScreenTypeFactory_Access_Array_Access is access all TouchScreenTypeFactory_Access_Array;
   type TouchScreenTypeFactory_Access_Array_Access_Array is array (Natural range <>) of TouchScreenTypeFactory_Access_Array_Access;
   type TouchScreenTypeFactory_Access_Array_Access_Array_Access is access all TouchScreenTypeFactory_Access_Array_Access_Array;
   type TouchScreenTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchScreenTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchScreenTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchScreenTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchScreenTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchScreenTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in TouchScreenTypeFactory_Access_Array_Object'Class then TouchScreenTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TouchScreenTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchScreenTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchScreenTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchScreenTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchScreenTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchScreenTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchScreenTypeFactory_Access_Array_Access_Array_Object'Class then TouchScreenTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References;

with org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.motion.button.TouchScreenTypeFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchScreenTypeFactory_Access is org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.TouchScreenTypeFactory_Access;
   function "=" (Left, Right : TouchScreenTypeFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References."=";
   subtype TouchScreenTypeFactory_Access_Array is org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.TouchScreenTypeFactory_Access_Array;
   function "=" (Left, Right : TouchScreenTypeFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References."=";
   subtype TouchScreenTypeFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.TouchScreenTypeFactory_Access_Array_Access;
   function "=" (Left, Right : TouchScreenTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References."=";
   function Java_Box (Value : TouchScreenTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.Java_Box;
   function Java_Unbox_TouchScreenTypeFactory_Access_Array (Value : access Java_Object'Class) return TouchScreenTypeFactory_Access_Array_Access renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.Java_Unbox_TouchScreenTypeFactory_Access_Array;
   subtype TouchScreenTypeFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.TouchScreenTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchScreenTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References."=";
   subtype TouchScreenTypeFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.TouchScreenTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchScreenTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References."=";
   function Java_Box (Value : TouchScreenTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.Java_Box;
   function Java_Unbox_TouchScreenTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchScreenTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchScreenTypeFactory_Package_References.Java_Unbox_TouchScreenTypeFactory_Access_Array_Access_Array;

   type TouchScreenTypeFactory is new Java_Object with null record;
   instance : TouchScreenTypeFactory_Access;

   procedure Initialize (This : in out TouchScreenTypeFactory'Class);
   function Create return TouchScreenTypeFactory_Access;
   function getInstance return TouchScreenTypeFactory_Access;
   procedure TouchScreenTypeFactory_Method (This : in out TouchScreenTypeFactory);

end org.allbinary.input.motion.button.TouchScreenTypeFactory_Package;


