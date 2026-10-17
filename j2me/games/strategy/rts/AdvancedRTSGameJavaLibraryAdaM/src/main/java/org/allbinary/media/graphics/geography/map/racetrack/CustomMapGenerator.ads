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
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package is

   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package WaypointLayer_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayer_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

   type CustomMapGenerator is tagged;
   type CustomMapGenerator_Access is access all CustomMapGenerator'Class;
   type CustomMapGenerator_Access_Array is array (Natural range <>) of CustomMapGenerator_Access;
   type CustomMapGenerator_Access_Array_Access is access all CustomMapGenerator_Access_Array;

   type CustomMapGenerator is new CustomMapGeneratorBase with record
      customMapArray : Integer_Array_Access_Array_Access;
      raceTrackGeographicMap : RaceTrackGeographicMap_Access;
      geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
      dropCellPositionHistory : DropCellPositionHistory_Access;
   end record;

   procedure Initialize (This : in out CustomMapGenerator'Class; raceTrackGeographicMap_Param : access RaceTrackGeographicMap'Class);
   function Create (raceTrackGeographicMap_Param : access RaceTrackGeographicMap'Class) return CustomMapGenerator_Access;
   procedure copyMapIntoCustomMap (This : in out CustomMapGenerator);
   function getCustomType (This : in out CustomMapGenerator; column : Integer; row : Integer; currentType : Integer) return Integer;
   procedure getCustomType (This : in out CustomMapGenerator; column : Integer; row : Integer; currentType : Integer);
   function getCustomMapArray (This : in out CustomMapGenerator) return Integer_Array_Access_Array_Access;

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;


