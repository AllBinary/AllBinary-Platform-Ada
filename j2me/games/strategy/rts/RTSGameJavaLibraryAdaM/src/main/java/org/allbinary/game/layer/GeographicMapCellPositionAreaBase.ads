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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;

package org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package is

   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type GeographicMapCellPositionAreaBase is tagged;
   type GeographicMapCellPositionAreaBase_Access is access all GeographicMapCellPositionAreaBase'Class;
   type GeographicMapCellPositionAreaBase_Access_Array is array (Natural range <>) of GeographicMapCellPositionAreaBase_Access;
   type GeographicMapCellPositionAreaBase_Access_Array_Access is access all GeographicMapCellPositionAreaBase_Access_Array;

   type GeographicMapCellPositionAreaBase is new GeographicMapCellPositionAreaInterface with null record;
   NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE : GeographicMapCellPositionAreaBase_Access;

   procedure Initialize (This : in out GeographicMapCellPositionAreaBase'Class);
   function Create return GeographicMapCellPositionAreaBase_Access;
   function getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionAreaBase) return GeographicMapCellPosition_Access;
   procedure getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionAreaBase);
   function getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) return BasicArrayList_Access;
   procedure getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase);
   function getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase) return BasicArrayList_Access;
   procedure getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaBase);
   procedure update (This : in out GeographicMapCellPositionAreaBase; geographicMapInterface : BasicGeographicMap_Access);

end org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;


