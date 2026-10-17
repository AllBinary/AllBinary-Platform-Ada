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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.game.input.LayerPositionFinderInterface_Package; use org.allbinary.game.input.LayerPositionFinderInterface_Package;

package org.allbinary.game.input.RTSGameLayerPositionFinder_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

   type RTSGameLayerPositionFinder is tagged;
   type RTSGameLayerPositionFinder_Access is access all RTSGameLayerPositionFinder'Class;
   type RTSGameLayerPositionFinder_Access_Array is array (Natural range <>) of RTSGameLayerPositionFinder_Access;
   type RTSGameLayerPositionFinder_Access_Array_Access is access all RTSGameLayerPositionFinder_Access_Array;

   type RTSGameLayerPositionFinder is new LayerPositionFinderInterface with null record;
   instance : RTSGameLayerPositionFinder_Access;

   procedure Initialize (This : in out RTSGameLayerPositionFinder'Class);
   function Create return RTSGameLayerPositionFinder_Access;
   function getInstance return RTSGameLayerPositionFinder_Access;
   procedure getInstance;
   function getLayerInterface (This : in out RTSGameLayerPositionFinder; geographicMapCellPosition : GeographicMapCellPosition_Access) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out RTSGameLayerPositionFinder; geographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.game.input.RTSGameLayerPositionFinder_Package;


