-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.layer.GeographicMapCellPositionArea_Package;
package org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References is
   type GeographicMapCellPositionArea_Access is access all org.allbinary.game.layer.GeographicMapCellPositionArea_Package.GeographicMapCellPositionArea'Class;
   type GeographicMapCellPositionArea_Access_Array is array (Natural range <>) of GeographicMapCellPositionArea_Access;
   type GeographicMapCellPositionArea_Access_Array_Access is access all GeographicMapCellPositionArea_Access_Array;
   type GeographicMapCellPositionArea_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionArea_Access_Array_Access;
   type GeographicMapCellPositionArea_Access_Array_Access_Array_Access is access all GeographicMapCellPositionArea_Access_Array_Access_Array;
   type GeographicMapCellPositionArea_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionArea_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionArea_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionArea_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionArea_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionArea_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionArea_Access_Array_Object'Class then GeographicMapCellPositionArea_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellPositionArea_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionArea_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionArea_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionArea_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionArea_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionArea_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionArea_Access_Array_Access_Array_Object'Class then GeographicMapCellPositionArea_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References;

with org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References;
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
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
limited with org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;
with org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;

package org.allbinary.game.layer.GeographicMapCellPositionArea_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package LayerCoveringCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package CellPositionsUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
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
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   subtype LayerCoveringCellPositionsUtil_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access;
   use type LayerCoveringCellPositionsUtil_Access;
   subtype LayerCoveringCellPositionsUtil_Access_Array is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array;
   use type LayerCoveringCellPositionsUtil_Access_Array;
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access;
   use type LayerCoveringCellPositionsUtil_Access_Array_Access;
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access_Array;
   use type LayerCoveringCellPositionsUtil_Access_Array_Access_Array;
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access;
   use type LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
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
   subtype CellPositionsUtil_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access;
   use type CellPositionsUtil_Access;
   subtype CellPositionsUtil_Access_Array is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array;
   use type CellPositionsUtil_Access_Array;
   subtype CellPositionsUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access;
   use type CellPositionsUtil_Access_Array_Access;
   subtype CellPositionsUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access_Array;
   use type CellPositionsUtil_Access_Array_Access_Array;
   subtype CellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package_References.CellPositionsUtil_Access_Array_Access_Array_Access;
   use type CellPositionsUtil_Access_Array_Access_Array_Access;
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


   subtype GeographicMapCellPositionArea_Access is org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.GeographicMapCellPositionArea_Access;
   function "=" (Left, Right : GeographicMapCellPositionArea_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References."=";
   subtype GeographicMapCellPositionArea_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.GeographicMapCellPositionArea_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionArea_Access_Array) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References."=";
   subtype GeographicMapCellPositionArea_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.GeographicMapCellPositionArea_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionArea_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionArea_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionArea_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionArea_Access_Array_Access renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.Java_Unbox_GeographicMapCellPositionArea_Access_Array;
   subtype GeographicMapCellPositionArea_Access_Array_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.GeographicMapCellPositionArea_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionArea_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References."=";
   subtype GeographicMapCellPositionArea_Access_Array_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.GeographicMapCellPositionArea_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionArea_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionArea_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionArea_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionArea_Access_Array_Access_Array_Access renames org.allbinary.game.layer.GeographicMapCellPositionArea_Package_References.Java_Unbox_GeographicMapCellPositionArea_Access_Array_Access_Array;

   type GeographicMapCellPositionArea is new GeographicMapCellPositionAreaBase with record
      cellPositionsUtil : CellPositionsUtil_Access;
      layerCoveringCellPositionsUtil : LayerCoveringCellPositionsUtil_Access;
      reusableOccupyingGeographicMapCellPositionList : BasicArrayList_Access;
      reusableSurroundingGeographicMapCellPositionList : BasicArrayList_Access;
      surroundingCircularIndexUtil : CircularIndexUtil_Access;
      layerInterface : AllBinaryLayer_Access;
      LIST : BasicArrayList_Access;
      occupyingGeographicMapCellPositionList : BasicArrayList_Access;
      surroundingGeographicMapCellPositionList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPositionArea'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPositionArea_Access;
   procedure update (This : in out GeographicMapCellPositionArea; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   function getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionArea) return BasicArrayList_Access;
   function getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionArea) return BasicArrayList_Access;
   function getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionArea) return GeographicMapCellPosition_Access;

end org.allbinary.game.layer.GeographicMapCellPositionArea_Package;


