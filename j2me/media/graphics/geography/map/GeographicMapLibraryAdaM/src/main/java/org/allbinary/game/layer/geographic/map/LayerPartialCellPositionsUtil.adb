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


package body org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package is

   procedure Initialize_Fields (This : in out LayerPartialCellPositionsUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerPartialCellPositionsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerPartialCellPositionsUtil_Access is
      This : constant LayerPartialCellPositionsUtil_Access := new LayerPartialCellPositionsUtil;
   begin
      LayerPartialCellPositionsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getAll (This : in out LayerPartialCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; reusableList : BasicArrayList_Access) return BasicArrayList_Access is
      topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
      topRightGeographicMapCellPosition : GeographicMapCellPosition_Access;
      bottomLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
      bottomRightGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        reusableList.clear;
        topLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow (layerInterface.getXP, layerInterface.getYP);
        topRightGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow ((layerInterface.getXP) + (layerInterface.getWidth), layerInterface.getYP);
        bottomLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow (layerInterface.getXP, (layerInterface.getYP) + (layerInterface.getHeight));
        bottomRightGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow ((layerInterface.getXP) + (layerInterface.getWidth), (layerInterface.getYP) + (layerInterface.getHeight));
        if (topLeftGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            reusableList.add (topLeftGeographicMapCellPosition);
        end if;
        if ((topRightGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then ((topLeftGeographicMapCellPosition) /= (topRightGeographicMapCellPosition)) then
            reusableList.add (topRightGeographicMapCellPosition);
        end if;
        if ((bottomLeftGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then (not (reusableList.contains (bottomLeftGeographicMapCellPosition))) then
            reusableList.add (bottomLeftGeographicMapCellPosition);
        end if;
        if ((bottomRightGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then (not (reusableList.contains (bottomRightGeographicMapCellPosition))) then
            reusableList.add (bottomRightGeographicMapCellPosition);
        end if;
        return reusableList;
   end getAll;

   --  throws Exception
   function getAllDXY (This : in out LayerPartialCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; dx : Integer; dy : Integer; reusableList : BasicArrayList_Access) return BasicArrayList_Access is
      topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
      topRightGeographicMapCellPosition : GeographicMapCellPosition_Access;
      bottomLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
      bottomRightGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        reusableList.clear;
        topLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow ((layerInterface.getXP) + (dx), (layerInterface.getYP) + (dy));
        topRightGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow (((layerInterface.getXP) + (layerInterface.getWidth)) + (dx), (layerInterface.getYP) + (dy));
        bottomLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow ((layerInterface.getXP) + (dx), ((layerInterface.getYP) + (layerInterface.getHeight)) + (dy));
        bottomRightGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow (((layerInterface.getXP) + (layerInterface.getWidth)) + (dx), ((layerInterface.getYP) + (layerInterface.getHeight)) + (dy));
        if (topLeftGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            reusableList.add (topLeftGeographicMapCellPosition);
        end if;
        if ((topRightGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then ((topLeftGeographicMapCellPosition) /= (topRightGeographicMapCellPosition)) then
            reusableList.add (topRightGeographicMapCellPosition);
        end if;
        if ((bottomLeftGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then (not (reusableList.contains (bottomLeftGeographicMapCellPosition))) then
            reusableList.add (bottomLeftGeographicMapCellPosition);
        end if;
        if ((bottomRightGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then (not (reusableList.contains (bottomRightGeographicMapCellPosition))) then
            reusableList.add (bottomRightGeographicMapCellPosition);
        end if;
        return reusableList;
   end getAllDXY;

   function getInstance return LayerPartialCellPositionsUtil_Access is
   begin
        return LayerPartialCellPositionsUtil_Package.instance;
   end getInstance;

   procedure getAll (This : in out LayerPartialCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; reusableList : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := LayerPartialCellPositionsUtil'Class (This).getAll (geographicMapInterface, layerInterface, reusableList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAllDXY (This : in out LayerPartialCellPositionsUtil; geographicMapInterface : BasicGeographicMap_Access; layerInterface : AllBinaryLayer_Access; dx : Integer; dy : Integer; reusableList : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := LayerPartialCellPositionsUtil'Class (This).getAllDXY (geographicMapInterface, layerInterface, dx, dy, reusableList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllDXY;

begin
   null;
   instance := LayerPartialCellPositionsUtil_Package.Create;

end org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;


