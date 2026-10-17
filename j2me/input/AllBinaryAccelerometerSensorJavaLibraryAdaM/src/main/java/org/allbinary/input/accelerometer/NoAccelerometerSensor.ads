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
with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package; use org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;
with org.allbinary.logic.math.Orientation_Package; use org.allbinary.logic.math.Orientation_Package;

package org.allbinary.input.accelerometer.NoAccelerometerSensor_Package is

   package AllBinaryOrientationSensor_Package renames Standard.org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;
   package Orientation_Package renames Standard.org.allbinary.logic.math.Orientation_Package;

   type NoAccelerometerSensor is tagged;
   type NoAccelerometerSensor_Access is access all NoAccelerometerSensor'Class;
   type NoAccelerometerSensor_Access_Array is array (Natural range <>) of NoAccelerometerSensor_Access;
   type NoAccelerometerSensor_Access_Array_Access is access all NoAccelerometerSensor_Access_Array;

   type NoAccelerometerSensor is new AllBinaryOrientationSensor with null record;

   procedure Initialize (This : in out NoAccelerometerSensor'Class);
   function Create return NoAccelerometerSensor_Access;
   function getOrientation (This : in out NoAccelerometerSensor) return Orientation_Access;
   procedure onSensorChange (This : in out NoAccelerometerSensor);

end org.allbinary.input.accelerometer.NoAccelerometerSensor_Package;


