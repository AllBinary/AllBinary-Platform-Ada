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
with org.allbinary.game.input.LayerPositionFinderInterface_Package; use org.allbinary.game.input.LayerPositionFinderInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

package org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package is

   package LayerPositionFinderInterface_Package renames Standard.org.allbinary.game.input.LayerPositionFinderInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

   type NullRTSGameLayerPositionFinder is tagged;
   type NullRTSGameLayerPositionFinder_Access is access all NullRTSGameLayerPositionFinder'Class;
   type NullRTSGameLayerPositionFinder_Access_Array is array (Natural range <>) of NullRTSGameLayerPositionFinder_Access;
   type NullRTSGameLayerPositionFinder_Access_Array_Access is access all NullRTSGameLayerPositionFinder_Access_Array;

   type NullRTSGameLayerPositionFinder is new LayerPositionFinderInterface with null record;
   instance : NullRTSGameLayerPositionFinder_Access;

   procedure Initialize (This : in out NullRTSGameLayerPositionFinder'Class);
   function Create return NullRTSGameLayerPositionFinder_Access;
   function getInstance return NullRTSGameLayerPositionFinder_Access;
   function getLayerInterface (This : in out NullRTSGameLayerPositionFinder; geographicMapCellPosition : GeographicMapCellPosition_Access) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out NullRTSGameLayerPositionFinder; geographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package;


