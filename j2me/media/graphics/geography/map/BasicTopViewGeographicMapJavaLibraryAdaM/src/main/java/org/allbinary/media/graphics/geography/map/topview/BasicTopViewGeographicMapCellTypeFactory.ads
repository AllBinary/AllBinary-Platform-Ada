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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package; use org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package;

package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package RaceTrackGeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;

   type BasicTopViewGeographicMapCellTypeFactory is tagged;
   type BasicTopViewGeographicMapCellTypeFactory_Access is access all BasicTopViewGeographicMapCellTypeFactory'Class;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapCellTypeFactory_Access;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access is access all BasicTopViewGeographicMapCellTypeFactory_Access_Array;

   type BasicTopViewGeographicMapCellTypeFactory is new GeographicMapCellTypeFactory with record
      BLOCK_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      OFF_MAP_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      FLOOR_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      DOOR_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      STAIRS_UP_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      STAIRS_DOWN_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      OTHER_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      maxTileId : Integer;
   end record;

   procedure Initialize (This : in out BasicTopViewGeographicMapCellTypeFactory'Class; tileTypeToTileIdsMap_Param : access ABHashtable'Class; maxTileId : Integer);
   function Create (tileTypeToTileIdsMap_Param : access ABHashtable'Class; maxTileId : Integer) return BasicTopViewGeographicMapCellTypeFactory_Access;
   function getStartType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer;
   function getEndType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer;
   function getEmptyType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer;
   function isPath (This : in out BasicTopViewGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType'Class) return Boolean;
   procedure isPath (This : in out BasicTopViewGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType'Class);
   function toString (This : in out BasicTopViewGeographicMapCellTypeFactory) return Unbounded_String;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;


