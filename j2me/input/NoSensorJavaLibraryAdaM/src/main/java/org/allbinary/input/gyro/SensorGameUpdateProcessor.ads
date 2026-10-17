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
with org.allbinary.input.AllBinarySensor_Package; use org.allbinary.input.AllBinarySensor_Package;
with org.allbinary.input.NoAllBinarySensor_Package; use org.allbinary.input.NoAllBinarySensor_Package;

package org.allbinary.input.gyro.SensorGameUpdateProcessor_Package is

   package AllBinarySensor_Package renames org.allbinary.input.AllBinarySensor_Package;
   package NoAllBinarySensor_Package renames org.allbinary.input.NoAllBinarySensor_Package;

   type SensorGameUpdateProcessor is tagged;
   type SensorGameUpdateProcessor_Access is access all SensorGameUpdateProcessor'Class;
   type SensorGameUpdateProcessor_Access_Array is array (Natural range <>) of SensorGameUpdateProcessor_Access;
   type SensorGameUpdateProcessor_Access_Array_Access is access all SensorGameUpdateProcessor_Access_Array;

   type SensorGameUpdateProcessor is new Java_Object with record
      inputSensor : AllBinarySensor_Access;
   end record;

   procedure Initialize (This : in out SensorGameUpdateProcessor'Class);
   function Create return SensorGameUpdateProcessor_Access;
   procedure setInputSensor (This : in out SensorGameUpdateProcessor; inputSensor : AllBinarySensor_Access);
   function getInputSensor (This : in out SensorGameUpdateProcessor) return AllBinarySensor_Access;
   procedure getInputSensor (This : in out SensorGameUpdateProcessor);
   procedure process (This : in out SensorGameUpdateProcessor; anyType : Java_Object_Access);
   procedure sendNotifications (This : in out SensorGameUpdateProcessor; anyType : Java_Object_Access);
   function isAnySensor (This : in out SensorGameUpdateProcessor) return Boolean;
   procedure isAnySensor (This : in out SensorGameUpdateProcessor);
   procedure setNoSensors (This : in out SensorGameUpdateProcessor);

end org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;


