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
with org.allbinary.logic.math.Orientation_Package; use org.allbinary.logic.math.Orientation_Package;
with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package; use org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;

package org.allbinary.input.gyro.OrientationToGameKeyEvent_Package is

   package Orientation_Package renames Standard.org.allbinary.logic.math.Orientation_Package;

   type OrientationToGameKeyEvent is tagged;
   type OrientationToGameKeyEvent_Access is access all OrientationToGameKeyEvent'Class;
   type OrientationToGameKeyEvent_Access_Array is array (Natural range <>) of OrientationToGameKeyEvent_Access;
   type OrientationToGameKeyEvent_Access_Array_Access is access all OrientationToGameKeyEvent_Access_Array;
   type OrientationToGameKeyEvent_Access_Array_Access_Array is array (Natural range <>) of OrientationToGameKeyEvent_Access_Array_Access;
   type OrientationToGameKeyEvent_Access_Array_Access_Array_Access is access all OrientationToGameKeyEvent_Access_Array_Access_Array;

   type OrientationToGameKeyEvent is new Java_Object with record
      allBinaryGyroSensor : AllBinaryOrientationSensor_Access;
      MIN : Integer;
   end record;

   procedure Initialize (This : in out OrientationToGameKeyEvent'Class);
   function Create return OrientationToGameKeyEvent_Access;
   procedure setAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent; allBinaryGyroSensor_Param : access AllBinaryOrientationSensor_Package.AllBinaryOrientationSensor'Class);
   function getAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent) return AllBinaryOrientationSensor_Access;
   procedure process (This : in out OrientationToGameKeyEvent);
   procedure updateGameKeyEvents (This : in out OrientationToGameKeyEvent; orientation_Param : access Orientation_Package.Orientation'Class; yaw : Integer; pitch : Integer; roll : Integer);

end org.allbinary.input.gyro.OrientationToGameKeyEvent_Package;


