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
with org.allbinary.logic.math.Orientation_Package; use org.allbinary.logic.math.Orientation_Package;

package org.allbinary.input.gyro.OrientationToGameKeyEvent_Package is

   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;
   package SensorFeatureFactory_Package renames org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
   package Orientation_Package renames org.allbinary.logic.math.Orientation_Package;

   type OrientationToGameKeyEvent is tagged;
   type OrientationToGameKeyEvent_Access is access all OrientationToGameKeyEvent'Class;
   type OrientationToGameKeyEvent_Access_Array is array (Natural range <>) of OrientationToGameKeyEvent_Access;
   type OrientationToGameKeyEvent_Access_Array_Access is access all OrientationToGameKeyEvent_Access_Array;

   type OrientationToGameKeyEvent is new Java_Object with record
      allBinaryGyroSensor : AllBinaryOrientationSensor_Access;
      MIN : Integer;
   end record;

   procedure Initialize (This : in out OrientationToGameKeyEvent'Class);
   function Create return OrientationToGameKeyEvent_Access;
   procedure setAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent; allBinaryGyroSensor : AllBinaryOrientationSensor_Access);
   function getAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent) return AllBinaryOrientationSensor_Access;
   procedure getAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent);
   procedure process (This : in out OrientationToGameKeyEvent);
   procedure updateGameKeyEvents (This : in out OrientationToGameKeyEvent; orientation : Orientation_Access; yaw : Integer; pitch : Integer; roll : Integer);

end org.allbinary.input.gyro.OrientationToGameKeyEvent_Package;


