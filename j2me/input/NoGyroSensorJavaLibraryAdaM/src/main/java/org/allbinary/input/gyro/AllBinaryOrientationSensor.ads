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

limited with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;
package org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References is
   type AllBinaryOrientationSensor_Access is access all org.allbinary.input.gyro.AllBinaryOrientationSensor_Package.AllBinaryOrientationSensor'Class;
   type AllBinaryOrientationSensor_Access_Array is array (Natural range <>) of AllBinaryOrientationSensor_Access;
   type AllBinaryOrientationSensor_Access_Array_Access is access all AllBinaryOrientationSensor_Access_Array;
   type AllBinaryOrientationSensor_Access_Array_Access_Array is array (Natural range <>) of AllBinaryOrientationSensor_Access_Array_Access;
   type AllBinaryOrientationSensor_Access_Array_Access_Array_Access is access all AllBinaryOrientationSensor_Access_Array_Access_Array;
end org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References;

with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References;
with org.allbinary.input.AllBinarySensor_Package; use org.allbinary.input.AllBinarySensor_Package;
limited with org.allbinary.logic.math.Orientation_Package;
with org.allbinary.logic.math.Orientation_Package_References;

package org.allbinary.input.gyro.AllBinaryOrientationSensor_Package is

   package CompleteMotionGestureInputEventListenerInterface_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
   package AllBinarySensor_Package renames Standard.org.allbinary.input.AllBinarySensor_Package;
   package Orientation_Package renames Standard.org.allbinary.logic.math.Orientation_Package;
   package Reference_Types is
   subtype CompleteMotionGestureInputEventListenerInterface_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access;
   use type CompleteMotionGestureInputEventListenerInterface_Access;
   subtype CompleteMotionGestureInputEventListenerInterface_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access_Array;
   use type CompleteMotionGestureInputEventListenerInterface_Access_Array;
   subtype CompleteMotionGestureInputEventListenerInterface_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access_Array_Access;
   use type CompleteMotionGestureInputEventListenerInterface_Access_Array_Access;
   subtype CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array;
   use type CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array;
   subtype CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array_Access;
   use type CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array_Access;
   subtype Orientation_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access;
   use type Orientation_Access;
   subtype Orientation_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array;
   use type Orientation_Access_Array;
   subtype Orientation_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access;
   use type Orientation_Access_Array_Access;
   subtype Orientation_Access_Array_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array;
   use type Orientation_Access_Array_Access_Array;
   subtype Orientation_Access_Array_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array_Access;
   use type Orientation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryOrientationSensor_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   subtype AllBinaryOrientationSensor_Access_Array is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access_Array) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   subtype AllBinaryOrientationSensor_Access_Array_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   subtype AllBinaryOrientationSensor_Access_Array_Access_Array is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   subtype AllBinaryOrientationSensor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";

   type AllBinaryOrientationSensor is new AllBinarySensor with record
      listener : CompleteMotionGestureInputEventListenerInterface_Access;
   end record;
   NULL_ALLBINARY_ORIENTATION_SENSOR : AllBinaryOrientationSensor_Access;

   procedure Initialize (This : in out AllBinaryOrientationSensor'Class);
   function Create return AllBinaryOrientationSensor_Access;
   procedure setListener (This : in out AllBinaryOrientationSensor; completeMotionGestureInputEventListenerInterface_Param : access CompleteMotionGestureInputEventListenerInterface_Package.CompleteMotionGestureInputEventListenerInterface'Class);
   function getOrientation (This : in out AllBinaryOrientationSensor) return Orientation_Access;

end org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;


