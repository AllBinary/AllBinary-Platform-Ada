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

limited with org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package;
package org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References is
   type AnyRandomDropCellPositionGenerator_Access is access all org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package.AnyRandomDropCellPositionGenerator'Class;
   type AnyRandomDropCellPositionGenerator_Access_Array is array (Natural range <>) of AnyRandomDropCellPositionGenerator_Access;
   type AnyRandomDropCellPositionGenerator_Access_Array_Access is access all AnyRandomDropCellPositionGenerator_Access_Array;
   type AnyRandomDropCellPositionGenerator_Access_Array_Access_Array is array (Natural range <>) of AnyRandomDropCellPositionGenerator_Access_Array_Access;
   type AnyRandomDropCellPositionGenerator_Access_Array_Access_Array_Access is access all AnyRandomDropCellPositionGenerator_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References;

with org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;

package org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype AnyRandomDropCellPositionGenerator_Access is org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References.AnyRandomDropCellPositionGenerator_Access;
   function "=" (Left, Right : AnyRandomDropCellPositionGenerator_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References."=";
   subtype AnyRandomDropCellPositionGenerator_Access_Array is org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References.AnyRandomDropCellPositionGenerator_Access_Array;
   function "=" (Left, Right : AnyRandomDropCellPositionGenerator_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References."=";
   subtype AnyRandomDropCellPositionGenerator_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References.AnyRandomDropCellPositionGenerator_Access_Array_Access;
   function "=" (Left, Right : AnyRandomDropCellPositionGenerator_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References."=";
   subtype AnyRandomDropCellPositionGenerator_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References.AnyRandomDropCellPositionGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : AnyRandomDropCellPositionGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References."=";
   subtype AnyRandomDropCellPositionGenerator_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References.AnyRandomDropCellPositionGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnyRandomDropCellPositionGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package_References."=";

   type AnyRandomDropCellPositionGenerator is new BaseDropCellPositionGenerator with record
      list : BasicArrayList_Access;
      geographicMapInterface : Java_Object_Access;
   end record;

   procedure Initialize (This : in out AnyRandomDropCellPositionGenerator'Class);
   function Create return AnyRandomDropCellPositionGenerator_Access;
   procedure update (This : in out AnyRandomDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   procedure processTick (This : in out AnyRandomDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package;


