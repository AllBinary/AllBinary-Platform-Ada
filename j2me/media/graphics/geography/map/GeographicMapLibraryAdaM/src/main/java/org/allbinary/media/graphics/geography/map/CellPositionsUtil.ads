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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type CellPositionsUtil is tagged;
   type CellPositionsUtil_Access is access all CellPositionsUtil'Class;
   type CellPositionsUtil_Access_Array is array (Natural range <>) of CellPositionsUtil_Access;
   type CellPositionsUtil_Access_Array_Access is access all CellPositionsUtil_Access_Array;
   type CellPositionsUtil_Access_Array_Access_Array is array (Natural range <>) of CellPositionsUtil_Access_Array_Access;
   type CellPositionsUtil_Access_Array_Access_Array_Access is access all CellPositionsUtil_Access_Array_Access_Array;

   type CellPositionsUtil is new Java_Object with record
      reusableSingleThreadedSurroundingList : BasicArrayList_Access;
      surroundArray : Integer_Array_Access_Array_Access;
   end record;
   instance : CellPositionsUtil_Access;

   procedure Initialize (This : in out CellPositionsUtil'Class);
   function Create return CellPositionsUtil_Access;
   function getInstance return CellPositionsUtil_Access;
   function getAll (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topRightGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; columns : Integer; rows : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAll (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topRightGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; columns : Integer; rows : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getAllSurrounding (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; occupyList_Param : access BasicArrayList_Package.BasicArrayList'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllSurrounding (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; occupyList_Param : access BasicArrayList_Package.BasicArrayList'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getAllSurroundingAt (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; reusableSurroundingList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllSurroundingAt (This : in out CellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; reusableSurroundingList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;


