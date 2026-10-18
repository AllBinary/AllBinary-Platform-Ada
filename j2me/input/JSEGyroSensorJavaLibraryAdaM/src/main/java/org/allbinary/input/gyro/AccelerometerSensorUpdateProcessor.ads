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
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;

   type AccelerometerSensorUpdateProcessor is tagged;
   type AccelerometerSensorUpdateProcessor_Access is access all AccelerometerSensorUpdateProcessor'Class;
   type AccelerometerSensorUpdateProcessor_Access_Array is array (Natural range <>) of AccelerometerSensorUpdateProcessor_Access;
   type AccelerometerSensorUpdateProcessor_Access_Array_Access is access all AccelerometerSensorUpdateProcessor_Access_Array;
   type AccelerometerSensorUpdateProcessor_Access_Array_Access_Array is array (Natural range <>) of AccelerometerSensorUpdateProcessor_Access_Array_Access;
   type AccelerometerSensorUpdateProcessor_Access_Array_Access_Array_Access is access all AccelerometerSensorUpdateProcessor_Access_Array_Access_Array;

   type AccelerometerSensorUpdateProcessor is new Processor with null record;

   procedure Initialize (This : in out AccelerometerSensorUpdateProcessor'Class);
   function Create return AccelerometerSensorUpdateProcessor_Access;
   procedure process (This : in out AccelerometerSensorUpdateProcessor);

end org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package;


