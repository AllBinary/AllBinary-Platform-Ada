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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

package org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

   type LayerPartialCellPositionsUtil is tagged;
   type LayerPartialCellPositionsUtil_Access is access all LayerPartialCellPositionsUtil'Class;
   type LayerPartialCellPositionsUtil_Access_Array is array (Natural range <>) of LayerPartialCellPositionsUtil_Access;
   type LayerPartialCellPositionsUtil_Access_Array_Access is access all LayerPartialCellPositionsUtil_Access_Array;

   type LayerPartialCellPositionsUtil is new Java_Object with null record;
   instance : LayerPartialCellPositionsUtil_Access;

   procedure Initialize (This : in out LayerPartialCellPositionsUtil'Class);
   function Create return LayerPartialCellPositionsUtil_Access;
   function getAll (This : in out LayerPartialCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; reusableList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getAll (This : in out LayerPartialCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; reusableList : BasicArrayList_Access);
   function getAllDXY (This : in out LayerPartialCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; dx : Integer; dy : Integer; reusableList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getAllDXY (This : in out LayerPartialCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; dx : Integer; dy : Integer; reusableList : BasicArrayList_Access);
   function getInstance return LayerPartialCellPositionsUtil_Access;
   procedure getInstance;

end org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;


