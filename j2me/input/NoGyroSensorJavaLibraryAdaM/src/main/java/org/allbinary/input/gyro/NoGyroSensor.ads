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
with org.allbinary.input.AllBinarySensorListener_Package; use org.allbinary.input.AllBinarySensorListener_Package;
with org.allbinary.logic.math.Orientation_Package; use org.allbinary.logic.math.Orientation_Package;
with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package; use org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;

package org.allbinary.input.gyro.NoGyroSensor_Package is

   package AllBinarySensorListener_Package renames Standard.org.allbinary.input.AllBinarySensorListener_Package;
   package Orientation_Package renames Standard.org.allbinary.logic.math.Orientation_Package;

   type NoGyroSensor is tagged;
   type NoGyroSensor_Access is access all NoGyroSensor'Class;
   type NoGyroSensor_Access_Array is array (Natural range <>) of NoGyroSensor_Access;
   type NoGyroSensor_Access_Array_Access is access all NoGyroSensor_Access_Array;
   type NoGyroSensor_Access_Array_Access_Array is array (Natural range <>) of NoGyroSensor_Access_Array_Access;
   type NoGyroSensor_Access_Array_Access_Array_Access is access all NoGyroSensor_Access_Array_Access_Array;

   type NoGyroSensor is new AllBinaryOrientationSensor and AllBinarySensorListener with null record;

   procedure Initialize (This : in out NoGyroSensor'Class);
   function Create return NoGyroSensor_Access;
   function getOrientation (This : in out NoGyroSensor) return Orientation_Access;
   procedure onSensorChange (This : in out NoGyroSensor);

end org.allbinary.input.gyro.NoGyroSensor_Package;


