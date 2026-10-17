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
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package; use org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package; use org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;

package org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package SensorFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
   package AllBinaryOrientationSensor_Package renames Standard.org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;

   type AccelerometerSensorFactory is tagged;
   type AccelerometerSensorFactory_Access is access all AccelerometerSensorFactory'Class;
   type AccelerometerSensorFactory_Access_Array is array (Natural range <>) of AccelerometerSensorFactory_Access;
   type AccelerometerSensorFactory_Access_Array_Access is access all AccelerometerSensorFactory_Access_Array;

   type AccelerometerSensorFactory is new Java_Object with null record;
   allBinaryAccelerometerSensor : AllBinaryOrientationSensor_Access;

   procedure Initialize (This : in out AccelerometerSensorFactory'Class);
   function Create return AccelerometerSensorFactory_Access;
   procedure init;
   function getInstance return AllBinaryOrientationSensor_Access;
   procedure getInstance;

end org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package;


