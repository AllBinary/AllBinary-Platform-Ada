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

limited with org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package;
package org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References is
   type NullRaceTrackGeographicMap_Access is access all org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package.NullRaceTrackGeographicMap'Class;
   type NullRaceTrackGeographicMap_Access_Array is array (Natural range <>) of NullRaceTrackGeographicMap_Access;
   type NullRaceTrackGeographicMap_Access_Array_Access is access all NullRaceTrackGeographicMap_Access_Array;
   type NullRaceTrackGeographicMap_Access_Array_Access_Array is array (Natural range <>) of NullRaceTrackGeographicMap_Access_Array_Access;
   type NullRaceTrackGeographicMap_Access_Array_Access_Array_Access is access all NullRaceTrackGeographicMap_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package Reference_Types is
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   use type Layer_Access;
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   use type Layer_Access_Array;
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   use type Layer_Access_Array_Access;
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   use type Layer_Access_Array_Access_Array;
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   use type Layer_Access_Array_Access_Array_Access;
   subtype BasicGeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access;
   use type BasicGeographicMapCellPositionFactory_Access;
   subtype BasicGeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array;
   use type BasicGeographicMapCellPositionFactory_Access_Array;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access;
   use type GeographicMapCellPositionFactoryInterface_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array;
   use type GeographicMapCellPositionFactoryInterface_Access_Array;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
   subtype RaceTrackInfo_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access;
   use type RaceTrackInfo_Access;
   subtype RaceTrackInfo_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array;
   use type RaceTrackInfo_Access_Array;
   subtype RaceTrackInfo_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access;
   use type RaceTrackInfo_Access_Array_Access;
   subtype RaceTrackInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array;
   use type RaceTrackInfo_Access_Array_Access_Array;
   subtype RaceTrackInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array_Access;
   use type RaceTrackInfo_Access_Array_Access_Array_Access;
   subtype RaceTrackData_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access;
   use type RaceTrackData_Access;
   subtype RaceTrackData_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array;
   use type RaceTrackData_Access_Array;
   subtype RaceTrackData_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access;
   use type RaceTrackData_Access_Array_Access;
   subtype RaceTrackData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array;
   use type RaceTrackData_Access_Array_Access_Array;
   subtype RaceTrackData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array_Access;
   use type RaceTrackData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullRaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References.NullRaceTrackGeographicMap_Access;
   function "=" (Left, Right : NullRaceTrackGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References."=";
   subtype NullRaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References.NullRaceTrackGeographicMap_Access_Array;
   function "=" (Left, Right : NullRaceTrackGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References."=";
   subtype NullRaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References.NullRaceTrackGeographicMap_Access_Array_Access;
   function "=" (Left, Right : NullRaceTrackGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References."=";
   subtype NullRaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References.NullRaceTrackGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : NullRaceTrackGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References."=";
   subtype NullRaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References.NullRaceTrackGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRaceTrackGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package_References."=";

   type NullRaceTrackGeographicMap is new Java_Object and RaceTrackGeographicMapInterface with null record;
   NULL_RACE_TRACK_GEOGRAPHIC_MAP : NullRaceTrackGeographicMap_Access;

   procedure Initialize (This : in out NullRaceTrackGeographicMap'Class);
   function Create return NullRaceTrackGeographicMap_Access;
   function getId (This : in out NullRaceTrackGeographicMap) return Integer;
   function getName (This : in out NullRaceTrackGeographicMap) return Unbounded_String;
   procedure reset (This : in out NullRaceTrackGeographicMap);
   function getAllBinaryTiledLayer (This : in out NullRaceTrackGeographicMap) return AllBinaryTiledLayer_Access;
   function getCellPositionsAt (This : in out NullRaceTrackGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean;
   procedure getCellPositionsAt (This : in out NullRaceTrackGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access);
   function getCellPositionAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getCellPositionAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer);
   function getCellPositionAtXYNoThrow (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getCellPositionAtXYNoThrow (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer);
   function getCellTypeFromMapCellTypeInt (This : in out NullRaceTrackGeographicMap; cellTypeId : Integer) return Integer;
   procedure getCellTypeFromMapCellTypeInt (This : in out NullRaceTrackGeographicMap; cellTypeId : Integer);
   function getCellTypeAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer) return GeographicMapCellType_Access;
   procedure getCellTypeAtXY (This : in out NullRaceTrackGeographicMap; x : Integer; y : Integer);
   function getCellTypeAt (This : in out NullRaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellType_Access;
   procedure getCellTypeAt (This : in out NullRaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getGeographicMapCellPositionFactory (This : in out NullRaceTrackGeographicMap) return BasicGeographicMapCellPositionFactory_Access;
   function getGeographicMapCellPositionFactoryInterface (This : in out NullRaceTrackGeographicMap) return GeographicMapCellPositionFactoryInterface_Access;
   function getForegroundBasicColor (This : in out NullRaceTrackGeographicMap) return BasicColor_Access;
   function getBackgroundBasicColor (This : in out NullRaceTrackGeographicMap) return BasicColor_Access;
   function getRaceTrackInfo (This : in out NullRaceTrackGeographicMap) return RaceTrackInfo_Access;
   procedure setRaceTrackInfo (This : in out NullRaceTrackGeographicMap; aRaceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class);
   function getRaceTrackData (This : in out NullRaceTrackGeographicMap) return RaceTrackData_Access;
   procedure setRaceTrackData (This : in out NullRaceTrackGeographicMap; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class);

end org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap_Package;


