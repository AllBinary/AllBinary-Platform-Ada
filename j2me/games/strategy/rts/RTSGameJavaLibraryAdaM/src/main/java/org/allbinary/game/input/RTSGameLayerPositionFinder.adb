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


with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

package body org.allbinary.game.input.RTSGameLayerPositionFinder_Package is

   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   procedure Initialize_Fields (This : in out RTSGameLayerPositionFinder'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return RTSGameLayerPositionFinder_Access is
   begin
        return RTSGameLayerPositionFinder_Package.instance;
   end getInstance;

   procedure Initialize (This : in out RTSGameLayerPositionFinder'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RTSGameLayerPositionFinder_Access is
      This : constant RTSGameLayerPositionFinder_Access := new RTSGameLayerPositionFinder;
   begin
      RTSGameLayerPositionFinder_Package.Initialize (This.all);
      return This;
   end Create;

   function getLayerInterface (This : in out RTSGameLayerPositionFinder; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return AllBinaryLayer_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        return DropCellPositionHistory_Package.getInstance.getLayerInterface (geographicMapCellPosition);
   end getLayerInterface;

   procedure getLayerInterface (This : in out RTSGameLayerPositionFinder; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant AllBinaryLayer_Access := RTSGameLayerPositionFinder'Class (This).getLayerInterface (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerInterface;

begin
   null;
   instance := RTSGameLayerPositionFinder_Package.Create;

end org.allbinary.game.input.RTSGameLayerPositionFinder_Package;


