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



package body org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package is

   procedure Initialize_Fields (This : in out LayerCoveringCellPositionsUtil'Class) is
   begin
      null;
      This.cellPositionsUtil := CellPositionsUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerCoveringCellPositionsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerCoveringCellPositionsUtil_Access is
      This : constant LayerCoveringCellPositionsUtil_Access := new LayerCoveringCellPositionsUtil;
   begin
      LayerCoveringCellPositionsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LayerCoveringCellPositionsUtil_Access is
   begin
        return LayerCoveringCellPositionsUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getAllXY (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      reusableList : constant BasicArrayList_Access := BasicArrayList_Access (reusableList_Param);
      topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        topLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXY (x, y);
        return LayerCoveringCellPositionsUtil'Class (This).getAll (geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList);
   end getAllXY;

   --  throws Exception
   function getAll (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topLeftGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      topLeftGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (topLeftGeographicMapCellPosition_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      reusableList : constant BasicArrayList_Access := BasicArrayList_Access (reusableList_Param);
      columns : Integer;
      rows : Integer;
   begin
        reusableList.clear;
        columns := (layerInterface.getWidth) / (geographicMapInterface.getAllBinaryTiledLayer.getCellWidth);
        rows := (layerInterface.getHeight) / (geographicMapInterface.getAllBinaryTiledLayer.getCellHeight);
        if (columns) = (0) then
            columns := 1;
        end if;
        if (rows) = (0) then
            rows := 1;
        end if;
        return This.cellPositionsUtil.getAll (geographicMapInterface, topLeftGeographicMapCellPosition, columns, rows, reusableList);
   end getAll;

   procedure getAllXY (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := LayerCoveringCellPositionsUtil'Class (This).getAllXY (geographicMapInterface_Param => geographicMapInterface_Param, layerInterface_Param => layerInterface_Param, x => x, y => y, reusableList_Param => reusableList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllXY;

   procedure getAll (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; topLeftGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := LayerCoveringCellPositionsUtil'Class (This).getAll (geographicMapInterface_Param => geographicMapInterface_Param, topLeftGeographicMapCellPosition_Param => topLeftGeographicMapCellPosition_Param, layerInterface_Param => layerInterface_Param, reusableList_Param => reusableList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

begin
   null;
   instance := LayerCoveringCellPositionsUtil_Package.Create;

end org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;


