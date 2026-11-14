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
limited with org.allbinary.input.motion.MotionRecognizer_Package;
package org.allbinary.input.motion.MotionRecognizer_Package_References is
   type MotionRecognizer_Access is access all org.allbinary.input.motion.MotionRecognizer_Package.MotionRecognizer'Class;
   type MotionRecognizer_Access_Array is array (Natural range <>) of MotionRecognizer_Access;
   type MotionRecognizer_Access_Array_Access is access all MotionRecognizer_Access_Array;
   type MotionRecognizer_Access_Array_Access_Array is array (Natural range <>) of MotionRecognizer_Access_Array_Access;
   type MotionRecognizer_Access_Array_Access_Array_Access is access all MotionRecognizer_Access_Array_Access_Array;
   type MotionRecognizer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionRecognizer_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionRecognizer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionRecognizer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionRecognizer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionRecognizer_Access_Array_Access is (if Value /= null and then Value.all in MotionRecognizer_Access_Array_Object'Class then MotionRecognizer_Access_Array_Object'Class (Value.all).Value else null);
   type MotionRecognizer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionRecognizer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionRecognizer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionRecognizer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionRecognizer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionRecognizer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionRecognizer_Access_Array_Access_Array_Object'Class then MotionRecognizer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.MotionRecognizer_Package_References;

with org.allbinary.input.motion.MotionRecognizer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.motion.MotionRecognizer_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MotionRecognizer_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access;
   function "=" (Left, Right : MotionRecognizer_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array;
   function "=" (Left, Right : MotionRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   function Java_Box (Value : MotionRecognizer_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.MotionRecognizer_Package_References.Java_Box;
   function Java_Unbox_MotionRecognizer_Access_Array (Value : access Java_Object'Class) return MotionRecognizer_Access_Array_Access renames org.allbinary.input.motion.MotionRecognizer_Package_References.Java_Unbox_MotionRecognizer_Access_Array;
   subtype MotionRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   function Java_Box (Value : MotionRecognizer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.MotionRecognizer_Package_References.Java_Box;
   function Java_Unbox_MotionRecognizer_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionRecognizer_Access_Array_Access_Array_Access renames org.allbinary.input.motion.MotionRecognizer_Package_References.Java_Unbox_MotionRecognizer_Access_Array_Access_Array;

   type MotionRecognizer is new Java_Object with null record;

   procedure Initialize (This : in out MotionRecognizer'Class);
   function Create return MotionRecognizer_Access;
   procedure processStartMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processEndMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processDraggedMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);

end org.allbinary.input.motion.MotionRecognizer_Package;


