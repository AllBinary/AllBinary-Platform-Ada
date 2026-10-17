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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;

   type CellPositionsUtil is tagged;
   type CellPositionsUtil_Access is access all CellPositionsUtil'Class;
   type CellPositionsUtil_Access_Array is array (Natural range <>) of CellPositionsUtil_Access;
   type CellPositionsUtil_Access_Array_Access is access all CellPositionsUtil_Access_Array;

   type CellPositionsUtil is new Java_Object with record
      reusableSingleThreadedSurroundingList : BasicArrayList_Access;
      surroundArray : Integer_Array_Access_Array_Access;
   end record;
   instance : CellPositionsUtil_Access;

   procedure Initialize (This : in out CellPositionsUtil'Class);
   function Create return CellPositionsUtil_Access;
   function getInstance return CellPositionsUtil_Access;
   procedure getInstance;
   function getAll (This : in out CellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; topRightGeographicMapCellPosition : GeographicMapCellPosition_Access; columns : Integer; rows : Integer; reusableList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getAll (This : in out CellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; topRightGeographicMapCellPosition : GeographicMapCellPosition_Access; columns : Integer; rows : Integer; reusableList : BasicArrayList_Access);
   function getAllSurrounding (This : in out CellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; occupyList : BasicArrayList_Access; reusableList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getAllSurrounding (This : in out CellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; occupyList : BasicArrayList_Access; reusableList : BasicArrayList_Access);
   function getAllSurroundingAt (This : in out CellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerGeographicMapCellPosition : GeographicMapCellPosition_Access; reusableSurroundingList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getAllSurroundingAt (This : in out CellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerGeographicMapCellPosition : GeographicMapCellPosition_Access; reusableSurroundingList : BasicArrayList_Access);

end org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;


