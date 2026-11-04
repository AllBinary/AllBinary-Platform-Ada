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

limited with org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package;
package org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References is
   type BasicPlatormGeographicMapCellTypeFactory_Access is access all org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package.BasicPlatormGeographicMapCellTypeFactory'Class;
   type BasicPlatormGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of BasicPlatormGeographicMapCellTypeFactory_Access;
   type BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access is access all BasicPlatormGeographicMapCellTypeFactory_Access_Array;
   type BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array is array (Natural range <>) of BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access;
   type BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is access all BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References;

with org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References;

package org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package is

   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;
   package Reference_Types is
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   use type EnumerationUtil_Access;
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   use type EnumerationUtil_Access_Array;
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access;
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   use type EnumerationUtil_Access_Array_Access_Array;
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access_Array_Access;
   subtype BasicPlatormGeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access;
   use type BasicPlatormGeographicMapCellType_Access;
   subtype BasicPlatormGeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access_Array;
   use type BasicPlatormGeographicMapCellType_Access_Array;
   subtype BasicPlatormGeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access_Array_Access;
   use type BasicPlatormGeographicMapCellType_Access_Array_Access;
   subtype BasicPlatormGeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access_Array_Access_Array;
   use type BasicPlatormGeographicMapCellType_Access_Array_Access_Array;
   subtype BasicPlatormGeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access_Array_Access_Array_Access;
   use type BasicPlatormGeographicMapCellType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicPlatormGeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References.BasicPlatormGeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : BasicPlatormGeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References."=";
   subtype BasicPlatormGeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References.BasicPlatormGeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : BasicPlatormGeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References."=";
   subtype BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References.BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References."=";
   subtype BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References.BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References."=";
   subtype BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References.BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicPlatormGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package_References."=";

   type BasicPlatormGeographicMapCellTypeFactory is new GeographicMapCellTypeFactory with record
      enumerationUtil : EnumerationUtil_Access;
      BLOCK_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      JUMP_THRU_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      LADDER_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      maxTileId : Integer;
   end record;

   procedure Initialize (This : in out BasicPlatormGeographicMapCellTypeFactory'Class; tileTypeToTileIdsMap_Param : access ABHashtable_Package.ABHashtable'Class; maxTileId : Integer);
   function Create (tileTypeToTileIdsMap_Param : access ABHashtable_Package.ABHashtable'Class; maxTileId : Integer) return BasicPlatormGeographicMapCellTypeFactory_Access;
   function getStartType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer;
   function getEndType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer;
   function getEmptyType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer;
   function isPath (This : in out BasicPlatormGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean;
   procedure isPath (This : in out BasicPlatormGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class);

end org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package;


