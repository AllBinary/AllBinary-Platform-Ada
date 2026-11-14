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
limited with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;
package org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References is
   type CancelTouchButtonInputFactory_Access is access all org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package.CancelTouchButtonInputFactory'Class;
   type CancelTouchButtonInputFactory_Access_Array is array (Natural range <>) of CancelTouchButtonInputFactory_Access;
   type CancelTouchButtonInputFactory_Access_Array_Access is access all CancelTouchButtonInputFactory_Access_Array;
   type CancelTouchButtonInputFactory_Access_Array_Access_Array is array (Natural range <>) of CancelTouchButtonInputFactory_Access_Array_Access;
   type CancelTouchButtonInputFactory_Access_Array_Access_Array_Access is access all CancelTouchButtonInputFactory_Access_Array_Access_Array;
   type CancelTouchButtonInputFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CancelTouchButtonInputFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CancelTouchButtonInputFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CancelTouchButtonInputFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CancelTouchButtonInputFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CancelTouchButtonInputFactory_Access_Array_Access is (if Value /= null and then Value.all in CancelTouchButtonInputFactory_Access_Array_Object'Class then CancelTouchButtonInputFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CancelTouchButtonInputFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CancelTouchButtonInputFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CancelTouchButtonInputFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CancelTouchButtonInputFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CancelTouchButtonInputFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CancelTouchButtonInputFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CancelTouchButtonInputFactory_Access_Array_Access_Array_Object'Class then CancelTouchButtonInputFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References;

with org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;

package org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package is

   package Reference_Types is
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   use type TouchButtonInput_Access;
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   use type TouchButtonInput_Access_Array;
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access;
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   use type TouchButtonInput_Access_Array_Access_Array;
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CancelTouchButtonInputFactory_Access is org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.CancelTouchButtonInputFactory_Access;
   function "=" (Left, Right : CancelTouchButtonInputFactory_Access) return Boolean renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References."=";
   subtype CancelTouchButtonInputFactory_Access_Array is org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.CancelTouchButtonInputFactory_Access_Array;
   function "=" (Left, Right : CancelTouchButtonInputFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References."=";
   subtype CancelTouchButtonInputFactory_Access_Array_Access is org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.CancelTouchButtonInputFactory_Access_Array_Access;
   function "=" (Left, Right : CancelTouchButtonInputFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References."=";
   function Java_Box (Value : CancelTouchButtonInputFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.Java_Box;
   function Java_Unbox_CancelTouchButtonInputFactory_Access_Array (Value : access Java_Object'Class) return CancelTouchButtonInputFactory_Access_Array_Access renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.Java_Unbox_CancelTouchButtonInputFactory_Access_Array;
   subtype CancelTouchButtonInputFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.CancelTouchButtonInputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CancelTouchButtonInputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References."=";
   subtype CancelTouchButtonInputFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.CancelTouchButtonInputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CancelTouchButtonInputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References."=";
   function Java_Box (Value : CancelTouchButtonInputFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.Java_Box;
   function Java_Unbox_CancelTouchButtonInputFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CancelTouchButtonInputFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package_References.Java_Unbox_CancelTouchButtonInputFactory_Access_Array_Access_Array;

   type CancelTouchButtonInputFactory is new Java_Object with record
      cancelInputArray : TouchButtonInput_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out CancelTouchButtonInputFactory'Class);
   function Create return CancelTouchButtonInputFactory_Access;
   function getInstance return CancelTouchButtonInputFactory_Access;
   function getCancel (This : in out CancelTouchButtonInputFactory; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) return TouchButtonInput_Access;
   procedure getCancel (This : in out CancelTouchButtonInputFactory; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class);

end org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;


