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

package org.allbinary.input.gyro.GyroSensorFactory_Package is


   type GyroSensorFactory is tagged;
   type GyroSensorFactory_Access is access all GyroSensorFactory'Class;
   type GyroSensorFactory_Access_Array is array (Natural range <>) of GyroSensorFactory_Access;
   type GyroSensorFactory_Access_Array_Access is access all GyroSensorFactory_Access_Array;

   type GyroSensorFactory is new Java_Object with null record;
   allBinaryGyroSensor : AllBinaryOrientationSensor_Access;

   procedure Initialize (This : in out GyroSensorFactory'Class);
   function Create return GyroSensorFactory_Access;
   procedure init;
   function getInstance return AllBinaryOrientationSensor_Access;
   procedure getInstance;

end org.allbinary.input.gyro.GyroSensorFactory_Package;


