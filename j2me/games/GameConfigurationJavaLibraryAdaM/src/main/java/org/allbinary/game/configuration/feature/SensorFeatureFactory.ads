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
with org.allbinary.game.configuration.feature.SensorFeature_Package; use org.allbinary.game.configuration.feature.SensorFeature_Package;

package org.allbinary.game.configuration.feature.SensorFeatureFactory_Package is


   type SensorFeatureFactory is tagged;
   type SensorFeatureFactory_Access is access all SensorFeatureFactory'Class;
   type SensorFeatureFactory_Access_Array is array (Natural range <>) of SensorFeatureFactory_Access;
   type SensorFeatureFactory_Access_Array_Access is access all SensorFeatureFactory_Access_Array;
   type SensorFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of SensorFeatureFactory_Access_Array_Access;
   type SensorFeatureFactory_Access_Array_Access_Array_Access is access all SensorFeatureFactory_Access_Array_Access_Array;

   type SensorFeatureFactory is new Java_Object with record
      NO_ORIENTATION : SensorFeature_Access;
      ORIENTATION_SENSORS : SensorFeature_Access;
      SIMULATED_ORIENTATION_SENSORS : SensorFeature_Access;
      YAW : SensorFeature_Access;
      YAW_MINUS_RIGHT_PLUS_LEFT : SensorFeature_Access;
      YAW_MINUS_LEFT_PLUS_RIGHT : SensorFeature_Access;
      PITCH : SensorFeature_Access;
      ROLL : SensorFeature_Access;
   end record;
   instance : SensorFeatureFactory_Access;

   procedure Initialize (This : in out SensorFeatureFactory'Class);
   function Create return SensorFeatureFactory_Access;
   function getInstance return SensorFeatureFactory_Access;

end org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;


