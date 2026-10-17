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
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;

package org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;

   type BasicPlatormGeographicMapCellTypeFactory is tagged;
   type BasicPlatormGeographicMapCellTypeFactory_Access is access all BasicPlatormGeographicMapCellTypeFactory'Class;
   type BasicPlatormGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of BasicPlatormGeographicMapCellTypeFactory_Access;
   type BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access is access all BasicPlatormGeographicMapCellTypeFactory_Access_Array;

   type BasicPlatormGeographicMapCellTypeFactory is new GeographicMapCellTypeFactory with record
      enumerationUtil : EnumerationUtil_Access;
      BLOCK_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      JUMP_THRU_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      LADDER_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      maxTileId : Integer;
   end record;

   procedure Initialize (This : in out BasicPlatormGeographicMapCellTypeFactory'Class; tileTypeToTileIdsMap : ABHashtable_Access; maxTileId : Integer);
   function Create (tileTypeToTileIdsMap : ABHashtable_Access; maxTileId : Integer) return BasicPlatormGeographicMapCellTypeFactory_Access;
   function getStartType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer;
   procedure getStartType (This : in out BasicPlatormGeographicMapCellTypeFactory);
   function getEndType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer;
   procedure getEndType (This : in out BasicPlatormGeographicMapCellTypeFactory);
   function getEmptyType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer;
   procedure getEmptyType (This : in out BasicPlatormGeographicMapCellTypeFactory);
   function isPath (This : in out BasicPlatormGeographicMapCellTypeFactory; cellType : GeographicMapCellType_Access) return Boolean;
   procedure isPath (This : in out BasicPlatormGeographicMapCellTypeFactory; cellType : GeographicMapCellType_Access);

end org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package;


