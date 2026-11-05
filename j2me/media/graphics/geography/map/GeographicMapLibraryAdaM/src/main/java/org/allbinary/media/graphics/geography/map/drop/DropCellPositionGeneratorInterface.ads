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

limited with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;
package org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References is
   type DropCellPositionGeneratorInterface_Access is access all org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package.DropCellPositionGeneratorInterface'Class;
   type DropCellPositionGeneratorInterface_Access_Array is array (Natural range <>) of DropCellPositionGeneratorInterface_Access;
   type DropCellPositionGeneratorInterface_Access_Array_Access is access all DropCellPositionGeneratorInterface_Access_Array;
   type DropCellPositionGeneratorInterface_Access_Array_Access_Array is array (Natural range <>) of DropCellPositionGeneratorInterface_Access_Array_Access;
   type DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access is access all DropCellPositionGeneratorInterface_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References;

with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   type DropCellPositionGeneratorInterface is interface;
   subtype DropCellPositionGeneratorInterface_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   function Java_Object_Access_From_DropCellPositionGeneratorInterface (Value : DropCellPositionGeneratorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out DropCellPositionGeneratorInterface) return Unbounded_String is abstract;
   procedure update (This : in out DropCellPositionGeneratorInterface; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is abstract;
   procedure processTick (This : in out DropCellPositionGeneratorInterface; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is abstract;
   function isDropAllowedAt (This : in out DropCellPositionGeneratorInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is abstract;
   procedure isDropAllowedAt (This : in out DropCellPositionGeneratorInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;

end org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;


