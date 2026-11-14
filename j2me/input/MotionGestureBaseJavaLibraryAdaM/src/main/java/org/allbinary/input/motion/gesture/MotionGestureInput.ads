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
limited with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
package org.allbinary.input.motion.gesture.MotionGestureInput_Package_References is
   type MotionGestureInput_Access is access all org.allbinary.input.motion.gesture.MotionGestureInput_Package.MotionGestureInput'Class;
   type MotionGestureInput_Access_Array is array (Natural range <>) of MotionGestureInput_Access;
   type MotionGestureInput_Access_Array_Access is access all MotionGestureInput_Access_Array;
   type MotionGestureInput_Access_Array_Access_Array is array (Natural range <>) of MotionGestureInput_Access_Array_Access;
   type MotionGestureInput_Access_Array_Access_Array_Access is access all MotionGestureInput_Access_Array_Access_Array;
   type MotionGestureInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureInput_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureInput_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureInput_Access_Array_Object'Class then MotionGestureInput_Access_Array_Object'Class (Value.all).Value else null);
   type MotionGestureInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureInput_Access_Array_Access_Array_Object'Class then MotionGestureInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;

with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.input.motion.gesture.MotionGestureInput_Package is

   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   function "=" (Left, Right : MotionGestureInput_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   function Java_Box (Value : MotionGestureInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.Java_Box;
   function Java_Unbox_MotionGestureInput_Access_Array (Value : access Java_Object'Class) return MotionGestureInput_Access_Array_Access renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.Java_Unbox_MotionGestureInput_Access_Array;
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   function Java_Box (Value : MotionGestureInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.Java_Box;
   function Java_Unbox_MotionGestureInput_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionGestureInput_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.Java_Unbox_MotionGestureInput_Access_Array_Access_Array;

   type MotionGestureInput is new Input_Package.Input with null record;

   procedure Initialize (This : in out MotionGestureInput'Class; id : Integer; name : Unbounded_String);
   function Create (id : Integer; name : Unbounded_String) return MotionGestureInput_Access;

end org.allbinary.input.motion.gesture.MotionGestureInput_Package;


