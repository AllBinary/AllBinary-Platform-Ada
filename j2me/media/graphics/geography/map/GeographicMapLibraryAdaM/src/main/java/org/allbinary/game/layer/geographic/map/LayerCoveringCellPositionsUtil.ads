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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package; use org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package CellPositionsUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.CellPositionsUtil_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type LayerCoveringCellPositionsUtil is tagged;
   type LayerCoveringCellPositionsUtil_Access is access all LayerCoveringCellPositionsUtil'Class;
   type LayerCoveringCellPositionsUtil_Access_Array is array (Natural range <>) of LayerCoveringCellPositionsUtil_Access;
   type LayerCoveringCellPositionsUtil_Access_Array_Access is access all LayerCoveringCellPositionsUtil_Access_Array;
   type LayerCoveringCellPositionsUtil_Access_Array_Access_Array is array (Natural range <>) of LayerCoveringCellPositionsUtil_Access_Array_Access;
   type LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access is access all LayerCoveringCellPositionsUtil_Access_Array_Access_Array;

   type LayerCoveringCellPositionsUtil is new Java_Object with record
      cellPositionsUtil : CellPositionsUtil_Access;
   end record;
   instance : LayerCoveringCellPositionsUtil_Access;

   procedure Initialize (This : in out LayerCoveringCellPositionsUtil'Class);
   function Create return LayerCoveringCellPositionsUtil_Access;
   function getInstance return LayerCoveringCellPositionsUtil_Access;
   function getAllXY (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllXY (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getAll (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topLeftGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAll (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topLeftGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;


