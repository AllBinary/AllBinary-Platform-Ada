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

limited with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References is
   type GeographicMapInterface_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package.GeographicMapInterface'Class;
   type GeographicMapInterface_Access_Array is array (Natural range <>) of GeographicMapInterface_Access;
   type GeographicMapInterface_Access_Array_Access is access all GeographicMapInterface_Access_Array;
   type GeographicMapInterface_Access_Array_Access_Array is array (Natural range <>) of GeographicMapInterface_Access_Array_Access;
   type GeographicMapInterface_Access_Array_Access_Array_Access is access all GeographicMapInterface_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References;
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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
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
   end Reference_Types;
   use Reference_Types;


   type GeographicMapInterface is interface;
   subtype GeographicMapInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References.GeographicMapInterface_Access;
   function "=" (Left, Right : GeographicMapInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References."=";
   subtype GeographicMapInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References.GeographicMapInterface_Access_Array;
   function "=" (Left, Right : GeographicMapInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References."=";
   subtype GeographicMapInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References.GeographicMapInterface_Access_Array_Access;
   function "=" (Left, Right : GeographicMapInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References."=";
   subtype GeographicMapInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References.GeographicMapInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References."=";
   subtype GeographicMapInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References.GeographicMapInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package_References."=";
   function Java_Object_Access_From_GeographicMapInterface (Value : GeographicMapInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getId (This : in out GeographicMapInterface) return Integer is abstract;
   function getName (This : in out GeographicMapInterface) return Unbounded_String is abstract;
   procedure reset (This : in out GeographicMapInterface) is abstract;
   function getAllBinaryTiledLayer (This : in out GeographicMapInterface) return AllBinaryTiledLayer_Access is abstract;
   function getCellPositionsAt (This : in out GeographicMapInterface; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean is abstract;
   procedure getCellPositionsAt (This : in out GeographicMapInterface; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) is abstract;
   function getCellPositionAtXY (This : in out GeographicMapInterface; x : Integer; y : Integer) return GeographicMapCellPosition_Access is abstract;
   procedure getCellPositionAtXY (This : in out GeographicMapInterface; x : Integer; y : Integer) is abstract;
   function getCellPositionAtXYNoThrow (This : in out GeographicMapInterface; x : Integer; y : Integer) return GeographicMapCellPosition_Access is abstract;
   procedure getCellPositionAtXYNoThrow (This : in out GeographicMapInterface; x : Integer; y : Integer) is abstract;
   function getCellTypeFromMapCellTypeInt (This : in out GeographicMapInterface; cellTypeId : Integer) return Integer is abstract;
   procedure getCellTypeFromMapCellTypeInt (This : in out GeographicMapInterface; cellTypeId : Integer) is abstract;
   function getCellTypeAtXY (This : in out GeographicMapInterface; x : Integer; y : Integer) return GeographicMapCellType_Access is abstract;
   procedure getCellTypeAtXY (This : in out GeographicMapInterface; x : Integer; y : Integer) is abstract;
   function getCellTypeAt (This : in out GeographicMapInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellType_Access is abstract;
   procedure getCellTypeAt (This : in out GeographicMapInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;
   function getGeographicMapCellPositionFactory (This : in out GeographicMapInterface) return BasicGeographicMapCellPositionFactory_Access is abstract;
   function getGeographicMapCellPositionFactoryInterface (This : in out GeographicMapInterface) return GeographicMapCellPositionFactoryInterface_Access is abstract;
   function getForegroundBasicColor (This : in out GeographicMapInterface) return BasicColor_Access is abstract;
   function getBackgroundBasicColor (This : in out GeographicMapInterface) return BasicColor_Access is abstract;

end org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;


