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
limited with org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;
package org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References is
   type TouchButtonTurnRightResource_Access is access all org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package.TouchButtonTurnRightResource'Class;
   type TouchButtonTurnRightResource_Access_Array is array (Natural range <>) of TouchButtonTurnRightResource_Access;
   type TouchButtonTurnRightResource_Access_Array_Access is access all TouchButtonTurnRightResource_Access_Array;
   type TouchButtonTurnRightResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonTurnRightResource_Access_Array_Access;
   type TouchButtonTurnRightResource_Access_Array_Access_Array_Access is access all TouchButtonTurnRightResource_Access_Array_Access_Array;
   type TouchButtonTurnRightResource_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonTurnRightResource_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonTurnRightResource_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonTurnRightResource_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonTurnRightResource_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonTurnRightResource_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonTurnRightResource_Access_Array_Object'Class then TouchButtonTurnRightResource_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonTurnRightResource_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonTurnRightResource_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonTurnRightResource_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonTurnRightResource_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonTurnRightResource_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonTurnRightResource_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonTurnRightResource_Access_Array_Access_Array_Object'Class then TouchButtonTurnRightResource_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References;

with org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonTurnRightResource_Access is org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.TouchButtonTurnRightResource_Access;
   function "=" (Left, Right : TouchButtonTurnRightResource_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References."=";
   subtype TouchButtonTurnRightResource_Access_Array is org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.TouchButtonTurnRightResource_Access_Array;
   function "=" (Left, Right : TouchButtonTurnRightResource_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References."=";
   subtype TouchButtonTurnRightResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.TouchButtonTurnRightResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonTurnRightResource_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References."=";
   function Java_Box (Value : TouchButtonTurnRightResource_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonTurnRightResource_Access_Array (Value : access Java_Object'Class) return TouchButtonTurnRightResource_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.Java_Unbox_TouchButtonTurnRightResource_Access_Array;
   subtype TouchButtonTurnRightResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.TouchButtonTurnRightResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonTurnRightResource_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References."=";
   subtype TouchButtonTurnRightResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.TouchButtonTurnRightResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonTurnRightResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References."=";
   function Java_Box (Value : TouchButtonTurnRightResource_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonTurnRightResource_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonTurnRightResource_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package_References.Java_Unbox_TouchButtonTurnRightResource_Access_Array_Access_Array;

   type TouchButtonTurnRightResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonTurnRightResource'Class);
   function Create return TouchButtonTurnRightResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;


