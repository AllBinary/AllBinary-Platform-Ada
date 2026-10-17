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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionBaseFactory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
   package GeographicMapCellTypeFactory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;

   type RaceTrackGeographicMap is tagged;
   type RaceTrackGeographicMap_Access is access all RaceTrackGeographicMap'Class;
   type RaceTrackGeographicMap_Access_Array is array (Natural range <>) of RaceTrackGeographicMap_Access;
   type RaceTrackGeographicMap_Access_Array_Access is access all RaceTrackGeographicMap_Access_Array;

   type RaceTrackGeographicMap is new BaseRaceTrackGeographicMap with record
      customMapGenerator : CustomMapGeneratorBase_Access;
   end record;

   procedure Initialize (This : in out RaceTrackGeographicMap'Class; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access; customMapGeneratorBaseFactory : CustomMapGeneratorBaseFactory_Access);
   function Create (raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access; customMapGeneratorBaseFactory : CustomMapGeneratorBaseFactory_Access) return RaceTrackGeographicMap_Access;
   function getCustomMapGenerator (This : in out RaceTrackGeographicMap) return CustomMapGeneratorBase_Access;
   procedure getCustomMapGenerator (This : in out RaceTrackGeographicMap);
   function isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean;
   procedure isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;


