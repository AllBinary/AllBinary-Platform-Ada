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
   function getAllXY (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; x : Integer; y : Integer; reusableList : BasicArrayList_Access) return BasicArrayList_Access is
      topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        topLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXY (x, y);
        return This.getAll (geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList);
   end getAllXY;

   --  throws Exception
   function getAll (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access; layerInterface : AllBinaryLayer_Access; reusableList : BasicArrayList_Access) return BasicArrayList_Access is
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

   procedure getAllXY (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; x : Integer; y : Integer; reusableList : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := LayerCoveringCellPositionsUtil'Class (This).getAllXY (geographicMapInterface, layerInterface, x, y, reusableList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllXY;

   procedure getAll (This : in out LayerCoveringCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access; layerInterface : AllBinaryLayer_Access; reusableList : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := LayerCoveringCellPositionsUtil'Class (This).getAll (geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

begin
   null;
   instance := LayerCoveringCellPositionsUtil_Package.Create;

end org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;


