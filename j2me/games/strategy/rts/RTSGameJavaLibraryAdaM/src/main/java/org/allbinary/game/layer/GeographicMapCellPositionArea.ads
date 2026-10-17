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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package; use org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package; use org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;

package org.allbinary.game.layer.GeographicMapCellPositionArea_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package LayerCoveringCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package CellPositionsUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type GeographicMapCellPositionArea is tagged;
   type GeographicMapCellPositionArea_Access is access all GeographicMapCellPositionArea'Class;
   type GeographicMapCellPositionArea_Access_Array is array (Natural range <>) of GeographicMapCellPositionArea_Access;
   type GeographicMapCellPositionArea_Access_Array_Access is access all GeographicMapCellPositionArea_Access_Array;

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

   procedure Initialize (This : in out GeographicMapCellPositionArea'Class; layerInterface_Param : access AllBinaryLayer'Class);
   function Create (layerInterface_Param : access AllBinaryLayer'Class) return GeographicMapCellPositionArea_Access;
   procedure update (This : in out GeographicMapCellPositionArea; geographicMapInterface_Param : access BasicGeographicMap'Class);
   function getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionArea) return BasicArrayList_Access;
   function getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionArea) return BasicArrayList_Access;
   function getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionArea) return GeographicMapCellPosition_Access;

end org.allbinary.game.layer.GeographicMapCellPositionArea_Package;


