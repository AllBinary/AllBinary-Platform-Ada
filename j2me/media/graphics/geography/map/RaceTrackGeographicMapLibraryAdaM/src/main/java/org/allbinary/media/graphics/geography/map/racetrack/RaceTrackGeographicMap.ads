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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionBaseFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;

   type RaceTrackGeographicMap is tagged;
   type RaceTrackGeographicMap_Access is access all RaceTrackGeographicMap'Class;
   type RaceTrackGeographicMap_Access_Array is array (Natural range <>) of RaceTrackGeographicMap_Access;
   type RaceTrackGeographicMap_Access_Array_Access is access all RaceTrackGeographicMap_Access_Array;
   type RaceTrackGeographicMap_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGeographicMap_Access_Array_Access;
   type RaceTrackGeographicMap_Access_Array_Access_Array_Access is access all RaceTrackGeographicMap_Access_Array_Access_Array;

   type RaceTrackGeographicMap is new BaseRaceTrackGeographicMap with record
      customMapGenerator : CustomMapGeneratorBase_Access;
   end record;

   procedure Initialize (This : in out RaceTrackGeographicMap'Class; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class; customMapGeneratorBaseFactory_Param : access CustomMapGeneratorBaseFactory_Package.CustomMapGeneratorBaseFactory'Class);
   function Create (raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class; customMapGeneratorBaseFactory_Param : access CustomMapGeneratorBaseFactory_Package.CustomMapGeneratorBaseFactory'Class) return RaceTrackGeographicMap_Access;
   function getCustomMapGenerator (This : in out RaceTrackGeographicMap) return CustomMapGeneratorBase_Access;
   function isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean;
   procedure isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;


