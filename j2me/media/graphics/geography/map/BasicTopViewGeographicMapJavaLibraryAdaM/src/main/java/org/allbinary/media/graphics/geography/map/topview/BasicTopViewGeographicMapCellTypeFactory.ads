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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;
package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References is
   type BasicTopViewGeographicMapCellTypeFactory_Access is access all org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package.BasicTopViewGeographicMapCellTypeFactory'Class;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapCellTypeFactory_Access;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access is access all BasicTopViewGeographicMapCellTypeFactory_Access_Array;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is access all BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array;
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTopViewGeographicMapCellTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTopViewGeographicMapCellTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicTopViewGeographicMapCellTypeFactory_Access_Array_Object'Class then BasicTopViewGeographicMapCellTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'Class then BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References;

with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References;
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
limited with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References;

package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package is

   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype BasicTopViewGeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access;
   use type BasicTopViewGeographicMapCellType_Access;
   subtype BasicTopViewGeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access_Array;
   use type BasicTopViewGeographicMapCellType_Access_Array;
   subtype BasicTopViewGeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access_Array_Access;
   use type BasicTopViewGeographicMapCellType_Access_Array_Access;
   subtype BasicTopViewGeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access_Array_Access_Array;
   use type BasicTopViewGeographicMapCellType_Access_Array_Access_Array;
   subtype BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access;
   use type BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicTopViewGeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.BasicTopViewGeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References."=";
   subtype BasicTopViewGeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.BasicTopViewGeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : BasicTopViewGeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References."=";
   subtype BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References."=";
   function Java_Box (Value : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.Java_Box;
   function Java_Unbox_BasicTopViewGeographicMapCellTypeFactory_Access_Array (Value : access Java_Object'Class) return BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.Java_Unbox_BasicTopViewGeographicMapCellTypeFactory_Access_Array;
   subtype BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References."=";
   subtype BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References."=";
   function Java_Box (Value : BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.Java_Box;
   function Java_Unbox_BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package_References.Java_Unbox_BasicTopViewGeographicMapCellTypeFactory_Access_Array_Access_Array;

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


