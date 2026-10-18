-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package is

   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

   type CustomMapGenerator is tagged;
   type CustomMapGenerator_Access is access all CustomMapGenerator'Class;
   type CustomMapGenerator_Access_Array is array (Natural range <>) of CustomMapGenerator_Access;
   type CustomMapGenerator_Access_Array_Access is access all CustomMapGenerator_Access_Array;
   type CustomMapGenerator_Access_Array_Access_Array is array (Natural range <>) of CustomMapGenerator_Access_Array_Access;
   type CustomMapGenerator_Access_Array_Access_Array_Access is access all CustomMapGenerator_Access_Array_Access_Array;

   type CustomMapGenerator is new CustomMapGeneratorBase with record
      customMapArray : Integer_Array_Access_Array_Access;
      raceTrackGeographicMap : RaceTrackGeographicMap_Access;
      geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
      dropCellPositionHistory : DropCellPositionHistory_Access;
   end record;

   procedure Initialize (This : in out CustomMapGenerator'Class; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class);
   function Create (raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) return CustomMapGenerator_Access;
   procedure copyMapIntoCustomMap (This : in out CustomMapGenerator);
   function getCustomType (This : in out CustomMapGenerator; column : Integer; row : Integer; currentType : Integer) return Integer;
   procedure getCustomType (This : in out CustomMapGenerator; column : Integer; row : Integer; currentType : Integer);
   function getCustomMapArray (This : in out CustomMapGenerator) return Integer_Array_Access_Array_Access;

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;


