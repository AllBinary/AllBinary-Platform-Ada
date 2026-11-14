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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References is
   type RaceTrackGeographicMap_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class;
   type RaceTrackGeographicMap_Access_Array is array (Natural range <>) of RaceTrackGeographicMap_Access;
   type RaceTrackGeographicMap_Access_Array_Access is access all RaceTrackGeographicMap_Access_Array;
   type RaceTrackGeographicMap_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGeographicMap_Access_Array_Access;
   type RaceTrackGeographicMap_Access_Array_Access_Array_Access is access all RaceTrackGeographicMap_Access_Array_Access_Array;
   type RaceTrackGeographicMap_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMap_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMap_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMap_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMap_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMap_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMap_Access_Array_Object'Class then RaceTrackGeographicMap_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackGeographicMap_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMap_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMap_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMap_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMap_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMap_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMap_Access_Array_Access_Array_Object'Class then RaceTrackGeographicMap_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
limited with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionBaseFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package Reference_Types is
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
   subtype GeographicMapCellPositionBaseFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access;
   use type GeographicMapCellPositionBaseFactory_Access;
   subtype GeographicMapCellPositionBaseFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array;
   use type GeographicMapCellPositionBaseFactory_Access_Array;
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access;
   use type GeographicMapCellPositionBaseFactory_Access_Array_Access;
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;
   use type GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access;
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
   subtype CustomMapGeneratorBase_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access;
   use type CustomMapGeneratorBase_Access;
   subtype CustomMapGeneratorBase_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access_Array;
   use type CustomMapGeneratorBase_Access_Array;
   subtype CustomMapGeneratorBase_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access_Array_Access;
   use type CustomMapGeneratorBase_Access_Array_Access;
   subtype CustomMapGeneratorBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access_Array_Access_Array;
   use type CustomMapGeneratorBase_Access_Array_Access_Array;
   subtype CustomMapGeneratorBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access_Array_Access_Array_Access;
   use type CustomMapGeneratorBase_Access_Array_Access_Array_Access;
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
   subtype CustomMapGeneratorBaseFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access;
   use type CustomMapGeneratorBaseFactory_Access;
   subtype CustomMapGeneratorBaseFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access_Array;
   use type CustomMapGeneratorBaseFactory_Access_Array;
   subtype CustomMapGeneratorBaseFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access_Array_Access;
   use type CustomMapGeneratorBaseFactory_Access_Array_Access;
   subtype CustomMapGeneratorBaseFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access_Array_Access_Array;
   use type CustomMapGeneratorBaseFactory_Access_Array_Access_Array;
   subtype CustomMapGeneratorBaseFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access_Array_Access_Array_Access;
   use type CustomMapGeneratorBaseFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access;
   function "=" (Left, Right : RaceTrackGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   subtype RaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   subtype RaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMap_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMap_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMap_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.Java_Unbox_RaceTrackGeographicMap_Access_Array;
   subtype RaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   subtype RaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMap_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMap_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMap_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.Java_Unbox_RaceTrackGeographicMap_Access_Array_Access_Array;

   type RaceTrackGeographicMap is new BaseRaceTrackGeographicMap with record
      customMapGenerator : CustomMapGeneratorBase_Access;
   end record;

   procedure Initialize (This : in out RaceTrackGeographicMap'Class; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class; customMapGeneratorBaseFactory_Param : access CustomMapGeneratorBaseFactory_Package.CustomMapGeneratorBaseFactory'Class);
   function Create (raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class; tiledLayerFactoryInterface_Param : access AllBinaryTiledLayerFactoryInterface_Package.AllBinaryTiledLayerFactoryInterface'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class; customMapGeneratorBaseFactory_Param : access CustomMapGeneratorBaseFactory_Package.CustomMapGeneratorBaseFactory'Class) return RaceTrackGeographicMap_Access;
   function getCustomMapGenerator (This : in out RaceTrackGeographicMap) return CustomMapGeneratorBase_Access;
   function isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean;
   procedure isValid (This : in out RaceTrackGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;


