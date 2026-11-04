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

limited with org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References is
   type BasicGeographicMapFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package.BasicGeographicMapFactory'Class;
   type BasicGeographicMapFactory_Access_Array is array (Natural range <>) of BasicGeographicMapFactory_Access;
   type BasicGeographicMapFactory_Access_Array_Access is access all BasicGeographicMapFactory_Access_Array;
   type BasicGeographicMapFactory_Access_Array_Access_Array is array (Natural range <>) of BasicGeographicMapFactory_Access_Array_Access;
   type BasicGeographicMapFactory_Access_Array_Access_Array_Access is access all BasicGeographicMapFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package Reference_Types is
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
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
   subtype GeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access;
   use type GeographicMapCellTypeFactory_Access;
   subtype GeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array;
   use type GeographicMapCellTypeFactory_Access_Array;
   subtype GeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access;
   use type GeographicMapCellTypeFactory_Access_Array_Access;
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array;
   use type GeographicMapCellTypeFactory_Access_Array_Access_Array;
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   use type GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
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
   subtype AllBinaryTiledLayerFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access;
   use type AllBinaryTiledLayerFactoryInterface_Access;
   subtype AllBinaryTiledLayerFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access_Array;
   use type AllBinaryTiledLayerFactoryInterface_Access_Array;
   subtype AllBinaryTiledLayerFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access_Array_Access;
   use type AllBinaryTiledLayerFactoryInterface_Access_Array_Access;
   subtype AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array;
   use type AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array;
   subtype AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References.AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayerFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicGeographicMapFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References.BasicGeographicMapFactory_Access;
   function "=" (Left, Right : BasicGeographicMapFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References."=";
   subtype BasicGeographicMapFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References.BasicGeographicMapFactory_Access_Array;
   function "=" (Left, Right : BasicGeographicMapFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References."=";
   subtype BasicGeographicMapFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References.BasicGeographicMapFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References."=";
   subtype BasicGeographicMapFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References.BasicGeographicMapFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMapFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References."=";
   subtype BasicGeographicMapFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References.BasicGeographicMapFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package_References."=";

   type BasicGeographicMapFactory is new Java_Object with null record;

   procedure Initialize (This : in out BasicGeographicMapFactory'Class);
   function Create return BasicGeographicMapFactory_Access;
   function getInstance (This : in out BasicGeographicMapFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) return BasicGeographicMap_Access;
   procedure getInstance (This : in out BasicGeographicMapFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class);

end org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package;


