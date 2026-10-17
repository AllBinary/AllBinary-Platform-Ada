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


package body org.allbinary.game.layer.GeographicMapCellPositionArea_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPositionArea'Class) is
   begin
      null;
      This.cellPositionsUtil := CellPositionsUtil_Package.getInstance;
      This.layerCoveringCellPositionsUtil := LayerCoveringCellPositionsUtil_Package.getInstance;
      This.reusableOccupyingGeographicMapCellPositionList := BasicArrayListS_Package.Create (4);
      This.reusableSurroundingGeographicMapCellPositionList := BasicArrayListS_Package.Create (12);
      This.surroundingCircularIndexUtil := CircularIndexUtil_Package.createInstance (0);
      
      This.LIST := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
      This.occupyingGeographicMapCellPositionList := This.LIST;
      This.surroundingGeographicMapCellPositionList := This.LIST;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellPositionArea'Class; layerInterface_Param : access AllBinaryLayer'Class) is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
      GeographicMapCellPositionAreaBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.layerInterface := layerInterface;
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer'Class) return GeographicMapCellPositionArea_Access is
      This : constant GeographicMapCellPositionArea_Access := new GeographicMapCellPositionArea;
   begin
      GeographicMapCellPositionArea_Package.Initialize (This.all, layerInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure update (This : in out GeographicMapCellPositionArea; geographicMapInterface_Param : access BasicGeographicMap'Class) is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        This.occupyingGeographicMapCellPositionList := This.layerCoveringCellPositionsUtil.getAllXY (geographicMapInterface, This.layerInterface, This.layerInterface.getXP, This.layerInterface.getYP, This.reusableOccupyingGeographicMapCellPositionList);
        This.surroundingGeographicMapCellPositionList := This.cellPositionsUtil.getAllSurrounding (geographicMapInterface, This.occupyingGeographicMapCellPositionList, This.reusableSurroundingGeographicMapCellPositionList);
        This.surroundingCircularIndexUtil.setSize (This.surroundingGeographicMapCellPositionList.size);
   end update;

   function getOccupyingGeographicMapCellPositionList (This : in out GeographicMapCellPositionArea) return BasicArrayList_Access is
   begin
        return This.occupyingGeographicMapCellPositionList;
   end getOccupyingGeographicMapCellPositionList;

   function getSurroundingGeographicMapCellPositionList (This : in out GeographicMapCellPositionArea) return BasicArrayList_Access is
   begin
        return This.surroundingGeographicMapCellPositionList;
   end getSurroundingGeographicMapCellPositionList;

   function getNextSurroundingGeographicMapCellPosition (This : in out GeographicMapCellPositionArea) return GeographicMapCellPosition_Access is
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        geographicMapCellPosition := GeographicMapCellPosition_Access (This.surroundingGeographicMapCellPositionList.get (This.surroundingCircularIndexUtil.getIndex));
        This.surroundingCircularIndexUtil.next;
        return geographicMapCellPosition;
   end getNextSurroundingGeographicMapCellPosition;

end org.allbinary.game.layer.GeographicMapCellPositionArea_Package;


