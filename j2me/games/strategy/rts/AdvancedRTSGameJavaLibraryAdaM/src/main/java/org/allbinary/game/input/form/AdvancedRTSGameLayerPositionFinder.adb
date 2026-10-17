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


package body org.allbinary.game.input.form.AdvancedRTSGameLayerPositionFinder_Package is

   procedure Initialize_Fields (This : in out AdvancedRTSGameLayerPositionFinder'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return AdvancedRTSGameLayerPositionFinder_Access is
   begin
        return AdvancedRTSGameLayerPositionFinder_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AdvancedRTSGameLayerPositionFinder'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvancedRTSGameLayerPositionFinder_Access is
      This : constant AdvancedRTSGameLayerPositionFinder_Access := new AdvancedRTSGameLayerPositionFinder;
   begin
      AdvancedRTSGameLayerPositionFinder_Package.Initialize (This.all);
      return This;
   end Create;

   function getLayerInterface (This : in out AdvancedRTSGameLayerPositionFinder; geographicMapCellPosition : GeographicMapCellPosition_Access) return AllBinaryLayer_Access is
      layerInterface : AllBinaryLayer_Access;
   begin
        layerInterface := DropCellPositionHistory_Package.getInstance.getLayerInterface (geographicMapCellPosition);
        if (layerInterface) = (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER) then
            layerInterface := WaypointCellPositionHistory_Package.getInstance.getLayerInterface (geographicMapCellPosition);
        end if;
        return layerInterface;
   end getLayerInterface;

   procedure getLayerInterface (This : in out AdvancedRTSGameLayerPositionFinder; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant AllBinaryLayer_Access := AdvancedRTSGameLayerPositionFinder'Class (This).getLayerInterface (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerInterface;

begin
   null;
   instance := AdvancedRTSGameLayerPositionFinder_Package.Create;

end org.allbinary.game.input.form.AdvancedRTSGameLayerPositionFinder_Package;


