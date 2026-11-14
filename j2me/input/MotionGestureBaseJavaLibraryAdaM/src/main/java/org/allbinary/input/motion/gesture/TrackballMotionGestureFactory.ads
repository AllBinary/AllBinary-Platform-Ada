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
limited with org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package;
package org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References is
   type TrackballMotionGestureFactory_Access is access all org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package.TrackballMotionGestureFactory'Class;
   type TrackballMotionGestureFactory_Access_Array is array (Natural range <>) of TrackballMotionGestureFactory_Access;
   type TrackballMotionGestureFactory_Access_Array_Access is access all TrackballMotionGestureFactory_Access_Array;
   type TrackballMotionGestureFactory_Access_Array_Access_Array is array (Natural range <>) of TrackballMotionGestureFactory_Access_Array_Access;
   type TrackballMotionGestureFactory_Access_Array_Access_Array_Access is access all TrackballMotionGestureFactory_Access_Array_Access_Array;
   type TrackballMotionGestureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackballMotionGestureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackballMotionGestureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackballMotionGestureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackballMotionGestureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackballMotionGestureFactory_Access_Array_Access is (if Value /= null and then Value.all in TrackballMotionGestureFactory_Access_Array_Object'Class then TrackballMotionGestureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TrackballMotionGestureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackballMotionGestureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackballMotionGestureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackballMotionGestureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackballMotionGestureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackballMotionGestureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TrackballMotionGestureFactory_Access_Array_Access_Array_Object'Class then TrackballMotionGestureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References;

with org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References;
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

package org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package is

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


   subtype TrackballMotionGestureFactory_Access is org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.TrackballMotionGestureFactory_Access;
   function "=" (Left, Right : TrackballMotionGestureFactory_Access) return Boolean renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References."=";
   subtype TrackballMotionGestureFactory_Access_Array is org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.TrackballMotionGestureFactory_Access_Array;
   function "=" (Left, Right : TrackballMotionGestureFactory_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References."=";
   subtype TrackballMotionGestureFactory_Access_Array_Access is org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.TrackballMotionGestureFactory_Access_Array_Access;
   function "=" (Left, Right : TrackballMotionGestureFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References."=";
   function Java_Box (Value : TrackballMotionGestureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.Java_Box;
   function Java_Unbox_TrackballMotionGestureFactory_Access_Array (Value : access Java_Object'Class) return TrackballMotionGestureFactory_Access_Array_Access renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.Java_Unbox_TrackballMotionGestureFactory_Access_Array;
   subtype TrackballMotionGestureFactory_Access_Array_Access_Array is org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.TrackballMotionGestureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TrackballMotionGestureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References."=";
   subtype TrackballMotionGestureFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.TrackballMotionGestureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackballMotionGestureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References."=";
   function Java_Box (Value : TrackballMotionGestureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.Java_Box;
   function Java_Unbox_TrackballMotionGestureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TrackballMotionGestureFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package_References.Java_Unbox_TrackballMotionGestureFactory_Access_Array_Access_Array;

   type TrackballMotionGestureFactory is new Java_Object with record
      LEFT : MotionGestureInput_Access;
      RIGHT : MotionGestureInput_Access;
      UP : MotionGestureInput_Access;
      DOWN : MotionGestureInput_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out TrackballMotionGestureFactory'Class);
   function Create return TrackballMotionGestureFactory_Access;
   function getInstance return TrackballMotionGestureFactory_Access;

end org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package;


