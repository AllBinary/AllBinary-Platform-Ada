-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
package org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References is
   type GeographicMapCellPositionAreaBase_Access is access all org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package.GeographicMapCellPositionAreaBase'Class;
   type GeographicMapCellPositionAreaBase_Access_Array is array (Natural range <>) of GeographicMapCellPositionAreaBase_Access;
   type GeographicMapCellPositionAreaBase_Access_Array_Access is access all GeographicMapCellPositionAreaBase_Access_Array;
   type GeographicMapCellPositionAreaBase_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionAreaBase_Access_Array_Access;
   type GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access is access all GeographicMapCellPositionAreaBase_Access_Array_Access_Array;
end org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References;

with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;

package org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellPositionAreaBase_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References."=";

   type GeographicMapCellPositionAreaBase is new Java_Object and GeographicMapCellPositionAreaInterface with null record;
   NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE : GeographicMapCellPositionAreaBase_Access;

   procedure Initialize (This : in out GeographicMapCellPositionAreaBase'Class);
   function Create return GeographicMapCellPositionAreaBase_Access;
   function getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionAreaBase) return GeographicMapCellPosition_Access;
   function getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) return BasicArrayList_Access;
   function getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) return BasicArrayList_Access;
   procedure update (This : in out GeographicMapCellPositionAreaBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);

end org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;


