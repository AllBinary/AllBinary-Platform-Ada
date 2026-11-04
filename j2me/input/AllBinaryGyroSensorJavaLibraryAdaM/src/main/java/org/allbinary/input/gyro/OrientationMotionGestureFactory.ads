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

limited with org.allbinary.input.gyro.OrientationMotionGestureFactory_Package;
package org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References is
   type OrientationMotionGestureFactory_Access is access all org.allbinary.input.gyro.OrientationMotionGestureFactory_Package.OrientationMotionGestureFactory'Class;
   type OrientationMotionGestureFactory_Access_Array is array (Natural range <>) of OrientationMotionGestureFactory_Access;
   type OrientationMotionGestureFactory_Access_Array_Access is access all OrientationMotionGestureFactory_Access_Array;
   type OrientationMotionGestureFactory_Access_Array_Access_Array is array (Natural range <>) of OrientationMotionGestureFactory_Access_Array_Access;
   type OrientationMotionGestureFactory_Access_Array_Access_Array_Access is access all OrientationMotionGestureFactory_Access_Array_Access_Array;
end org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References;

with org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References;
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

package org.allbinary.input.gyro.OrientationMotionGestureFactory_Package is

   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
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


   subtype OrientationMotionGestureFactory_Access is org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References.OrientationMotionGestureFactory_Access;
   function "=" (Left, Right : OrientationMotionGestureFactory_Access) return Boolean renames org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References."=";
   subtype OrientationMotionGestureFactory_Access_Array is org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References.OrientationMotionGestureFactory_Access_Array;
   function "=" (Left, Right : OrientationMotionGestureFactory_Access_Array) return Boolean renames org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References."=";
   subtype OrientationMotionGestureFactory_Access_Array_Access is org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References.OrientationMotionGestureFactory_Access_Array_Access;
   function "=" (Left, Right : OrientationMotionGestureFactory_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References."=";
   subtype OrientationMotionGestureFactory_Access_Array_Access_Array is org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References.OrientationMotionGestureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OrientationMotionGestureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References."=";
   subtype OrientationMotionGestureFactory_Access_Array_Access_Array_Access is org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References.OrientationMotionGestureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrientationMotionGestureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.OrientationMotionGestureFactory_Package_References."=";

   type OrientationMotionGestureFactory is new Java_Object with record
      LEFT : MotionGestureInput_Access;
      RIGHT : MotionGestureInput_Access;
      UP : MotionGestureInput_Access;
      DOWN : MotionGestureInput_Access;
      ROLL_LEFT : MotionGestureInput_Access;
      ROLL_RIGHT : MotionGestureInput_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out OrientationMotionGestureFactory'Class);
   function Create return OrientationMotionGestureFactory_Access;
   function getInstance return OrientationMotionGestureFactory_Access;

end org.allbinary.input.gyro.OrientationMotionGestureFactory_Package;


