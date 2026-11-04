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

limited with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;
package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References is
   type CustomMapGenerator_Access is access all org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package.CustomMapGenerator'Class;
   type CustomMapGenerator_Access_Array is array (Natural range <>) of CustomMapGenerator_Access;
   type CustomMapGenerator_Access_Array_Access is access all CustomMapGenerator_Access_Array;
   type CustomMapGenerator_Access_Array_Access_Array is array (Natural range <>) of CustomMapGenerator_Access_Array_Access;
   type CustomMapGenerator_Access_Array_Access_Array_Access is access all CustomMapGenerator_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package is

   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package Reference_Types is
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
   subtype DropCellPositionHistory_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access;
   use type DropCellPositionHistory_Access;
   subtype DropCellPositionHistory_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array;
   use type DropCellPositionHistory_Access_Array;
   subtype DropCellPositionHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access;
   use type DropCellPositionHistory_Access_Array_Access;
   subtype DropCellPositionHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access_Array;
   use type DropCellPositionHistory_Access_Array_Access_Array;
   subtype DropCellPositionHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access_Array_Access;
   use type DropCellPositionHistory_Access_Array_Access_Array_Access;
   subtype RaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access;
   use type RaceTrackGeographicMap_Access;
   subtype RaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array;
   use type RaceTrackGeographicMap_Access_Array;
   subtype RaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access;
   use type RaceTrackGeographicMap_Access_Array_Access;
   subtype RaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access_Array;
   use type RaceTrackGeographicMap_Access_Array_Access_Array;
   subtype RaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access_Array_Access;
   use type RaceTrackGeographicMap_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomMapGenerator_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References.CustomMapGenerator_Access;
   function "=" (Left, Right : CustomMapGenerator_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References."=";
   subtype CustomMapGenerator_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References.CustomMapGenerator_Access_Array;
   function "=" (Left, Right : CustomMapGenerator_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References."=";
   subtype CustomMapGenerator_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References.CustomMapGenerator_Access_Array_Access;
   function "=" (Left, Right : CustomMapGenerator_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References."=";
   subtype CustomMapGenerator_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References.CustomMapGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : CustomMapGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References."=";
   subtype CustomMapGenerator_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References.CustomMapGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomMapGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package_References."=";

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


