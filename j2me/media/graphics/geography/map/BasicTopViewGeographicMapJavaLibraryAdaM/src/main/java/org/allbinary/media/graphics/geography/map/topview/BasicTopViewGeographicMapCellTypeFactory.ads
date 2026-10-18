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
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package;

package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package is

   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type BasicTopViewGeographicMapCellTypeFactory is tagged;
   type BasicTopViewGeographicMapCellTypeFactory_Access is access all BasicTopViewGeographicMapCellTypeFactory'Class;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapCellTypeFactory_Access;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access is access all BasicTopViewGeographicMapCellTypeFactory_Access_Array;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is access all BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array;

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

   procedure Initialize (This : in out BasicTopViewGeographicMapCellTypeFactory'Class; tileTypeToTileIdsMap_Param : access ABHashtable_Package.ABHashtable'Class; maxTileId : Integer);
   function Create (tileTypeToTileIdsMap_Param : access ABHashtable_Package.ABHashtable'Class; maxTileId : Integer) return BasicTopViewGeographicMapCellTypeFactory_Access;
   function getStartType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer;
   function getEndType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer;
   function getEmptyType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer;
   function isPath (This : in out BasicTopViewGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean;
   procedure isPath (This : in out BasicTopViewGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class);
   function toString (This : in out BasicTopViewGeographicMapCellTypeFactory) return Unbounded_String;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;


