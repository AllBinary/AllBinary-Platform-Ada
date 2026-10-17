-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package is


   type CustomMapGeneratorFactory is tagged;
   type CustomMapGeneratorFactory_Access is access all CustomMapGeneratorFactory'Class;
   type CustomMapGeneratorFactory_Access_Array is array (Natural range <>) of CustomMapGeneratorFactory_Access;
   type CustomMapGeneratorFactory_Access_Array_Access is access all CustomMapGeneratorFactory_Access_Array;

   type CustomMapGeneratorFactory is new CustomMapGeneratorBaseFactory with null record;

   procedure Initialize (This : in out CustomMapGeneratorFactory'Class);
   function Create return CustomMapGeneratorFactory_Access;
   function create (This : in out CustomMapGeneratorFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap'Class) return CustomMapGeneratorBase_Access;
   procedure create (This : in out CustomMapGeneratorFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap'Class);

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package;


