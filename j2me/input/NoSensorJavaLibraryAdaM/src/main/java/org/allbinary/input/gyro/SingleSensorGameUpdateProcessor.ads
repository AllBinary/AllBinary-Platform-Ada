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
with org.allbinary.input.gyro.SensorGameUpdateProcessor_Package; use org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;

package org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package is


   type SingleSensorGameUpdateProcessor is tagged;
   type SingleSensorGameUpdateProcessor_Access is access all SingleSensorGameUpdateProcessor'Class;
   type SingleSensorGameUpdateProcessor_Access_Array is array (Natural range <>) of SingleSensorGameUpdateProcessor_Access;
   type SingleSensorGameUpdateProcessor_Access_Array_Access is access all SingleSensorGameUpdateProcessor_Access_Array;

   type SingleSensorGameUpdateProcessor is new SensorGameUpdateProcessor with null record;

   procedure Initialize (This : in out SingleSensorGameUpdateProcessor'Class);
   function Create return SingleSensorGameUpdateProcessor_Access;
   procedure process (This : in out SingleSensorGameUpdateProcessor; anyType_Param : access Java_Object'Class);
   procedure sendNotifications (This : in out SingleSensorGameUpdateProcessor; anyType_Param : access Java_Object'Class);

end org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package;


