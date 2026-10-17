-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package; use org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

package org.allbinary.game.input.form.AdvancedRTSGameLayerPositionFinder_Package is

   package LayerPositionFinderInterface_Package renames Standard.org.allbinary.game.input.LayerPositionFinderInterface_Package;
   package WaypointCellPositionHistory_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

   type AdvancedRTSGameLayerPositionFinder is tagged;
   type AdvancedRTSGameLayerPositionFinder_Access is access all AdvancedRTSGameLayerPositionFinder'Class;
   type AdvancedRTSGameLayerPositionFinder_Access_Array is array (Natural range <>) of AdvancedRTSGameLayerPositionFinder_Access;
   type AdvancedRTSGameLayerPositionFinder_Access_Array_Access is access all AdvancedRTSGameLayerPositionFinder_Access_Array;

   type AdvancedRTSGameLayerPositionFinder is new LayerPositionFinderInterface with null record;
   instance : AdvancedRTSGameLayerPositionFinder_Access;

   procedure Initialize (This : in out AdvancedRTSGameLayerPositionFinder'Class);
   function Create return AdvancedRTSGameLayerPositionFinder_Access;
   function getInstance return AdvancedRTSGameLayerPositionFinder_Access;
   procedure getInstance;
   function getLayerInterface (This : in out AdvancedRTSGameLayerPositionFinder; geographicMapCellPosition : GeographicMapCellPosition_Access) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out AdvancedRTSGameLayerPositionFinder; geographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.game.input.form.AdvancedRTSGameLayerPositionFinder_Package;


