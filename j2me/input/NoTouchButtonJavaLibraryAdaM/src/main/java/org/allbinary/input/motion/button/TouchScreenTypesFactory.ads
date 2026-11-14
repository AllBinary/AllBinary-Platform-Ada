-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.input.motion.button.TouchScreenTypesFactory_Package;
package org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References is
   type TouchScreenTypesFactory_Access is access all org.allbinary.input.motion.button.TouchScreenTypesFactory_Package.TouchScreenTypesFactory'Class;
   type TouchScreenTypesFactory_Access_Array is array (Natural range <>) of TouchScreenTypesFactory_Access;
   type TouchScreenTypesFactory_Access_Array_Access is access all TouchScreenTypesFactory_Access_Array;
   type TouchScreenTypesFactory_Access_Array_Access_Array is array (Natural range <>) of TouchScreenTypesFactory_Access_Array_Access;
   type TouchScreenTypesFactory_Access_Array_Access_Array_Access is access all TouchScreenTypesFactory_Access_Array_Access_Array;
   type TouchScreenTypesFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchScreenTypesFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchScreenTypesFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchScreenTypesFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchScreenTypesFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchScreenTypesFactory_Access_Array_Access is (if Value /= null and then Value.all in TouchScreenTypesFactory_Access_Array_Object'Class then TouchScreenTypesFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TouchScreenTypesFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchScreenTypesFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchScreenTypesFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchScreenTypesFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchScreenTypesFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchScreenTypesFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchScreenTypesFactory_Access_Array_Access_Array_Object'Class then TouchScreenTypesFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References;

with org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.button.TouchScreenType_Package;
with org.allbinary.input.motion.button.TouchScreenType_Package_References;

package org.allbinary.input.motion.button.TouchScreenTypesFactory_Package is

   package Reference_Types is
   subtype TouchScreenType_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access;
   use type TouchScreenType_Access;
   subtype TouchScreenType_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array;
   use type TouchScreenType_Access_Array;
   subtype TouchScreenType_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access;
   use type TouchScreenType_Access_Array_Access;
   subtype TouchScreenType_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array;
   use type TouchScreenType_Access_Array_Access_Array;
   subtype TouchScreenType_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array_Access;
   use type TouchScreenType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchScreenTypesFactory_Access is org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.TouchScreenTypesFactory_Access;
   function "=" (Left, Right : TouchScreenTypesFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References."=";
   subtype TouchScreenTypesFactory_Access_Array is org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.TouchScreenTypesFactory_Access_Array;
   function "=" (Left, Right : TouchScreenTypesFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References."=";
   subtype TouchScreenTypesFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.TouchScreenTypesFactory_Access_Array_Access;
   function "=" (Left, Right : TouchScreenTypesFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References."=";
   function Java_Box (Value : TouchScreenTypesFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.Java_Box;
   function Java_Unbox_TouchScreenTypesFactory_Access_Array (Value : access Java_Object'Class) return TouchScreenTypesFactory_Access_Array_Access renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.Java_Unbox_TouchScreenTypesFactory_Access_Array;
   subtype TouchScreenTypesFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.TouchScreenTypesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchScreenTypesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References."=";
   subtype TouchScreenTypesFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.TouchScreenTypesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchScreenTypesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References."=";
   function Java_Box (Value : TouchScreenTypesFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.Java_Box;
   function Java_Unbox_TouchScreenTypesFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchScreenTypesFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchScreenTypesFactory_Package_References.Java_Unbox_TouchScreenTypesFactory_Access_Array_Access_Array;

   type TouchScreenTypesFactory is new Java_Object with record
      FINGER : TouchScreenType_Access;
      NOTOUCH : TouchScreenType_Access;
      STYLUS : TouchScreenType_Access;
      UNDEFINED : TouchScreenType_Access;
   end record;
   instance : TouchScreenTypesFactory_Access;

   procedure Initialize (This : in out TouchScreenTypesFactory'Class);
   function Create return TouchScreenTypesFactory_Access;
   function getInstance return TouchScreenTypesFactory_Access;

end org.allbinary.input.motion.button.TouchScreenTypesFactory_Package;


