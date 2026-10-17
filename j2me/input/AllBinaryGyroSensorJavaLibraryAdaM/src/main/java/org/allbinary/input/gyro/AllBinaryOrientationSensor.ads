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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
with org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package; use org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;
with org.allbinary.input.AllBinarySensor_Package; use org.allbinary.input.AllBinarySensor_Package;
with org.allbinary.logic.math.Orientation_Package; use org.allbinary.logic.math.Orientation_Package;
with org.allbinary.logic.math.PrimitiveFloatUtil_Package; use org.allbinary.logic.math.PrimitiveFloatUtil_Package;

package org.allbinary.input.gyro.AllBinaryOrientationSensor_Package is

   package CompleteMotionGestureInputEventListenerInterface_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
   package NoCompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;
   package AllBinarySensor_Package renames Standard.org.allbinary.input.AllBinarySensor_Package;
   package Orientation_Package renames Standard.org.allbinary.logic.math.Orientation_Package;
   package PrimitiveFloatUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveFloatUtil_Package;

   type AllBinaryOrientationSensor is tagged;
   type AllBinaryOrientationSensor_Access is access all AllBinaryOrientationSensor'Class;
   type AllBinaryOrientationSensor_Access_Array is array (Natural range <>) of AllBinaryOrientationSensor_Access;
   type AllBinaryOrientationSensor_Access_Array_Access is access all AllBinaryOrientationSensor_Access_Array;

   type AllBinaryOrientationSensor is new AllBinarySensor with record
      sensorDataFloatArray : Float_Array_Access;
      listener : CompleteMotionGestureInputEventListenerInterface_Access;
   end record;

   procedure Initialize (This : in out AllBinaryOrientationSensor'Class);
   function Create return AllBinaryOrientationSensor_Access;
   procedure setCompleteMotionGestureInputEventListener (This : in out AllBinaryOrientationSensor; completeMotionGestureInputEventListenerInterface : CompleteMotionGestureInputEventListenerInterface_Access);
   function getOrientation (This : in out AllBinaryOrientationSensor) return Orientation_Access;
   procedure getOrientation (This : in out AllBinaryOrientationSensor);

end org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;


