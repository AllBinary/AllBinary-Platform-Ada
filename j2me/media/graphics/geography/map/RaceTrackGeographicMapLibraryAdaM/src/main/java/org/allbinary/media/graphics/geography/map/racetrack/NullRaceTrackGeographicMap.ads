-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;

package org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;

   type NullRaceTrackGeographicMap is tagged;
   type NullRaceTrackGeographicMap_Access is access all NullRaceTrackGeographicMap'Class;
   type NullRaceTrackGeographicMap_Access_Array is array (Natural range <>) of NullRaceTrackGeographicMap_Access;
   type NullRaceTrackGeographicMap_Access_Array_Access is access all NullRaceTrackGeographicMap_Access_Array;

   type NullRaceTrackGeographicMap is new RaceTrackGeographicMapInterface with null record;
   NULL_RACE_TRACK_GEOGRAPHIC_MAP : NullRaceTrackGeographicMap_Access;

   procedure Initialize (This : in out NullRaceTrackGeographicMap'Class);
   function Create return NullRaceTrackGeographicMap_Access;
   function getId (This : in out NullRaceTrackGeographicMap) return Integer;
   procedure getId (This : in out NullRaceTrackGeographicMap);
   function getName (This : in out NullRaceTrackGeographicMap) return Unbounded_String;
   procedure getName (This : in out NullRaceTrackGeographicMap);
   procedure reset (This : in out NullRaceTrackGeographicMap);
   function getAllBinaryTiledLayer (This : in out NullRaceTrackGeographicMap) return AllBinaryTiledLayer_Access;
   procedure getAllBinaryTiledLayer (This : in out NullRaceTrackGeographicMap);
   function getCellPositionsAt (This : in out NullRaceTrackGeographicMap; layer : Layer_Access; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean;
   procedure getCellPositionsAt (This : in out NullRaceTrackGeographicMap; layer : Layer_Access; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access);
   function getCellPositionAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getCellPositionAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer);
   function getCellPositionAtXYNoThrow (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getCellPositionAtXYNoThrow (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer);
   function getCellTypeFromMapCellTypeInt (This : in out NullRaceTrackGeographicMap; cellTypeId : Integer) return Integer;
   procedure getCellTypeFromMapCellTypeInt (This : in out NullRaceTrackGeographicMap; cellTypeId : Integer);
   function getCellTypeAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellType_Access;
   procedure getCellTypeAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer);
   function getCellTypeAt (This : in out NullRaceTrackGeographicMap; geographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellType_Access;
   procedure getCellTypeAt (This : in out NullRaceTrackGeographicMap; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getGeographicMapCellPositionFactory (This : in out NullRaceTrackGeographicMap) return BasicGeographicMapCellPositionFactory_Access;
   procedure getGeographicMapCellPositionFactory (This : in out NullRaceTrackGeographicMap);
   function getGeographicMapCellPositionFactoryInterface (This : in out NullRaceTrackGeographicMap) return GeographicMapCellPositionFactoryInterface_Access;
   procedure getGeographicMapCellPositionFactoryInterface (This : in out NullRaceTrackGeographicMap);
   function getForegroundBasicColor (This : in out NullRaceTrackGeographicMap) return BasicColor_Access;
   procedure getForegroundBasicColor (This : in out NullRaceTrackGeographicMap);
   function getBackgroundBasicColor (This : in out NullRaceTrackGeographicMap) return BasicColor_Access;
   procedure getBackgroundBasicColor (This : in out NullRaceTrackGeographicMap);
   function getRaceTrackInfo (This : in out NullRaceTrackGeographicMap) return RaceTrackInfo_Access;
   procedure getRaceTrackInfo (This : in out NullRaceTrackGeographicMap);
   procedure setRaceTrackInfo (This : in out NullRaceTrackGeographicMap; aRaceTrackInfo : RaceTrackInfo_Access);
   function getRaceTrackData (This : in out NullRaceTrackGeographicMap) return RaceTrackData_Access;
   procedure getRaceTrackData (This : in out NullRaceTrackGeographicMap);
   procedure setRaceTrackData (This : in out NullRaceTrackGeographicMap; raceTrackData : RaceTrackData_Access);

end org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package;


