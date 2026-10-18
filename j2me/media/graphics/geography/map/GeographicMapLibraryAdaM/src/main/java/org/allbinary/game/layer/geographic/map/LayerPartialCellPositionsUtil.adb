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


with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

package body org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
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
   function getAll (This : in out LayerPartialCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      reusableList : constant BasicArrayList_Access := BasicArrayList_Access (reusableList_Param);
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
            reusableList.add (Java_Object_Access (topLeftGeographicMapCellPosition));
        end if;
        if ((topRightGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then ((topLeftGeographicMapCellPosition) /= (topRightGeographicMapCellPosition)) then
            reusableList.add (Java_Object_Access (topRightGeographicMapCellPosition));
        end if;
        if ((bottomLeftGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then (not (reusableList.contains (Java_Object_Access (bottomLeftGeographicMapCellPosition)))) then
            reusableList.add (Java_Object_Access (bottomLeftGeographicMapCellPosition));
        end if;
        if ((bottomRightGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then (not (reusableList.contains (Java_Object_Access (bottomRightGeographicMapCellPosition)))) then
            reusableList.add (Java_Object_Access (bottomRightGeographicMapCellPosition));
        end if;
        return reusableList;
   end getAll;

   --  throws Exception
   function getAllDXY (This : in out LayerPartialCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; dx : Integer; dy : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      reusableList : constant BasicArrayList_Access := BasicArrayList_Access (reusableList_Param);
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
            reusableList.add (Java_Object_Access (topLeftGeographicMapCellPosition));
        end if;
        if ((topRightGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then ((topLeftGeographicMapCellPosition) /= (topRightGeographicMapCellPosition)) then
            reusableList.add (Java_Object_Access (topRightGeographicMapCellPosition));
        end if;
        if ((bottomLeftGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then (not (reusableList.contains (Java_Object_Access (bottomLeftGeographicMapCellPosition)))) then
            reusableList.add (Java_Object_Access (bottomLeftGeographicMapCellPosition));
        end if;
        if ((bottomRightGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and then (not (reusableList.contains (Java_Object_Access (bottomRightGeographicMapCellPosition)))) then
            reusableList.add (Java_Object_Access (bottomRightGeographicMapCellPosition));
        end if;
        return reusableList;
   end getAllDXY;

   function getInstance return LayerPartialCellPositionsUtil_Access is
   begin
        return LayerPartialCellPositionsUtil_Package.instance;
   end getInstance;

   procedure getAll (This : in out LayerPartialCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := LayerPartialCellPositionsUtil'Class (This).getAll (geographicMapInterface_Param => geographicMapInterface_Param, layerInterface_Param => layerInterface_Param, reusableList_Param => reusableList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAllDXY (This : in out LayerPartialCellPositionsUtil; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; dx : Integer; dy : Integer; reusableList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := LayerPartialCellPositionsUtil'Class (This).getAllDXY (geographicMapInterface_Param => geographicMapInterface_Param, layerInterface_Param => layerInterface_Param, dx => dx, dy => dy, reusableList_Param => reusableList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllDXY;

begin
   null;
   instance := LayerPartialCellPositionsUtil_Package.Create;

end org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;


