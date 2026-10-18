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

package org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GeographicMapCellPositionAreaInterface is interface;
   type GeographicMapCellPositionAreaInterface_Access is access all GeographicMapCellPositionAreaInterface'Class;
   type GeographicMapCellPositionAreaInterface_Access_Array is array (Natural range <>) of GeographicMapCellPositionAreaInterface_Access;
   type GeographicMapCellPositionAreaInterface_Access_Array_Access is access all GeographicMapCellPositionAreaInterface_Access_Array;
   type GeographicMapCellPositionAreaInterface_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionAreaInterface_Access_Array_Access;
   type GeographicMapCellPositionAreaInterface_Access_Array_Access_Array_Access is access all GeographicMapCellPositionAreaInterface_Access_Array_Access_Array;
   function getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionAreaInterface) return GeographicMapCellPosition_Access is abstract;
   function getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaInterface) return BasicArrayList_Access is abstract;
   function getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionAreaInterface) return BasicArrayList_Access is abstract;
   procedure update (This : in out GeographicMapCellPositionAreaInterface; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is abstract;

end org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;


