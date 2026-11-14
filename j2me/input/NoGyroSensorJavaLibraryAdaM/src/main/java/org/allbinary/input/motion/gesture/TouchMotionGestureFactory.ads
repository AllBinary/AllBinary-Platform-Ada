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
limited with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
package org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References is
   type TouchMotionGestureFactory_Access is access all org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package.TouchMotionGestureFactory'Class;
   type TouchMotionGestureFactory_Access_Array is array (Natural range <>) of TouchMotionGestureFactory_Access;
   type TouchMotionGestureFactory_Access_Array_Access is access all TouchMotionGestureFactory_Access_Array;
   type TouchMotionGestureFactory_Access_Array_Access_Array is array (Natural range <>) of TouchMotionGestureFactory_Access_Array_Access;
   type TouchMotionGestureFactory_Access_Array_Access_Array_Access is access all TouchMotionGestureFactory_Access_Array_Access_Array;
   type TouchMotionGestureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchMotionGestureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchMotionGestureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchMotionGestureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchMotionGestureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchMotionGestureFactory_Access_Array_Access is (if Value /= null and then Value.all in TouchMotionGestureFactory_Access_Array_Object'Class then TouchMotionGestureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TouchMotionGestureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchMotionGestureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchMotionGestureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchMotionGestureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchMotionGestureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchMotionGestureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchMotionGestureFactory_Access_Array_Access_Array_Object'Class then TouchMotionGestureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References;

with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;

package org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package is

   package Reference_Types is
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   use type MotionGestureInput_Access;
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   use type MotionGestureInput_Access_Array;
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access;
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   use type MotionGestureInput_Access_Array_Access_Array;
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchMotionGestureFactory_Access is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access;
   function "=" (Left, Right : TouchMotionGestureFactory_Access) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   subtype TouchMotionGestureFactory_Access_Array is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access_Array;
   function "=" (Left, Right : TouchMotionGestureFactory_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   subtype TouchMotionGestureFactory_Access_Array_Access is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access_Array_Access;
   function "=" (Left, Right : TouchMotionGestureFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   function Java_Box (Value : TouchMotionGestureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.Java_Box;
   function Java_Unbox_TouchMotionGestureFactory_Access_Array (Value : access Java_Object'Class) return TouchMotionGestureFactory_Access_Array_Access renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.Java_Unbox_TouchMotionGestureFactory_Access_Array;
   subtype TouchMotionGestureFactory_Access_Array_Access_Array is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchMotionGestureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   subtype TouchMotionGestureFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchMotionGestureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   function Java_Box (Value : TouchMotionGestureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.Java_Box;
   function Java_Unbox_TouchMotionGestureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchMotionGestureFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.Java_Unbox_TouchMotionGestureFactory_Access_Array_Access_Array;

   type TouchMotionGestureFactory is new Java_Object with record
      LEFT : MotionGestureInput_Access;
      RIGHT : MotionGestureInput_Access;
      UP : MotionGestureInput_Access;
      DOWN : MotionGestureInput_Access;
      PRESSED : MotionGestureInput_Access;
      RELEASED : MotionGestureInput_Access;
      DIAGONAL_DOWN_RIGHT : MotionGestureInput_Access;
      DIAGONAL_DOWN_LEFT : MotionGestureInput_Access;
      DIAGONAL_UP_RIGHT : MotionGestureInput_Access;
      DIAGONAL_UP_LEFT : MotionGestureInput_Access;
      SCROLL_UP : MotionGestureInput_Access;
      SCROLL_DOWN : MotionGestureInput_Access;
      NO_MOTION : MotionGestureInput_Access;
      LAST_MOTION : MotionGestureInput_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out TouchMotionGestureFactory'Class);
   function Create return TouchMotionGestureFactory_Access;
   function getInstance return TouchMotionGestureFactory_Access;

end org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;


